"""Scrape the GrowHub Angular frontend: routes → components → form fields → API calls → backend tables."""
import os, re, json, glob, collections
from html.parser import HTMLParser
import sys; sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from formparse import forms_in, methods as ts_methods
FE = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Frontend/frontend/src/app'
BE = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Backend/src'
OUT = os.environ.get('OUT', '/Users/christopherward/Documents/perosnal docs/claude/nmis_frontend_extract')
GH = json.load(open(OUT + '/growhub.json'))['tables']
rd = lambda p: open(p, encoding='utf-8', errors='replace').read()
rel = lambda p: os.path.relpath(p, os.path.dirname(os.path.dirname(FE)))

# ---------- backend endpoints (from ghback.py) ----------
import subprocess
BEJ = json.load(open(OUT + '/growhub_backend.json'))
endpoints = [dict(e, tables=e['handler'].get('tables', []), key=e['verb'] + ' ' + e['path']) for e in BEJ['endpoints']]
def git(repo, *a): return subprocess.run(['git', '-C', repo, *a], capture_output=True, text=True).stdout.strip()
FE_REPO = os.path.dirname(os.path.dirname(os.path.dirname(FE)))
fe_stamp = {'repo': FE_REPO, 'branch': git(FE_REPO, 'branch', '--show-current'), 'commit': git(FE_REPO, 'log', '-1', '--format=%h'),
            'commitDate': git(FE_REPO, 'log', '-1', '--format=%cd', '--date=format:%Y-%m-%d %H:%M'), 'subject': git(FE_REPO, 'log', '-1', '--format=%s'),
            'dirty': bool(git(FE_REPO, 'status', '--porcelain', '--untracked-files=no'))}
def ep_regex(p): return re.compile('^' + re.sub(r':\w+', '[^/]+', re.escape(p).replace('\\:', ':')) + '$', re.I)
for e in endpoints: e['_re'] = ep_regex(e['path'])
def match_ep(verb, url):
    u = re.sub(r'\?.*', '', url).rstrip('/')
    if not u.startswith('/'): u = '/' + u
    c = [e for e in endpoints if e['verb'] in (verb, 'ANY') and e['_re'].match(u)]
    c.sort(key=lambda e: (e['path'].count(':'), -len(e['path'])))  # prefer literal segments
    return c[0] if c else None

# ---------- frontend services ----------
from formparse import match_close, split_top, methods as ts_methods2
def split_plus(expr):
    out, i, cur = [], 0, 0
    while i < len(expr):
        c = expr[i]
        if c in '"\'`':
            q = c; i += 1
            while i < len(expr) and expr[i] != q:
                if expr[i] == '\\': i += 1
                elif q == '`' and expr[i:i+2] == '${':
                    d = 1; i += 2
                    while i < len(expr) and d: d += {'{': 1, '}': -1}.get(expr[i], 0); i += 1
                    continue
                i += 1
            i += 1; continue
        if c in '([{': i = match_close(expr, i); continue
        if c == '+': out.append(expr[cur:i]); cur = i + 1
        i += 1
    out.append(expr[cur:]); return [x.strip() for x in out if x.strip()]
