"""Scrape the GrowHub Express backend: every API route → handler (file:line) → auth checks, inputs read, entities/tables touched."""
import os, re, json, glob, subprocess, collections
BE_REPO = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Backend'; BE = BE_REPO + '/src'
OUT = os.environ.get('OUT', '/Users/christopherward/Documents/perosnal docs/claude/nmis_frontend_extract')
GH = json.load(open(OUT + '/growhub.json'))['tables']
rd = lambda p: open(p, encoding='utf-8', errors='replace').read()
relb = lambda p: os.path.relpath(p, BE_REPO)
def git(repo, *a): return subprocess.run(['git', '-C', repo, *a], capture_output=True, text=True).stdout.strip()
stamp = {'repo': BE_REPO, 'branch': git(BE_REPO, 'branch', '--show-current'), 'commit': git(BE_REPO, 'log', '-1', '--format=%h'),
         'commitDate': git(BE_REPO, 'log', '-1', '--format=%cd', '--date=format:%Y-%m-%d %H:%M'), 'subject': git(BE_REPO, 'log', '-1', '--format=%s'),
         'dirty': bool(git(BE_REPO, 'status', '--porcelain', '--untracked-files=no'))}
class2table = {v['entity']['class']: t for t, v in GH.items() if v.get('entity')}
def block(src, i):
    """text of the {...} block starting at the first '{' at/after i"""
    j = src.find('{', i); d = 0; k = j
    while k < len(src):
        d += {'{': 1, '}': -1}.get(src[k], 0); k += 1
        if d == 0: break
    return src[j:k]
def analyse(body):
    keys = lambda obj: sorted(set(re.findall(r'req\.' + obj + r'\??\.(\w+)', body)) | {k.strip().split(':')[0].strip() for m in re.findall(r'\{([^{}]+)\}\s*=\s*req\.' + obj + r'\b', body) for k in m.split(',') if k.strip() and not k.strip().startswith('...')})
    ents = sorted({c for c in class2table if re.search(r'\b' + c + r'\b', body)})
    return {'auth': sorted(set(re.findall(r'\b(Handle\w+|isSuperUser|checkRole\w*)\s*\(', body))),
            'roleLetters': sorted(set(re.findall(r'HandleRolesForRequests\(\s*req\s*,\s*["\'](\w+)["\']', body))),
            'body': keys('body'), 'query': keys('query'), 'params': keys('params'),
            'entities': ents, 'tables': sorted({class2table[c] for c in ents}),
            'statuses': sorted(set(re.findall(r'\.status\((\d{3})\)', body))), 'lines': body.count('\n') + 1}
# base CRUD handlers
base_src = rd(BE + '/database/entity/base-entity.controller.ts')
base = {}
for m in re.finditer(r'async function (\w+)\s*\(', base_src):
    base[m[1]] = {'file': relb(BE + '/database/entity/base-entity.controller.ts'), 'line': base_src[:m.start()].count('\n') + 1, **analyse(block(base_src, m.end()))}
# controller factories
factories = {}
for f in glob.glob(BE + '/database/entity/**/*.controller.ts', recursive=True) + glob.glob(BE + '/router/*.ts'):
    if f.endswith('.spec.ts'): continue
    src = rd(f)
    for fm in re.finditer(r'export function (\w+ControllerFactory)\s*\(', src):
        fbody = block(src, fm.end()); off = src.find(fbody)
        be = re.search(r'BaseEntityControllerFactory(?:<\w+>)?\(\s*(\w+)\s*[,)]', fbody)
        fns = {}
        for m in re.finditer(r'(?:async\s+)?function (\w+)\s*\(|(?:const|let)\s+(\w+)\s*=\s*(?:CatchErrorWrap\(\s*)?(?:async\s*)?\(\s*req\b', fbody):
            b = block(fbody, m.end()); fns[m[1] or m[2]] = (b, src[:off + m.start()].count('\n') + 1)
        handlers = {}
        for m in re.finditer(r'\w+\.(\w+)\s*=\s*(?:CatchErrorWrap\(\s*)?(\w+)\s*\)?\s*;', fbody):
            if m[2] in fns: handlers[m[1]] = m[2]
        for m in re.finditer(r'return\s*\{([^{}]*)\}', fbody):  # factories that return a literal
            for part in m[1].split(','):
                p = part.strip()
                if not p: continue
                k, _, v = p.partition(':'); k = k.strip(); v = (v or k).strip()
                v = re.sub(r'CatchErrorWrap\(\s*(\w+)\s*\)', r'\1', v)
                if v in fns: handlers.setdefault(k, v)
        factories[fm[1]] = {'file': relb(f), 'entity': be[1] if be else None, 'fns': fns, 'handlers': handlers}
