import json, re, os, glob, csv, collections, html
OUT = '/Users/christopherward/Documents/perosnal docs/claude/nmis_frontend_extract'
os.makedirs(OUT + '/forms', exist_ok=True); os.makedirs(OUT + '/reports', exist_ok=True); os.makedirs(OUT + '/vba', exist_ok=True)
views = json.load(open('views_raw.json'))
erd = json.load(open('erd.json'))
csv.field_size_limit(10**9)
objs = list(csv.DictReader(open('objects.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE))
meta = {(o['Type'], o['Name']): o for o in objs}

# ---- VBA ----
vba = {}
for p in glob.glob('vba/*'):
    n = os.path.basename(p).rsplit('.', 1)[0]
    code = open(p, encoding='latin-1').read()
    code = '\n'.join(l for l in code.splitlines() if not l.startswith('Attribute VB_'))
    vba[n] = code
EVT = r'(Click|DblClick|AfterUpdate|BeforeUpdate|Enter|Exit|GotFocus|LostFocus|Change|NotInList|Open|Load|Close|Current|Activate|Deactivate|Unload|KeyDown|KeyPress|KeyUp|MouseDown|MouseUp|MouseMove|BeforeInsert|AfterInsert|BeforeDelConfirm|AfterDelConfirm|Delete|Error|Timer|Format|Print|NoData|Page|Retreat|Resize|Updated|Dirty|Undo|ApplyFilter|Filter)'
def handlers(code):
    out = collections.defaultdict(list)
    for m in re.finditer(r'^(?:Private |Public )?Sub (\w+?)_' + EVT + r'\s*\(', code, re.M):
        out[m[1]].append(m[2])
    return out
def opens(code):
    res = set()
    assigns = collections.defaultdict(set)
    for m in re.finditer(r'(\w+)\s*=\s*"([^"]+)"', code): assigns[m[1]].add(m[2])
    for m in re.finditer(r'DoCmd\.Open(Form|Report)\s*\(?\s*(?:"([^"]+)"|(\w+))', code):
        if m[2]: res.add((m[1], m[2]))
        else:
            for v in assigns.get(m[3], []): res.add((m[1], v))
    return res

def short_type(t): return t
items = []
for root in ('Forms', 'Reports'):
    kind = root[:-1]
    for name, v in sorted(views[root].items(), key=lambda kv: kv[0].lower()):
        if 'error' in v: items.append({'kind': kind, 'name': name, 'error': v['error']}); continue
        mod = vba.get(kind + '_' + name) or vba.get(kind + '_' + name.replace(' ', '_'))
        h = handlers(mod) if mod else {}
        sections = []
        for s in v['sections']:
            ctls = []
            for c in s['controls']:
                c = dict(c)
                key = (c.get('name') or '').replace(' ', '_')
                if key in h: c['events'] = sorted(set(h[key]))
                ctls.append(c)
            sections.append({'name': s['name'], 'type': s['type'], 'height': s['height'], 'controls': ctls})
        o = meta.get(('-32768' if kind == 'Form' else '-32764', name), {})
        it = {'kind': kind, 'name': name, 'caption': v.get('Caption'), 'recordSource': v.get('RecordSource'),
              'orderBy': v.get('OrderBy'), 'groupBy': v.get('groupBy') or [], 'sections': sections,
              'fieldLists': v.get('fieldLists', {}), 'created': o.get('DateCreate'), 'updated': o.get('DateUpdate'),
              'formEvents': sorted(set(h.get('Form', []) + h.get('Report', []))),
              'hasModule': bool(mod), 'opens': sorted({'%s:%s' % x for x in opens(mod or '')})}
        subs = []
        for s in sections:
            for c in s['controls']:
                if c['type'] == 'Subform' and c.get('SourceObject'):
                    subs.append(c['SourceObject'])
        it['subforms'] = subs
        items.append(it)
byname = {(i['kind'], i['name']): i for i in items}
# opened-by
for n, code in vba.items():
    for k, t in opens(code):
        tgt = byname.get((k, t))
        if tgt is not None: tgt.setdefault('openedBy', []).append(n)
for i in items:
    for s in i.get('subforms', []):
        k, _, t = s.partition('.')
        tgt = byname.get((k, t))
        if tgt is not None: tgt.setdefault('usedAsSubformIn', []).append(i['kind'] + ':' + i['name'])
# switchboard
sw = list(csv.DictReader(open('switchboard.tsv', encoding='utf-8'), delimiter='\t'))
CMD = {'0': 'heading', '1': 'go to menu', '2': 'open form (add)', '3': 'open form', '4': 'open report', '5': 'design', '6': 'exit', '7': 'run macro', '8': 'run code'}
menus = collections.OrderedDict()
for r in sw:
    sid = r['SwitchboardID']
    if r['ItemNumber'] == '0': menus.setdefault(sid, {'id': sid, 'title': r['ItemText'], 'items': []}); continue
    menus.setdefault(sid, {'id': sid, 'title': '?', 'items': []})['items'].append({'text': r['ItemText'], 'command': CMD.get(r['Command'], r['Command']), 'argument': r['Argument']})

# usage of tables by views
for i in items:
    src = ' '.join(filter(None, [i.get('recordSource') or ''] + [c.get('RowSource', '') + ' ' + c.get('ControlSource', '') for s in i.get('sections', []) for c in s['controls']]))
    i['tablesUsed'] = sorted(t for t in erd['tables'] if re.search(r'(?<![\w*])\[?' + re.escape(t) + r'\]?(?![\w])', src) or t in i.get('fieldLists', {}))

# local tables schema
local = collections.defaultdict(list)
for r in csv.DictReader(open('local_schema.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE):
    if r['Column'].startswith('#ERR'): continue
    local[r['Table']].append({'name': r['Column'], 'type': r['Type'], 'length': r['Length'], 'rows': r['Rows']})

data = {'items': items, 'erd': erd, 'menus': list(menus.values()), 'vba': vba,
        'localTables': {k: v for k, v in local.items() if not k.startswith('MSys')}}
json.dump(data, open(OUT + '/nmis_frontend.json', 'w'), indent=1)

# ---- per view markdown ----
def mdesc(s): return (s or '').replace('|', '\\|').replace('\n', ' ').replace('\r', '')
def safe(n): return re.sub(r'[^\w\-. ]', '_', n).strip() or 'unnamed'
for i in items:
    if 'error' in i: continue
    L = ['# %s: %s' % (i['kind'], i['name']), '']
    if i.get('caption'): L.append('**Caption:** %s  ' % i['caption'])
    if i.get('recordSource'): L += ['**Record source:**', '', '```sql', i['recordSource'].strip(), '```', '']
    if i.get('orderBy'): L.append('**Order by:** `%s`  ' % i['orderBy'])
    if i.get('groupBy'): L.append('**Grouping/sorting:** ' + ', '.join('`%s`' % g for g in i['groupBy']) + '  ')
    if i.get('tablesUsed'): L.append('**Backend tables referenced:** ' + ', '.join('`%s`' % t for t in i['tablesUsed']) + '  ')
    if i.get('subforms'): L.append('**Subforms/subreports:** ' + ', '.join('`%s`' % s for s in i['subforms']) + '  ')
    if i.get('usedAsSubformIn'): L.append('**Embedded in:** ' + ', '.join('`%s`' % s for s in sorted(set(i['usedAsSubformIn']))) + '  ')
    if i.get('opens'): L.append('**Opens:** ' + ', '.join('`%s`' % s for s in i['opens']) + '  ')
    if i.get('openedBy'): L.append('**Opened from (VBA):** ' + ', '.join('`%s`' % s for s in sorted(set(i['openedBy']))) + '  ')
    if i.get('formEvents'): L.append('**%s events with code:** %s  ' % (i['kind'], ', '.join(i['formEvents'])))
    L.append('')
    for s in i['sections']:
        if not s['controls']: continue
        L += ['## Section: %s' % s['name'], '', '| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |', '|---|---|---|---|---|---|---|']
        labels = {c.get('attachedTo'): c.get('Caption') for c in s['controls'] if c.get('attachedTo')}
        for c in s['controls']:
            if c.get('attachedTo') and c['type'] == 'Label': continue
            cap = c.get('Caption') or labels.get(c.get('name')) or ''
            bound = c.get('ControlSource') or c.get('SourceObject') or ''
            if c.get('LinkMasterFields'): bound += ' (master: %s → child: %s)' % (c.get('LinkMasterFields'), c.get('LinkChildFields'))
            pos = '%.2f, %.2f, %.2f, %.2f' % tuple(x / 1440 for x in (c['left'], c['top'], c['width'], c['height']))
            L.append('| %s | %s | %s | %s | %s | %s | %s |' % (c['type'], mdesc(c.get('name')), mdesc(cap), mdesc(bound), mdesc(c.get('RowSource')), ', '.join(c.get('events', [])), pos))
        L.append('')
    mod = vba.get(i['kind'] + '_' + i['name'])
    if mod and mod.strip() != 'Option Compare Database':
        L += ['## Code-behind (VBA)', '', '```vb', mod.strip(), '```', '']
    open('%s/%s/%s.md' % (OUT, 'forms' if i['kind'] == 'Form' else 'reports', safe(i['name'])), 'w').write('\n'.join(L))
for n, code in vba.items():
    open('%s/vba/%s.bas' % (OUT, safe(n)), 'w').write(code)

# ---- Mermaid ERD (core tables) ----
rels = [r for r in erd['relationships'] if r['directed']]
core = sorted({t for r in rels for t in (r['parent'], r['child']) if not t.startswith('*')})
fks = collections.defaultdict(set)
for r in rels: fks[r['child']].add(r['fk'])
M = ['erDiagram']
def mid(t): return re.sub(r'\W', '_', t)
for t in core:
    tb = erd['tables'][t]
    M.append('    %s {' % mid(t))
    for c in tb['columns']:
        cn = re.sub(r'\W', '_', c)
        tag = ' PK' if c == 'CN' or (c in ('ASSOCIATE', 'ACTIVITY_CODE', 'PLNTMSTR_SYMBOL', 'UNIT_CODE', 'CATEGORY_CODE', 'FISCAL_YEAR', 'PRODUCT_TYPE', 'LOCATION_TYPE', 'SPECIES_GROUP', 'CONTRACT_NO') and 'CN' not in tb['columns'] and any(r['parent'] == t and r['pk'] == c for r in rels)) else ''
        if c in fks[t]: tag = (tag + ',FK') if tag else ' FK'
        M.append('        field %s%s' % (cn, tag))
    M.append('    }')
seen = set()
for r in rels:
    if r['parent'].startswith('*') or r['child'].startswith('*'): continue
    k = (r['parent'], r['child'], r['fk'])
    if k in seen: continue
    seen.add(k)
    M.append('    %s ||--o{ %s : "%s%s"' % (mid(r['parent']), mid(r['child']), r['fk'], '' if r['evidence'] else ' (by name)'))
open(OUT + '/erd.mmd', 'w').write('\n'.join(M) + '\n')
print('items', len(items), 'core tables', len(core), 'rels', len(seen))
