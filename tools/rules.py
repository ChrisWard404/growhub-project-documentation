"""Build the business-rule catalogue: attach real code (legacy VBA, calculated controls, saved queries, GrowHub TS) to each hand-written rule."""
import json, os, re, glob, sys, textwrap
HERE = os.path.dirname(os.path.abspath(__file__)); OUT = os.path.dirname(HERE)
FE_REPO = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Frontend'
SCRATCH = os.environ.get('SCRATCH', '/private/tmp/claude-501/-Users-christopherward-Documents-perosnal-docs-claude/ea37af2b-d96f-4e55-8eee-ff66319c9010/scratchpad')
V = json.load(open(OUT + '/nmis_frontend.json'))
items = {(i['kind'], i['name']): i for i in V['items']}
sys.path.insert(0, SCRATCH)
try:
    os.chdir(SCRATCH); from qsql import sql
except Exception: sql = lambda n: None
def vba_proc(module, proc):
    code = V['vba'].get(module, '')
    m = re.search(r'^(?:Private |Public )?(?:Sub|Function) ' + re.escape(proc) + r'\b.*?^End (?:Sub|Function)', code, re.M | re.S)
    if not m: return None, None
    start = code[:m.start()].count('\n') + 1
    return m.group(0), start
def clip(text, start, frm, to):
    if not frm: return text, start
    i = text.find(frm)
    if i < 0: return text, start
    j = text.find(to, i) if to else -1
    j = (j + len(to)) if j >= 0 else len(text)
    a = text.rfind('\n', 0, i) + 1; b = text.find('\n', j); b = len(text) if b < 0 else b
    return text[a:b], start + text[:a].count('\n')
def ts_fn(path, fn):
    src = open(os.path.join(FE_REPO, path)).read()
    m = re.search(r'^\s{2}' + re.escape(fn) + r'\s*[:(=]', src, re.M)
    if not m: return None, None
    i = src.find('{', m.end()); depth = 0; k = i
    while k < len(src):
        depth += {'{': 1, '}': -1}.get(src[k], 0); k += 1
        if depth == 0: break
    a = src.rfind('\n', 0, m.start()) + 1
    return src[a:k], src[:a].count('\n') + 1
out = []
for f in sorted(glob.glob(HERE + '/rules/*.json')):
    dom = json.load(open(f)); form = dom.get('legacyForm'); module = 'Form_' + form if form else None
    for r in dom['rules']:
        for side in ('legacy', 'growhub'):
            for ref in r.get(side, {}).get('refs', []):
                if 'vba' in ref:
                    t, s = vba_proc(ref.get('module', module), ref['vba'])
                    if t: t, s = clip(t, s, ref.get('from'), ref.get('to')); ref['code'] = t; ref['where'] = 'vba/%s.bas:%d' % (ref.get('module', module), s); ref['lang'] = 'vb'
                elif 'control' in ref:
                    i = items.get(('Form', ref.get('form', form)))
                    c = next((c for s in (i or {}).get('sections', []) for c in s['controls'] if c.get('name') == ref['control']), None)
                    if c: ref['code'] = '%s = %s' % (c['name'], (c.get('ControlSource') or '').lstrip('=') or '(unbound%s)' % (', default ' + c['DefaultValue'] if c.get('DefaultValue') else '')); ref['where'] = 'Form %s › control %s' % (ref.get('form', form), c['name']); ref['lang'] = 'expr'
                elif 'query' in ref:
                    q = sql(ref['query'])
                    if q: ref['code'] = q; ref['where'] = 'Saved query “%s”' % ref['query']; ref['lang'] = 'sql'
                elif 'form' in ref:
                    i = items.get(('Form', ref['form']))
                    if i and i.get('recordSource'): ref['code'] = i['recordSource']; ref['where'] = 'Form %s › record source' % ref['form']; ref['lang'] = 'sql'
                elif 'fn' in ref:
                    path = ref.get('file', dom['growhubFile'])
                    t, s = ts_fn(path, ref['fn'])
                    if t: ref['code'] = t; ref['where'] = '%s:%d' % (path, s); ref['lang'] = 'ts'
                elif 'line' in ref:
                    path = ref.get('file', dom['growhubFile']); lines = open(os.path.join(FE_REPO, path)).read().split('\n')
                    ref['code'] = '\n'.join(lines[ref['line'] - 1: ref['line'] - 1 + ref.get('span', 1)]); ref['where'] = '%s:%d' % (path, ref['line']); ref['lang'] = 'ts'
                if 'code' in ref: ref['code'] = textwrap.dedent(ref['code'].expandtabs(4)).strip('\n')
                if 'code' not in ref: print('  unresolved ref', r['id'], side, ref)
    out.append(dom)
json.dump(out, open(OUT + '/rules.json', 'w'), indent=1, ensure_ascii=False)
print(sum(len(d['rules']) for d in out), 'rules in', len(out), 'domain(s)')