ent_dir_table = {}
for t, v in GH.items():
    if v.get('entity'): ent_dir_table.setdefault(os.path.dirname(v['entity']['file']), []).append(t)
def own_tables(fac):
    if fac.get('entity') and fac['entity'] in class2table: return [class2table[fac['entity']]]
    return ent_dir_table.get(os.path.dirname(fac['file']), [])
def handler_info(factory, method):
    r = _handler_info(factory, method)
    fac = factories.get(factory)
    if fac and not r.get('tables'): r['tables'] = own_tables(fac); r['tablesFrom'] = 'controller entity'
    return r
def _handler_info(factory, method):
    fac = factories.get(factory)
    if not fac: return {'unresolved': True}
    fn = fac['handlers'].get(method) or (method if method in fac['fns'] else None)
    if fn:
        b, line = fac['fns'][fn]
        return {'factory': factory, 'function': fn, 'file': fac['file'], 'line': line, **analyse(b)}
    if fac['entity'] and method in base:
        info = dict(base[method]); t = class2table.get(fac['entity'])
        info.update({'factory': factory, 'function': method, 'baseCrud': True, 'entity': fac['entity'], 'tables': [t] if t else [], 'entities': [fac['entity']]})
        return info
    return {'factory': factory, 'function': method, 'unresolved': True}
# routers
routers = {}
for f in glob.glob(BE + '/router/*.ts'):
    src = rd(f); fac = re.search(r'export function (\w+RouterFactory)', src)
    if not fac: continue
    cvars = {m[1]: m[2] for m in re.finditer(r'(?:const|let)\s+(\w+)\s*=\s*(\w+ControllerFactory)\(', src)}
    routes = []
    for m in re.finditer(r'router\.use\(\s*["\']([^"\']*)["\']\s*,\s*(\w+RouterFactory)\(\s*\)\s*\)', src):
        routes.append({'use': True, 'path': m[1], 'factory': m[2], 'line': src[:m.start()].count('\n') + 1})
    src = re.sub(r'\(\s*(\w+)\s+as\s+\w+\s*\)', r'\1', src)
    for m in re.finditer(r'router\.(get|post|put|patch|delete|use)\(\s*["\']([^"\']*)["\']\s*,\s*((?:[\w.]+\s*,\s*)*[\w.]+)\s*\)', src, re.S):
        args = [a.strip() for a in m[3].split(',') if a.strip()]
        line = src[:m.start()].count('\n') + 1
        hm = re.match(r'(\w+)\.(\w+)$', args[-1]) if args else None
        if not hm: continue
        routes.append({'verb': 'ANY' if m[1] == 'use' else m[1].upper(), 'path': m[2], 'ctrlVar': hm[1], 'method': hm[2],
                       'factory': cvars.get(hm[1]), 'middleware': args[:-1], 'line': line})
    routers[fac[1]] = {'file': relb(f), 'routes': routes}
idx = rd(BE + '/router/index.router.ts')
endpoints = []
def expand(fac, prefix, seen=()):
    r = routers.get(fac)
    if not r or fac in seen: return
    for x in r['routes']:
        if x.get('use'): expand(x['factory'], prefix + '/' + x['path'].strip('/'), seen + (fac,)); continue
        path = re.sub(r'/+', '/', '/api' + prefix + '/' + x['path']).rstrip('/') or '/api'
        endpoints.append({'verb': x['verb'], 'path': path, 'router': '%s:%d' % (r['file'], x['line']), 'middleware': x['middleware'],
                          'group': prefix.strip('/').split('/')[0], 'handler': handler_info(x['factory'], x['method'])})
for m in re.finditer(r'ApiRouter\.use\(\s*["\']([^"\']+)["\']\s*,\s*(\w+RouterFactory)\(', idx): expand(m[2], m[1])
# order: literal segments before params, like Express would match them
out = {'stamp': stamp, 'endpoints': endpoints}
json.dump(out, open(OUT + '/growhub_backend.json', 'w'), indent=1)
un = [e for e in endpoints if e['handler'].get('unresolved')]
print(len(endpoints), 'endpoints;', len(un), 'handlers unresolved;', sum(1 for e in endpoints if e['handler'].get('baseCrud')), 'base CRUD;', 'stamp', stamp)
print(collections.Counter(e['group'] for e in endpoints).most_common())
for e in un[:12]: print('  unresolved', e['verb'], e['path'], e['handler'])
