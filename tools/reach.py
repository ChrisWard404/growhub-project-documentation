"""Which legacy forms/reports are reachable from the Switchboard menus."""
import json, re, os, collections, olefile
from dirs import dirdata
from blobparse import tok, clean_text
import extract as E
OUT = os.environ.get('OUT', '/Users/christopherward/Documents/perosnal docs/claude/nmis_frontend_extract')
V = json.load(open(OUT + '/nmis_frontend.json'))
items = V['items']; vba = V['vba']; menus = V['menus']
names = {'Form': {i['name'] for i in items if i['kind'] == 'Form'}, 'Report': {i['name'] for i in items if i['kind'] == 'Report'}}
o = olefile.OleFileIO('storage.cfb')

# ---- macros: target names are stored with a one-char length prefix ----
macros = {}
for k, n in dirdata(o, 'Scripts').items():
    b = o.openstream('Scripts/%d/Blob' % k).read()
    ss = [m.group().decode('utf-16le') for m in re.finditer(rb'(?:[\x20-\x7e]\x00){2,}', b)]
    refs = []
    for s in ss:
        for cand in (s, s[1:]):  # first char is a length marker
            for kind in ('Form', 'Report'):
                if cand in names[kind]: refs.append(('%s:%s' % (kind, cand), 'macro action'))
    macros[n] = sorted(set(refs))
macro_names = set(macros)

# ---- VBA procedures ----
procs = {}   # 'Module.Proc' -> body
public = collections.defaultdict(list)  # name -> [keys] for standard-module procs
for mod, code in vba.items():
    for m in re.finditer(r'^(?:(Public|Private|Friend)\s+)?(?:Static\s+)?(Sub|Function)\s+(\w+)\s*\((.*?)^End (?:Sub|Function)', code, re.M | re.S):
        key = mod + '.' + m[3]; procs[key] = m[0]
        if not mod.startswith(('Form_', 'Report_')) and m[1] != 'Private': public[m[3]].append(key)
def opens_in(body):
    res = set(); assigns = collections.defaultdict(set)
    for m in re.finditer(r'(\w+)\s*=\s*"([^"]+)"', body): assigns[m[1]].add(m[2])
    for m in re.finditer(r'DoCmd\.Open(Form|Report)\s*\(?\s*(?:"([^"]+)"|(\w+))', body):
        for v in ([m[2]] if m[2] else assigns.get(m[3], [])):
            if v in names[m[1]]: res.add(('%s:%s' % (m[1], v), 'VBA DoCmd.Open' + m[1]))
    for m in re.finditer(r'DoCmd\.RunMacro\s*\(?\s*"([^"]+)"', body):
        if m[1] in macro_names: res.add(('Macro:' + m[1], 'VBA RunMacro'))
    for w in set(re.findall(r'\b([A-Za-z_]\w*)\b', body)):
        for key in public.get(w, []): res.add(('Proc:' + key, 'VBA call'))
    return res
edges = collections.defaultdict(set)
for key, body in procs.items():
    edges['Proc:' + key] |= {e for e in opens_in(body) if e[0] != 'Proc:' + key}
for mod in vba:
    if mod.startswith(('Form_', 'Report_')):
        kind, nm = mod.split('_', 1)
        node = '%s:%s' % (kind, nm)
        for key in procs:
            if key.startswith(mod + '.'): edges[node] |= edges['Proc:' + key]
        # module-level code outside procedures is rare; ignore
for m, refs in macros.items(): edges['Macro:' + m] |= set(refs)

# ---- designs: subforms, macro names and =Function() in event properties ----
byname = {(i['kind'], i['name']): i for i in items}
for i in items:
    node = i['kind'] + ':' + i['name']
    for s in i.get('subforms', []):
        k, _, t = s.partition('.')
        if t in names.get(k, ()): edges[node].add((k + ':' + t, 'subform/subreport'))
for root in ('Forms', 'Reports'):
    kind = root[:-1]
    for k, n in dirdata(o, root).items():
        b = o.openstream('%s/%d/Blob' % (root, k)).read()
        s, t, _ = E.find_start(b)
        if s is None: continue
        for x in t:
            if x[0] != 's': continue
            v = clean_text(x[2])
            if not v: continue
            if v in macro_names: edges[kind + ':' + n].add(('Macro:' + v, 'event property → macro'))
            for f in re.findall(r'^=\s*(\w+)\s*\(', v):
                for key in public.get(f, []): edges[kind + ':' + n].add(('Proc:' + key, 'event property → function'))

# ---- roots: the Switchboard and its menu items ----
root_edges = set()
for mnu in menus:
    for it in mnu['items']:
        a = it['argument']; c = it['command']
        if c.startswith('open form') and a in names['Form']: root_edges.add(('Form:' + a, 'menu: %s › %s' % (mnu['title'], it['text'])))
        elif c == 'open report' and a in names['Report']: root_edges.add(('Report:' + a, 'menu: %s › %s' % (mnu['title'], it['text'])))
        elif c == 'run macro' and a in macro_names: root_edges.add(('Macro:' + a, 'menu: %s › %s' % (mnu['title'], it['text'])))
        elif c == 'run code':
            for key in public.get(re.sub(r'\(.*', '', a), []): root_edges.add(('Proc:' + key, 'menu: %s › %s' % (mnu['title'], it['text'])))
edges['Form:Switchboard'] |= root_edges

# ---- BFS ----
parent = {'Form:Switchboard': None}; how = {'Form:Switchboard': 'startup menu'}; depth = {'Form:Switchboard': 0}
q = collections.deque(['Form:Switchboard'])
while q:
    u = q.popleft()
    for v, h in sorted(edges.get(u, ())):
        if v not in parent:
            parent[v] = u; how[v] = h; depth[v] = depth[u] + 1; q.append(v)
inbound = collections.defaultdict(list)
for u, es in edges.items():
    for v, h in es: inbound[v].append({'from': u, 'how': h})
def path(n):
    out = []
    while n is not None: out.append({'node': n, 'how': how.get(n)}); n = parent.get(n)
    return out[::-1]
res = {}
for i in items:
    n = i['kind'] + ':' + i['name']
    res[n] = {'reachable': n in parent, 'depth': depth.get(n), 'path': path(n) if n in parent else [],
              'inbound': inbound.get(n, [])[:30], 'outbound': sorted({v for v, _ in edges.get(n, ())})}
summary = {k: {'total': len(names[k]), 'reachable': sum(1 for n in names[k] if '%s:%s' % (k, n) in parent)} for k in names}
summary['macros'] = {'total': len(macro_names), 'reachable': sum(1 for m in macro_names if 'Macro:' + m in parent)}
summary['procs'] = {'total': len(procs), 'reachable': sum(1 for p in procs if 'Proc:' + p in parent)}
json.dump({'objects': res, 'summary': summary, 'macros': {k: [r[0] for r in v] for k, v in macros.items()}}, open(OUT + '/reachability.json', 'w'), indent=1)
print(summary)
never = [n for n, r in res.items() if not r['reachable'] and not r['inbound']]
print('unreachable', sum(1 for r in res.values() if not r['reachable']), 'of which nothing points at them', len(never))
for n in ['Form:NMIS_AGREEMENT_LOTS', 'Form:NMIS_SOURCE_LOTS_INPUT', 'Report:ASSOCIATE_LIST', 'Form:NMIS_ORDER_ACT-TRANS-LOC']:
    print(n, res[n]['reachable'], ' > '.join('%s [%s]' % (p['node'], p['how']) for p in res[n]['path']))