services = {}
for f in glob.glob(FE + '/**/*.service.ts', recursive=True):
    if f.endswith('.spec.ts'): continue
    src = rd(f); cls = re.search(r'export class (\w+)', src)
    if not cls: continue
    fields = {m[1]: m[2] for m in re.finditer(r'(?:private|public|protected|readonly)?\s*(?:readonly\s+)?(\w+)\s*(?::\s*string)?\s*=\s*([^;\n]+);', src)}
    meths = ts_methods2(src)
    helpers = {}
    for mn, (mb, ml) in meths.items():
        r = re.search(r'return\s+([^;]+);', mb)
        if r and 'http.' not in mb and ('`' in r[1] or 'baseUrl' in r[1]): helpers[mn] = r[1].strip()
    def resolve(expr, local, depth=0):
        if depth > 6: return ':p'
        out = ''
        for part in split_plus(expr):
            if part.startswith('`'):
                body = part[1:-1]
                def sub(mm):
                    inner = mm[1].strip()
                    if re.match(r'env(?:ironment)?\.\w+$', inner): return ''
                    hm = re.match(r'this\.(\w+)\s*\(', inner)
                    if hm and hm[1] in helpers: return resolve(helpers[hm[1]], {}, depth + 1)
                    fm = re.match(r'(?:this\.)?(\w+)$', inner)
                    if fm and fm[1] in local: return resolve(local[fm[1]], local, depth + 1)
                    if fm and inner.startswith('this.') and fm[1] in fields: return resolve(fields[fm[1]], {}, depth + 1)
                    return ':p'
                out += re.sub(r'\$\{((?:[^{}]|\{[^{}]*\})*)\}', sub, body)
            elif part[:1] in '"\'':
                out += part[1:-1]
            elif re.match(r'env(?:ironment)?\.\w+$', part): pass
            else:
                hm = re.match(r'this\.(\w+)\s*\(', part)
                if hm and hm[1] in helpers: out += resolve(helpers[hm[1]], {}, depth + 1); continue
                fm = re.match(r'(this\.)?(\w+)$', part)
                if fm and not fm[1] and fm[2] in local: out += resolve(local[fm[2]], local, depth + 1)
                elif fm and fm[1] and fm[2] in fields: out += resolve(fields[fm[2]], {}, depth + 1)
                else: out += ':p'
        return out
    meth = {}; minfo = {}
    for mn, (mb, ml) in meths.items():
        local = {m[1]: m[2].strip() for m in re.finditer(r'(?:let|const|var)\s+(\w+)\s*(?::\s*\w+)?\s*=\s*([^;]+);', mb)}
        calls = []
        for h in re.finditer(r'http\.(get|post|put|patch|delete)\s*(?:<([^(]*)>)?\s*\(', mb):
            i = mb.find('(', h.end() - 1); args = split_top(mb[i+1:match_close(mb, i)-1])
            if not args: continue
            url = resolve(args[0], local)
            url = re.sub(r'(?<!:)//+', '/', url)
            if not url.startswith('/') and not url.startswith(':'): url = '/' + url
            ep = match_ep(h[1].upper(), url)
            calls.append({'verb': h[1].upper(), 'url': url, 'endpoint': ep['path'] if ep else None, 'endpointKey': ep['key'] if ep else None,
                          'tables': ep['tables'] if ep else [], 'bodyArg': args[1].strip()[:60] if len(args) > 1 and h[1] in ('post', 'put', 'patch') else None,
                          'responseType': (h[2] or '').strip() or None})
        if calls:
            meth[mn] = calls
            sig = re.search(re.escape(mn) + r'\s*\(([^)]*)\)', src)
            minfo[mn] = {'line': ml, 'params': re.sub(r'\s+', ' ', sig[1]).strip() if sig else ''}
    services[cls[1]] = {'file': rel(f), 'methods': meth, 'info': minfo}

