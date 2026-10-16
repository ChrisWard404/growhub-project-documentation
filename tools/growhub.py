import json, re, os, glob, collections, datetime
REPO = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Backend'
ERD = '/Users/christopherward/Desktop/erd of growhub backend'
d = json.load(open(ERD))
layers = {l['type']: l['models'] for l in d['data']['layers']}
nodes = layers['diagram-nodes']; links = layers['diagram-links']
DEL = {'a': 'NO ACTION', 'r': 'RESTRICT', 'c': 'CASCADE', 'n': 'SET NULL', 'd': 'SET DEFAULT'}

def fmt_type(c):
    t = c['cltype']; m = c.get('atttypmod') or -1
    if t == 'numeric' and m > 4: m -= 4; return 'numeric(%d,%d)' % (m >> 16, m & 0xffff)
    if t in ('character varying', 'character') and m > 4: return '%s(%d)' % (t, m - 4)
    return t

tables = {}; uid2name = {}
for nid, n in nodes.items():
    t = n['otherInfo']['data']; name = t['name']; uid2name[nid] = name
    pk = [c['column'] for p in t.get('primary_key', []) for c in p['columns']]
    fks = []
    for fk in t.get('foreign_key', []):
        for c in fk['columns']:
            fks.append({'column': c['local_column'], 'refTable': fk['reftab'], 'refColumn': c['referenced'],
                        'onDelete': DEL.get(fk.get('confdeltype'), fk.get('confdeltype')), 'onUpdate': DEL.get(fk.get('confupdtype'), fk.get('confupdtype')), 'name': fk.get('name')})
    uniq = [[c['column'] for c in u['columns']] for u in t.get('unique_constraint', [])]
    cols = []
    for c in sorted(t['columns'], key=lambda c: c.get('attnum') or 0):
        typ = fmt_type(c)
        cols.append({'name': c['name'], 'type': typ.replace('nmis.', ''), 'notNull': bool(c.get('attnotnull')), 'default': c.get('defval'),
                     'enum': typ.replace('nmis.', '').replace('[]', '') if typ.startswith('nmis.') else None, 'comment': c.get('description')})
    tables[name] = {'columns': cols, 'pk': pk, 'fks': fks, 'unique': uniq, 'comment': t.get('description'),
                    'x': n['x'], 'y': n['y'], 'history': [], 'colHistory': collections.defaultdict(list)}
# pgAdmin link geometry for the overall diagram
diagram_links = []
for l in links.values():
    dd = l.get('data', {})
    diagram_links.append({'from': uid2name.get(dd.get('local_table_uid')), 'to': uid2name.get(dd.get('referenced_table_uid')),
                          'points': [[p['x'], p['y']] for p in l.get('points', [])]})

# ---- migrations ----
def split_top(s):
    out, depth, cur = [], 0, ''
    for ch in s:
        if ch == '(': depth += 1
        elif ch == ')': depth -= 1
        if ch == ',' and depth == 0: out.append(cur); cur = ''
        else: cur += ch
    if cur.strip(): out.append(cur)
    return out

migs = []; enums = {}; enum_hist = collections.defaultdict(list)
copies = {}
rename = {}  # old table name -> new
def cur(t):
    seen = set()
    while t in rename and t not in seen: seen.add(t); t = rename[t]
    return t
