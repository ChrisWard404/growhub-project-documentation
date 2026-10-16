import csv, json, re, collections, glob
csv.field_size_limit(10**9)
objs = list(csv.DictReader(open('objects.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE))
linked = {o['Name']: o for o in objs if o['Type'] == '6'}
base = set(linked)
qrows = list(csv.DictReader(open('msysqueries.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE))
idname = {o['Id']: o['Name'] for o in objs}
byq = collections.defaultdict(list)
for r in qrows: byq[r['ObjectId']].append(r)
views = json.load(open('views_raw.json'))

cols = collections.defaultdict(collections.Counter)   # table -> col -> evidence count
joins = collections.Counter()                          # ((t1,c1),(t2,c2)) sorted -> count
join_src = collections.defaultdict(set)

ref = re.compile(r'\[?([A-Za-z_*][\w* ]*?)\]?\.\[?([A-Za-z_][\w ]*?)\]?(?=[^\w\]]|$)')
def harvest(text, alias):
    for m in ref.finditer(text or ''):
        t, c = m.group(1).strip(), m.group(2).strip()
        t = alias.get(t, t)
        if t in base and c != '*' and not c.lower() in ('form', 'value'):
            cols[t][c] += 1

def add_join(expr, alias, src):
    for part in re.split(r'\bAND\b', expr, flags=re.I):
        m = re.match(r'\s*\(?\s*\[?([\w* ]+?)\]?\.\[?(\w+)\]?\s*=\s*\[?([\w* ]+?)\]?\.\[?(\w+)\]?\s*\)?\s*$', part)
        if not m: continue
        t1, c1, t2, c2 = alias.get(m[1], m[1]), m[2], alias.get(m[3], m[3]), m[4]
        if t1 in base and t2 in base and t1 != t2:
            k = tuple(sorted([(t1, c1), (t2, c2)]))
            joins[k] += 1; join_src[k].add(src)
            cols[t1][c1] += 1; cols[t2][c2] += 1

# saved queries
for oid, rs in byq.items():
    qn = idname.get(oid, oid)
    alias = {r['Name2']: r['Name1'] for r in rs if r['Attribute'] == '5' and r['Name2']}
    for r in rs:
        if r['Attribute'] in ('6', '8', '9', '10', '11', '7'):
            harvest(r['Expression'], alias)
        if r['Attribute'] == '7':
            add_join(r['Expression'], alias, 'query:' + qn)

# SQL embedded in forms/reports
sqlsrc = []
for root, objsd in views.items():
    for n, v in objsd.items():
        if 'error' in v: continue
        for t, fl in v.get('fieldLists', {}).items():
            if t in base:
                for c in fl: cols[t][c] += 3
        texts = [v.get('RecordSource', '')]
        for s in v['sections']:
            for c in s['controls']:
                texts += [c.get('RowSource', ''), c.get('ControlSource', '')]
        for tx in texts:
            if not tx: continue
            alias = {m[2]: m[1] for m in re.finditer(r'\[?(\w+)\]?\s+AS\s+\[?(\w+)\]?', tx)}
            harvest(tx, alias)
            for m in re.finditer(r'\bON\s+(.+?)(?=\)|\bINNER\b|\bLEFT\b|\bRIGHT\b|\bWHERE\b|\bGROUP\b|\bORDER\b|;|$)', tx, re.I | re.S):
                add_join(m.group(1), alias, root[:-1].lower() + ':' + n)
for f in glob.glob('vba/*'):
    harvest(open(f, encoding='latin-1').read(), {})

# declared relationships
declared = []
for r in csv.DictReader(open('msysrel.csv')) if False else []:
    pass

def parent_side(a, b):
    (t1, c1), (t2, c2) = a, b
    if c1 == 'CN' and c2 != 'CN': return a, b
    if c2 == 'CN' and c1 != 'CN': return b, a
    def stem_in(t, c):
        stem = re.sub(r'_(CODE|CN|ID|NO|NUMBER)$', '', c)
        tt = t.replace('NMIS_', '')
        return stem and (tt.startswith(stem) or stem.startswith(tt.rstrip('S')))
    if stem_in(t1, c1) and not stem_in(t2, c2): return a, b
    if stem_in(t2, c2) and not stem_in(t1, c1): return b, a
    return None

NK = {'PLNTMSTR_SYMBOL': ('NMIS_SPECIES', 'PLNTMSTR_SYMBOL'), 'CATEGORY_CODE': ('NMIS_CATEGORIES', 'CATEGORY_CODE'),
      'ACTIVITY_CODE': ('NMIS_ACTIVITY_CODES', 'ACTIVITY_CODE'), 'FISCAL_YEAR': ('NMIS_FISCAL_YEARS', 'FISCAL_YEAR'),
      'CONTRACT_NO': ('NMIS_CONTRACTS', 'CONTRACT_NO'), 'PRICE_RATE_CODE': ('NMIS_SOURCE_PRICE_RATES', 'PRICE_RATE_CODE'),
      'PROCESSING_RATE_CODE': ('NMIS_SOURCE_PROCESSING_RATES', 'PROCESSING_RATE_CODE'), 'LOCATION_TYPE': ('NMIS_LOCATION_TYPES', 'LOCATION_TYPE'),
      'SPECIES_GROUP': ('NMIS_SPECIES_GROUP', 'SPECIES_GROUP'), 'UNIT_CODE': ('NMIS_UNITS', 'UNIT_CODE'),
      'PRODUCT_TYPE': ('NMIS_PRODUCT_TYPES', 'PRODUCT_TYPE'), 'ASSOCIATE': ('NMIS_ASSOCIATES', 'ASSOCIATE')}
def nk_of(c):
    if c in NK: return NK[c]
    if c.endswith('_ASSOCIATE') or c == 'Nursery_Associate_Code': return NK['ASSOCIATE']
    if c == 'FY': return NK['FISCAL_YEAR']
    return None
def owner_side(a, b):
    for x, y in ((a, b), (b, a)):
        k = nk_of(x[1])
        if k and x == k: return x, y
    return None
rels = []; cojoins = []
for (a, b), n in joins.most_common():
    ps = parent_side(a, b) or owner_side(a, b)
    if not ps and (nk_of(a[1]) or (a[1] == b[1] and a[1].endswith('_CN'))):
        cojoins.append({'a': a, 'b': b, 'evidence': n}); continue
    if not ps and (b[0].startswith(a[0]) or a[0].startswith(b[0])):
        ps = (a, b) if b[0].startswith(a[0]) else (b, a)
    if ps: p, ch = ps; rels.append({'parent': p[0], 'pk': p[1], 'child': ch[0], 'fk': ch[1], 'evidence': n, 'directed': True, 'examples': sorted(join_src[(a, b)])[:5]})
    else: rels.append({'parent': a[0], 'pk': a[1], 'child': b[0], 'fk': b[1], 'evidence': n, 'directed': False, 'examples': sorted(join_src[(a, b)])[:5]})

# name-based inference for *_CN columns with no join evidence
def table_for(prefix):
    for cand in ['NMIS_' + prefix + 'S', 'NMIS_' + prefix, 'NMIS_' + prefix + 'ES']:
        if cand in base: return cand
    return None
have = {(r['child'], r['fk']) for r in rels} | {(r['parent'], r['pk']) for r in rels if not r['directed']}
for t, cc in cols.items():
    for c in cc:
        if c.endswith('_CN') and (t, c) not in have:
            pt = table_for(c[:-3])
            if pt and pt != t:
                rels.append({'parent': pt, 'pk': 'CN', 'child': t, 'fk': c, 'evidence': 0, 'directed': True, 'inferredByName': True, 'examples': []})
        k = nk_of(c)
        if k and k[0] in base and k[0] != t and (t, c) not in have and not any(r['child'] == t and r['fk'] == c for r in rels):
            rels.append({'parent': k[0], 'pk': k[1], 'child': t, 'fk': c, 'evidence': 0, 'directed': True, 'inferredByName': True, 'examples': []})

for t in list(cols):
    merged = collections.Counter(); spell = {}
    for c, n in cols[t].most_common():
        k = c.upper(); spell.setdefault(k, c); merged[spell[k]] += n
    cols[t] = merged
    canon = {c.upper(): c for c in merged}
    for r in rels:
        if r['child'] == t: r['fk'] = canon.get(r['fk'].upper(), r['fk'])
        if r['parent'] == t: r['pk'] = canon.get(r['pk'].upper(), r['pk'])
tables = {}
for t in sorted(base):
    o = linked[t]
    cl = cols.get(t, {})
    pk = ['CN'] if 'CN' in cl else []
    tables[t] = {'backend': o['Database'], 'sourceTable': o['ForeignName'],
                 'columns': sorted(cl, key=lambda c: (c != 'CN', -cl[c], c)),
                 'columnEvidence': dict(cl), 'pk': pk}
json.dump({'tables': tables, 'relationships': rels, 'coJoins': cojoins}, open('erd.json', 'w'), indent=1)
print(len(tables), 'tables', sum(len(v['columns']) for v in tables.values()), 'columns', len(rels), 'rels',
      sum(1 for r in rels if r['evidence']), 'from joins', sum(1 for r in rels if not r['directed']), 'undirected')
for r in rels[:25]: print(r['evidence'], r['parent'], r['pk'], '<-', r['child'], r['fk'], '' if r['directed'] else '(?)')
print([t for t in tables if not tables[t]['columns']])