# ---------- components ----------
class T(HTMLParser):
    VOID = {'input', 'br', 'hr', 'img', 'meta', 'link', 'area', 'col', 'source', 'wbr'}
    def __init__(s):
        super().__init__(convert_charrefs=True); s.stack = []; s.controls = []; s.children = []; s.columns = []; s.buttons = []; s.headings = []
    def section(s):
        return [e['label'] for e in s.stack if e.get('label')]
    def handle_starttag(s, tag, attrs):
        a = dict(attrs); e = {'tag': tag, 'a': a, 'text': ''}
        g = a.get('formgroupname') or a.get('formarrayname') or a.get('[formgroupname]') or a.get('[formarrayname]')
        if g: e['group'] = g.strip("'") if not a.get('[formgroupname]') or not g.isdigit() else g
        if '[formgroup]' in a: e['group'] = '@' + a['[formgroup]']
        lab = a.get('label') or (a.get('[label]') or '').strip("'")
        if tag in ('mat-tab', 'mat-step', 'mat-expansion-panel') and lab: e['label'] = lab
        if '-' in tag and not tag.startswith(('mat-', 'ng-', 'cdk-')): s.children.append(tag)
        name = a.get('formcontrolname') or (a.get('[formcontrolname]') or '').strip("'") or a.get('[formcontrol]') or a.get('[(ngmodel)]')
        if name:
            path = [x['group'] for x in s.stack if x.get('group')]
            ff = next((x for x in reversed(s.stack) if x['tag'] == 'mat-form-field'), None)
            c = {'name': name, 'binding': 'formControlName' if a.get('formcontrolname') or a.get('[formcontrolname]') else ('formControl' if a.get('[formcontrol]') else 'ngModel'),
                 'path': [p for p in path if not p.startswith('@')], 'tag': tag, 'type': a.get('type'), 'placeholder': a.get('placeholder'),
                 'section': s.section(), 'label': None, 'required': 'required' in a or a.get('[required]') == 'true'}
            s.controls.append(c)
            if ff is not None: ff.setdefault('ctl', []).append(c)
            else: e.setdefault('ctl', []).append(c)  # checkbox/radio: label is its own text
        if 'matcolumndef' in a or '[matcolumndef]' in a: e['coldef'] = (a.get('matcolumndef') or a.get('[matcolumndef]')).strip("'")
        if 'mat-header-cell' in a or tag == 'th': e['hdr'] = True
        if tag == 'button' or 'mat-button' in a or 'mat-raised-button' in a or 'mat-flat-button' in a: e['btn'] = a.get('(click)')
        if tag in s.VOID: s._close(e); return
        s.stack.append(e)
    def handle_endtag(s, tag):
        for k in range(len(s.stack) - 1, -1, -1):
            if s.stack[k]['tag'] == tag:
                while len(s.stack) > k: s._close(s.stack.pop())
                return
    def handle_data(s, d):
        for e in s.stack[-3:]: e['text'] += d
    def _close(s, e):
        txt = re.sub(r'\s+', ' ', e['text']).strip()
        if e['tag'] in ('mat-label', 'label') and s.stack:
            for x in reversed(s.stack):
                if x['tag'] == 'mat-form-field': x['lab'] = txt; break
        for c in e.get('ctl', []):
            if not c['label']: c['label'] = e.get('lab') or (txt if e['tag'] in ('mat-checkbox', 'mat-slide-toggle', 'mat-radio-group') else None) or c['placeholder']
        if e.get('coldef'):
            hdr = re.sub(r'\{\{.*?\}\}', '', txt).strip()
            s.columns.append({'def': e['coldef'], 'header': hdr[:60]})
        if 'btn' in e and txt: s.buttons.append({'text': txt[:50], 'click': e['btn']})
        if e['tag'] in ('h1', 'h2', 'h3') and txt: s.headings.append(txt[:80])
        if s.stack and txt and e['tag'] not in ('mat-label', 'label'): pass