events = []  # (ts, mig, table, colOrNone, action, detail)
for f in sorted(glob.glob(REPO + '/src/database/migration/*.ts'), key=lambda p: int(re.match(r'(\d+)', os.path.basename(p)).group(1))):
    base = os.path.basename(f); ts = int(re.match(r'(\d+)', base).group(1)); title = re.sub(r'^\d+-', '', base[:-3])
    src = open(f).read()
    up = src.split('public async down')[0]
    sqls = re.findall(r'query\(\s*`(.*?)`\s*[,)]', up, re.S) + re.findall(r'query\(\s*"((?:[^"\\]|\\.)*)"\s*[,)]', up, re.S)
    sqls = [re.sub(r'\$\{\s*schema\s*\}', 'nmis', s) for s in sqls]
    when = datetime.datetime.fromtimestamp(ts / 1000, datetime.UTC).strftime('%Y-%m-%d') if ts < 4e12 else ''
    m = {'file': base, 'name': title, 'ts': ts, 'date': when, 'tables': set(), 'changes': [], 'statements': len(sqls)}
    Q = r'"(?:\w+)"\."(\w+)"|"(\w+)"(?!\.)'
    def tn(g): return g[0] or g[1]
    def ev(table, col, action, detail=''):
        m['tables'].add(table); m['changes'].append({'table': table, 'column': col, 'action': action, 'detail': detail})
    for s in sqls:
        s1 = ' '.join(s.split())
        if x := re.match(r'CREATE TABLE (?:"\w+"\.)?"(\w+)" AS SELECT \* FROM (?:"\w+"\.)?"(\w+)"', s1):
            ev(x[1], None, 'create table', 'copied from ' + x[2]); copies[x[1]] = x[2]
        elif x := re.match(r'CREATE TABLE (?:IF NOT EXISTS )?(?:"\w+"\.)?"(\w+)" \((.*)\)\s*$', s1):
            t = x[1]; ev(t, None, 'create table')
            for part in split_top(x[2]):
                p = part.strip()
                if y := re.match(r'"(\w+)" (.+)', p): ev(t, y[1], 'add column', y[2])
        elif x := re.match(r'DROP TABLE (?:IF EXISTS )?(?:"\w+"\.)?"(\w+)"', s1): ev(cur(x[1]), None, 'drop table')
        elif x := re.match(r'ALTER TABLE (?:"\w+"\.)?"(\w+)" RENAME TO "(\w+)"', s1):
            rename[x[1]] = x[2]; ev(x[2], None, 'rename table', 'from ' + x[1])
        elif x := re.match(r'ALTER TABLE (?:ONLY )?(?:"\w+"\.)?"(\w+)" (.*)', s1):
            t = x[1]; rest = x[2]
            for part in split_top(rest):
                p = part.strip()
                if y := re.match(r'ADD (?:COLUMN )?(?:IF NOT EXISTS )?"(\w+)" (.+)', p): ev(t, y[1], 'add column', y[2])
                elif y := re.match(r'DROP COLUMN (?:IF EXISTS )?"(\w+)"', p): ev(t, y[1], 'drop column')
                elif y := re.match(r'RENAME COLUMN "(\w+)" TO "(\w+)"', p): ev(t, y[2], 'rename column', 'from ' + y[1])
                elif y := re.match(r'ALTER COLUMN "(\w+)" (.+)', p): ev(t, y[1], 'alter column', y[2])
                elif y := re.match(r'ADD CONSTRAINT "(\w+)" FOREIGN KEY \(([^)]*)\) REFERENCES (?:"\w+"\.)?"(\w+)"\("(\w+)"\)(.*)', p):
                    for c in re.findall(r'"(\w+)"', y[2]): ev(t, c, 'add FK', '→ %s.%s%s' % (y[3], y[4], (' ' + y[5].strip()) if 'CASCADE' in y[5] or 'SET NULL' in y[5] else ''))
                elif y := re.match(r'ADD CONSTRAINT "(\w+)" (UNIQUE|CHECK|PRIMARY KEY)\s*\((.*)\)', p): ev(t, None, 'add ' + y[2].lower(), y[3])
        elif x := re.match(r'CREATE TYPE (?:"\w+"\.)?"(\w+)" AS ENUM\((.*)\)', s1):
            vals = re.findall(r"'((?:[^']|'')*)'", x[2]); enum_hist[x[1]].append({'ts': ts, 'file': base, 'values': vals}); enums[x[1]] = vals
        elif x := re.match(r'ALTER TYPE (?:"\w+"\.)?"(\w+)" ADD VALUE (?:IF NOT EXISTS )?\'([^\']*)\'', s1):
            enums.setdefault(x[1], []).append(x[2]); enum_hist[x[1]].append({'ts': ts, 'file': base, 'added': x[2]})
        elif x := re.match(r'(INSERT INTO|UPDATE|DELETE FROM) (?:"\w+"\.)?"(\w+)"', s1):
            ev(x[2], None, 'data ' + x[1].split()[0].lower())
        elif x := re.match(r'CREATE (UNIQUE )?INDEX "(\w+)" ON (?:"\w+"\.)?"(\w+)" \((.*?)\)', s1):
            ev(x[3], None, ('unique ' if x[1] else '') + 'index', x[4].replace('"', ''))
    m['tables'] = sorted(m['tables'])
    migs.append(m)