comps = {}; sel2comp = {}; _meth = {}
for f in glob.glob(FE + '/**/*.component.ts', recursive=True):
    src = rd(f); cls = re.search(r'export class (\w+)', src); sel = re.search(r"selector:\s*['\"]([^'\"]+)['\"]", src)
    if not cls: continue
    tu = re.search(r"templateUrl:\s*['\"]([^'\"]+)['\"]", src)
    html = rd(os.path.join(os.path.dirname(f), tu[1])) if tu and os.path.exists(os.path.join(os.path.dirname(f), tu[1])) else (re.search(r'template:\s*`(.*?)`', src, re.S) or [None, ''])[1]
    p = T()
    try: p.feed(html)
    except Exception as ex: print('parse error', f, ex)
    for e in list(p.stack): p._close(e)
    inj = {m[1]: m[2] for m in re.finditer(r'(?:private|public|protected|readonly)\s+(?:readonly\s+)?(\w+)\s*:\s*(\w+Service)\b', src)}
    calls = []
    for v, svc in inj.items():
        for m in set(re.findall(r'this\.' + v + r'\s*\.\s*(\w+)\s*\(', src)):
            callers = sorted(mn for mn, cl in mcalls.items() if (svc, m) in cl)
            for c in services.get(svc, {}).get('methods', {}).get(m, []): calls.append(dict(c, service=svc, method=m, callers=callers))
    dialogs = sorted(set(re.findall(r'\.open\(\s*(\w+Component)', src)))
    forms = forms_in(src)
    mt = ts_methods(src); mcalls = {}; mrefs = {}; minner = {}
    for mn, (mb, ml) in mt.items():
        mcalls[mn] = [(inj[v], meth) for v in inj for meth in set(re.findall(r'this\.' + v + r'\s*\.\s*(\w+)\s*\(', mb))]
        mrefs[mn] = set(re.findall(r'this\.(\w+)', mb))
        minner[mn] = {x for x in re.findall(r'this\.(\w+)\s*\(', mb) if x in mt and x != mn}
    def closure(m0):
        seen, st = set(), [m0]
        while st:
            x = st.pop()
            if x in seen: continue
            seen.add(x); st += list(minner.get(x, ()))
        return seen
    for fdef in forms:
        key = fdef['var'] or fdef['method']
        users = [mn for mn in mt if key and (key in mrefs[mn] or (fdef['method'] and fdef['method'] in minner[mn]))]
        reqs = set()
        for u in users:
            for x in closure(u):
                for svc, meth in mcalls.get(x, []):
                    if meth in services.get(svc, {}).get('methods', {}): reqs.add((svc, meth, u))
        fdef['requests'] = [{'service': a, 'method': b, 'via': c} for a, b, c in sorted(reqs)]
        fdef['usedIn'] = sorted(users)
    bindings = re.findall(r'\(\s*[\w.]+\s*\)\s*=\s*"([^"]*)"', html or '')
    _meth[cls[1]] = (mcalls, mrefs, minner, bindings, set(mt))
    for fdef in forms:
        v = fdef['var']
        if not v: continue
        tusers = {m for b in bindings if re.search(r'\b' + v + r'\b', b) for m in re.findall(r'(\w+)\s*\(', b) if m in mt}
        extra = set()
        for u in tusers:
            for x in closure(u):
                for svc, meth in mcalls.get(x, []):
                    if meth in services.get(svc, {}).get('methods', {}): extra.add((svc, meth, u))
        have = {(r['service'], r['method']) for r in fdef['requests']}
        fdef['requests'] += [{'service': a, 'method': b, 'via': c} for a, b, c in sorted(extra) if (a, b) not in have]
        fdef['usedIn'] = sorted(set(fdef['usedIn']) | tusers)
    models = sorted(set(re.findall(r"from ['\"][^'\"]*/models/([\w.-]+)\.model['\"]", src)))
    refs = sorted(set(re.findall(r'\b(\w+Component)\b', re.sub(r'^import .*$', '', src, flags=re.M))) - {cls[1]})
    tcols = []
    for m in re.finditer(r'\{\s*label:\s*[\'"]([^\'"]+)[\'"]\s*,(?:[^{}]*?)\bkey:\s*[\'"]([\w.]+)[\'"]', src):
        tcols.append({'def': m[2], 'header': m[1], 'config': True})
    comps[cls[1]] = {'file': rel(f), 'selector': sel[1] if sel else None, 'controls': p.controls, 'columns': p.columns, 'buttons': p.buttons[:40],
                     'headings': p.headings[:10], 'childSelectors': sorted(set(p.children)), 'dialogs': dialogs, 'refs': refs, 'configColumns': tcols, 'forms': forms, 'calls': calls, 'models': models}
    if sel: sel2comp[sel[1]] = cls[1]
for c in comps.values():
    c['children'] = sorted({sel2comp[s] for s in c['childSelectors'] if s in sel2comp} | set(d for d in c['dialogs'] + c['refs'] if d in comps))

# ---------- routes ----------
def parse_routes(file, prefix):
    src = rd(file); out = []
    imp = {}
    for m in re.finditer(r'import \{\s*([^}]+?)\s*\} from ["\']([^"\']+)["\']', src):
        for n in re.split(r'\s*,\s*', m[1]): imp[n.strip()] = m[2]
    for m in re.finditer(r"\{\s*path:\s*'([^']*)'(.*?)\}\s*,?\s*(?=\{\s*path:|\];|//)", src, re.S):
        path, body = m[1], m[2]
        full = re.sub(r'/+', '/', '/' + prefix + '/' + path).rstrip('/') or '/'
        comp = re.search(r'component:\s*(\w+)', body)
        lazy = re.search(r"loadChildren:\s*\(\)\s*=>\s*import\(['\"]([^'\"]+)['\"]\)", body)
        guards = re.search(r'canActivate:\s*\[([^\]]*)\]', body)
        redirect = re.search(r"redirectTo:\s*'([^']*)'", body)
        if comp: out.append({'path': full, 'component': comp[1], 'guards': [g.strip() for g in guards[1].split(',')] if guards else []})
        if lazy:
            mod = os.path.normpath(os.path.join(os.path.dirname(file), lazy[1]))
            rf = glob.glob(os.path.dirname(mod) + '/*routing*.ts')
            for r in rf: out += parse_routes(r, full)
    return out
routes = parse_routes(FE + '/auth/auth-routing.ts', '')

# ---------- fields → GrowHub columns ----------
def norm(s): return re.sub(r'[^a-z0-9]', '', (s or '').lower())
GROUP_HINT = {'growRequest': 'grow_request', 'planning': 'order_cycle_planning', 'production': 'order_cycle_production', 'countInventory': 'count_inventory',
              'containerSpecifications': 'order_cycle_planning', 'barerootSpecifications': 'order_cycle_production', 'locations': 'production_location'}
def snake(s): return re.sub(r'(?<!^)(?=[A-Z])', '_', s).replace('-', '_').lower()
def model_tables(models):
    out = set()
    for m in models:
        for cand in (snake(m.replace('.', '_')), snake(m.replace('.', '_')).replace('order_production', 'order_cycle_production'), snake(m) + 's'):
            cand = cand.replace('-', '_')
            if cand in GH: out.add(cand)
    return out
for name, c in comps.items():
    cand = set(t for x in c['calls'] for t in x['tables']) | model_tables(c['models'])
    c['tables'] = sorted(cand)
    for ctl in c['controls']:
        leaf = ctl['name'].split('.')[-1]
        groups = ctl['path']
        embedded = [g for g in groups if g in ('containerSpecifications', 'barerootSpecifications', 'growthHeight', 'rootLength', 'altGrowthHeight')]
        want = norm((embedded[-1] if embedded else '') + leaf)
        hint = [GROUP_HINT[g] for g in groups if g in GROUP_HINT]
        def find(tables):
            hits = []
            for t in tables:
                for col in GH.get(t, {}).get('columns', []):
                    if norm(col['name']) in (want, want + 'uuid'): hits.append({'table': t, 'column': col['name']})
            return hits
        hits = find(hint[-1:]) or find(cand)
        how = 'form group' if hint and hits and hits[0]['table'] == hint[-1] else 'tables this screen calls'
        if not hits:
            allh = find(GH.keys())
            if len(allh) == 1: hits = allh; how = 'unique name match'
            elif allh: ctl['ambiguous'] = allh[:6]
        ctl['gh'] = hits[:3]; ctl['ghHow'] = how if hits else None

def match_field(path, leaf, cand):
    embedded = [g for g in path if g in ('containerSpecifications', 'barerootSpecifications', 'growthHeight', 'rootLength', 'altGrowthHeight')]
    want = norm((embedded[-1] if embedded else '') + leaf)
    hint = [GROUP_HINT[g] for g in path if g in GROUP_HINT]
    def find(tables):
        return [{'table': t, 'column': col['name']} for t in tables for col in GH.get(t, {}).get('columns', []) if norm(col['name']) in (want, want + 'uuid')]
    hits = find(hint[-1:]) or find(cand)
    if hits: return hits[:3], ('form group' if hint and hits[0]['table'] == hint[-1] else 'tables this screen calls')
    allh = find(GH.keys())
    return (allh, 'unique name match') if len(allh) == 1 else ([], None)
for name, c in comps.items():
    tpl = {}
    for ctl in c['controls']: tpl.setdefault(ctl['name'].split('.')[-1], ctl)
    def walk(fields, path):
        for f in fields:
            if f['name'] == '[]': continue
            if f['kind'] in ('group', 'array'):
                walk(f.get('fields', []), path + [f['name']]); continue
            gh, how = match_field(path, f['name'], c['tables'])
            f['gh'] = gh; f['ghHow'] = how
            t = tpl.get(f['name'])
            if t: f['label'] = t.get('label'); f['input'] = t['tag'] + (' ' + t['type'] if t.get('type') else '')
    for fdef in c['forms']: walk(fdef['fields'], [])