# resolve renames: attribute history to final table names
final = lambda t: cur(t)
for m in migs:
    for c in m['changes']:
        t = final(c['table'])
        if t in tables:
            tables[t]['history'].append({'file': m['file'], 'name': m['name'], 'date': m['date'], 'action': c['action'], 'column': c['column'], 'detail': c['detail']})
            if c['column']: tables[t]['colHistory'][c['column']].append({'file': m['file'], 'date': m['date'], 'action': c['action'], 'detail': c['detail']})
    m['tables'] = sorted({final(t) for t in m['tables']})
for t in tables.values():
    # compress per-table history to one row per migration
    by = collections.OrderedDict()
    for h in t['history']:
        e = by.setdefault(h['file'], {'file': h['file'], 'name': h['name'], 'date': h['date'], 'actions': collections.Counter(), 'columns': []})
        e['actions'][h['action']] += 1
        if h['column'] and h['column'] not in e['columns']: e['columns'].append(h['column'])
    t['history'] = [dict(e, actions=dict(e['actions'])) for e in by.values()]
    t['colHistory'] = dict(t['colHistory'])
    t['createdIn'] = next((h['file'] for h in t['history'] if 'create table' in h['actions']), None)

# entity files
ent = {}
for f in glob.glob(REPO + '/src/database/entity/**/*.ts', recursive=True):
    src = open(f).read()
    for x in re.finditer(r'@Entity\(\s*(?:[\'"](\w+)[\'"])?', src):
        c = re.search(r'(?:export (?:default )?)?class (\w+)', src[x.end():])
        if not c: continue
        name = x[1] or re.sub(r'(?<!^)(?=[A-Z])', '_', c[1]).lower()
        ent.setdefault(name, {'class': c[1], 'file': os.path.relpath(f, REPO)})
for name, t in tables.items():
    if name in ent: t['entity'] = ent[name]
    t['controllers'] = sorted(os.path.relpath(p, REPO) for p in glob.glob(os.path.dirname(REPO + '/' + ent[name]['file']) + '/*.controller.ts')) if name in ent else []
for name, t in tables.items():
    for c in t['columns']:
        if c['enum']: c['enumValues'] = enums.get(c['enum'])
        c['history'] = t['colHistory'].get(c['name'], [])
    del t['colHistory']

for t, srct in copies.items():
    if t in tables:
        tables[t]['copiedFrom'] = srct
        for c in tables[t]['columns']:
            if not c['history']: c['history'] = [{'file': tables[t]['createdIn'], 'date': '', 'action': 'copied', 'detail': 'came with copy of ' + srct}]
for m in migs:
    for c in m['changes']: c['table'] = final(c['table'])
out = {'tables': tables, 'diagramLinks': diagram_links, 'migrations': migs, 'enums': enums,
       'source': {'erd': ERD, 'repo': REPO, 'migrationCount': len(migs)}}
json.dump(out, open(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'growhub.json'), 'w'), indent=1, default=list)
print(len(tables), 'tables', len(migs), 'migrations', len(enums), 'enums', sum(1 for t in tables.values() if t.get('entity')), 'with entity')
print('no history:', [n for n, t in tables.items() if not t['history']])
print('no createdIn:', [n for n, t in tables.items() if not t['createdIn']])
print('no entity:', [n for n, t in tables.items() if not t.get('entity')])
print('enum cols w/o values:', [(n, c['name'], c['enum']) for n, t in tables.items() for c in t['columns'] if c['enum'] and not c.get('enumValues')])
print('renames:', rename)
miss = [(n, c['name']) for n, t in tables.items() for c in t['columns'] if not c['history']]
print('cols w/o history', len(miss), miss[:20])