# forms passed down as @Input: child components that use the same form variable also send its requests
def descendants(n, seen=None):
    seen = set() if seen is None else seen
    for ch in comps.get(n, {}).get('children', []):
        if ch not in seen: seen.add(ch); descendants(ch, seen)
    return seen
for cn, c in comps.items():
    for fdef in c['forms']:
        var = fdef['var']
        if not var: continue
        have = {(r['service'], r['method']) for r in fdef['requests']}
        for d in sorted(descendants(cn)):
            if d not in _meth: continue
            mcalls, mrefs, minner, bindings, mset = _meth[d]
            users = [mn for mn, refs in mrefs.items() if var in refs]
            users += [m for b in bindings if re.search(r'\b' + var + r'\b', b) for m in re.findall(r'(\w+)\s*\(', b) if m in mset]
            seen = set(); st = list(users)
            while st:
                x = st.pop()
                if x in seen: continue
                seen.add(x); st += list(minner.get(x, ()))
            for x in seen:
                for svc, meth in mcalls.get(x, []):
                    if meth in services.get(svc, {}).get('methods', {}) and (svc, meth) not in have:
                        have.add((svc, meth)); fdef['requests'].append({'service': svc, 'method': meth, 'via': '%s.%s' % (d, x)})
            if users: fdef.setdefault('sharedWith', []).append(d)

# requests catalog: every service method that makes an HTTP call
requests = []
for svc, sv in services.items():
    for meth, calls in sv['methods'].items():
        callers = sorted({'%s.%s' % (cn, cm) for cn, c in comps.items() for x in c['calls'] if x['service'] == svc and x['method'] == meth for cm in x.get('callers', [])}
                         | {cn for cn, c in comps.items() for x in c['calls'] if x['service'] == svc and x['method'] == meth and not x.get('callers')})
        for x in calls:
            requests.append(dict(x, service=svc, method=meth, file=sv['file'], line=sv['info'].get(meth, {}).get('line'),
                                 params=sv['info'].get(meth, {}).get('params', ''), callers=callers))

# screen = route component + all descendants
def descend(n, seen=None):
    seen = seen or set()
    if n in seen or n not in comps: return seen
    seen.add(n)
    for ch in comps[n]['children']: descend(ch, seen)
    return seen
screens = []
for r in routes:
    tree = sorted(descend(r['component']))
    fields = [dict(ctl, component=cn) for cn in tree for ctl in comps[cn]['controls']]
    cols = sorted({(h['table'], h['column']) for f in fields for h in f['gh']})
    screens.append(dict(r, components=tree, fieldCount=len(fields), boundColumns=[{'table': t, 'column': c} for t, c in cols],
                        tables=sorted({t for cn in tree for t in comps[cn]['tables']}),
                        endpoints=sorted({(x['verb'], x['endpoint'] or x['url']) for cn in tree for x in comps[cn]['calls']})))
out = {'stamp': fe_stamp, 'requests': requests, 'routes': screens, 'components': comps, 'endpoints': [],
       'services': services, 'source': {'repo': '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Frontend'}}
json.dump(out, open(OUT + '/growhub_frontend.json', 'w'), indent=1, default=list)
allc = [c for v in comps.values() for c in v['controls']]
print('forms', sum(len(c['forms']) for c in comps.values()), 'requests', len(requests), 'matched', sum(1 for r in requests if r['endpoint']), 'stamp', fe_stamp)
print(len(routes), 'routes', len(comps), 'components', len(endpoints), 'backend endpoints', len(services), 'services')
print(len(allc), 'controls;', sum(1 for c in allc if c['gh']), 'matched to a column;', sum(1 for c in allc if c['label']), 'with label')
calls = [x for v in comps.values() for x in v['calls']]
print(len(calls), 'API calls;', sum(1 for x in calls if x['endpoint']), 'matched to a backend route;', sum(1 for x in calls if x['tables']), 'with a table')
for s in screens: print('%-40s %-34s comps=%2d fields=%3d cols=%3d tables=%s' % (s['path'], s['component'], len(s['components']), s['fieldCount'], len(s['boundColumns']), ','.join(s['tables'])[:70]))
