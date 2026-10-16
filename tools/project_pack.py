"""Flatten the explorer data into a few self-contained Markdown/CSV files for a Claude Project's knowledge.

Projects take a flat list of files and read text best, so this writes ~25 topic files (none over MAX bytes)
into project_pack/, with a manifest. Regenerate after rebuilding the explorer: python3 tools/project_pack.py
"""
import json, os, re, csv, io, collections, datetime, shutil
HERE = os.path.dirname(os.path.abspath(__file__)); OUT = os.path.dirname(HERE); PACK = os.path.join(OUT, 'project_pack')
MAX = 750_000
J = lambda n: json.load(open(os.path.join(OUT, n)))
V = J('nmis_frontend.json'); R = J('reachability.json')['objects']; G = J('growhub.json'); BE = J('growhub_backend.json')
FE = J('growhub_frontend.json'); MP = J('mapping.json'); RULES = J('rules.json')
items = V['items']; T = V['erd']['tables']; RELS = V['erd']['relationships']
reach = lambda i: R.get(i['kind'] + ':' + i['name'], {}).get('reachable')
today = datetime.date.today().isoformat()
if os.path.isdir(PACK): shutil.rmtree(PACK)
os.makedirs(PACK)
written = []
def emit(stem, title, intro, sections):
    """sections: list of markdown strings; split across files at section boundaries"""
    parts, cur = [], []
    head = lambda k, n: '# %s%s\n\n%s\n\n' % (title, ' (part %d of %d)' % (k, n) if n > 1 else '', intro)
    size = 0
    for s in sections:
        b = len(s.encode())
        if cur and size + b > MAX - 4000: parts.append(cur); cur, size = [], 0
        cur.append(s); size += b
    if cur or not parts: parts.append(cur)
    for k, p in enumerate(parts, 1):
        name = stem + ('_part%d' % k if len(parts) > 1 else '') + '.md'
        txt = head(k, len(parts)) + '\n'.join(p)
        open(os.path.join(PACK, name), 'w').write(txt)
        written.append((name, title, len(txt.encode())))
def esc(s): return (s or '').replace('|', '\\|').replace('\n', ' ').strip()
# ---------- cross-reference indexes ----------
lg_idx = collections.defaultdict(list); gh_idx = collections.defaultdict(list)
rows = [dict(r, sheet=d['sheet']) for d in MP['domains'] for s in d['sections'] for r in s['rows']]
for r in rows:
    for l in r.get('legacy') or []: lg_idx[(l['table'], l['column'])].append(r)
    if r.get('gh'): gh_idx[(r['gh']['table'], r['gh']['column'])].append(r)
scr = {}
for rt in FE['routes']:
    if rt['fieldCount'] or rt['tables']: scr.setdefault(rt['component'], {'paths': [], 'components': rt['components']})['paths'].append(rt['path'])
col_screens = collections.defaultdict(set)
for cn, s in scr.items():
    for c in s['components']:
        for ctl in FE['components'][c]['controls']:
            for h in ctl['gh']: col_screens[(h['table'], h['column'])].add(s['paths'][0])
def legacy_target(i, field):
    for tb in list(i.get('fieldLists', {})) + list(i.get('tablesUsed', [])):
        cols = i.get('fieldLists', {}).get(tb) or T.get(tb, {}).get('columns', [])
        if field in cols and (tb, field) in lg_idx: return tb, lg_idx[(tb, field)]
    return None, []
def menu_path(i):
    p = R.get(i['kind'] + ':' + i['name'], {}).get('path', [])
    return ' › '.join(x['node'].split(':', 1)[1] for x in p) if p else 'not reachable from the menus'
SKIP = {'Label', 'Line', 'Rectangle', 'Page', 'Image'}

# ---------- 00 overview ----------
stampf, stampb = FE.get('stamp', {}), BE.get('stamp', {})
files_doc = []  # filled at the end
# ---------- 01 menus + reachability ----------
sec = []
for m in V['menus']:
    sec.append('## Menu: %s (#%s)\n' % (m['title'], m['id']) + '\n'.join('- %s: %s %s' % (it['text'], it['command'], it['argument']) for it in m['items']) + '\n')
rf = sorted((i for i in items if reach(i)), key=lambda i: (i['kind'], i['name'].lower()))
sec.append('## Reachable forms and reports with their menu path\n\n| Kind | Name | Caption | Menu path |\n|---|---|---|---|\n' + '\n'.join('| %s | %s | %s | %s |' % (i['kind'], esc(i['name']), esc(i.get('caption')), esc(menu_path(i))) for i in rf))
emit('01_legacy_menus_and_reachability', 'Legacy NMIS: menus and which screens are reachable',
     'Switchboard menu tree, and every form/report reachable from it (349 forms, 578 reports). Objects not listed here are dead copies or retired screens.', sec)
# ---------- 02 legacy forms ----------
sec = []
for i in sorted((i for i in items if i['kind'] == 'Form' and reach(i) and 'error' not in i), key=lambda i: i['name'].lower()):
    L = ['## Form: %s' % i['name']]
    meta = [('Caption', i.get('caption')), ('Menu path', menu_path(i)), ('Record source', i.get('recordSource')), ('Order by', i.get('orderBy')),
            ('Backend tables', ', '.join(i.get('tablesUsed', []))), ('Subforms', ', '.join(i.get('subforms', []))), ('Opens', ', '.join(i.get('opens', []))),
            ('Opened from', ', '.join(sorted(set(i.get('openedBy', []))))), ('Form events with code', ', '.join(i.get('formEvents', [])))]
    L += ['- **%s:** %s' % (k, esc(v)) for k, v in meta if v]
    screens = collections.Counter(); mapped = 0; bound = 0; ctl_lines = []
    for s in i['sections']:
        labels = {c.get('attachedTo'): c.get('Caption') for c in s['controls'] if c.get('attachedTo')}
        for c in s['controls']:
            if c['type'] in SKIP: continue
            f = (c.get('ControlSource') or '').strip('[]')
            tgt = ''
            if f and not f.startswith('='):
                bound += 1; tb, mr = legacy_target(i, f)
                if mr:
                    mapped += 1; r = mr[0]
                    if r.get('gh'):
                        g = (r['gh']['table'], r['gh']['column']); tgt = ' → GrowHub %s.%s (%s)' % (g[0], g[1], r['approved']['state'])
                        for sp in col_screens.get(g, ()): screens[sp] += 1
            bits = [c['type'], c.get('name') or '?']
            if labels.get(c.get('name')) or c.get('Caption'): bits.append('"%s"' % (c.get('Caption') or labels.get(c.get('name'))))
            line = '- %s' % ' '.join(esc(b) for b in bits)
            if c.get('ControlSource'): line += ' = `%s`' % esc(c['ControlSource'])
            if c.get('SourceObject'): line += ' subform `%s` (master %s → child %s)' % (esc(c['SourceObject']), esc(c.get('LinkMasterFields')), esc(c.get('LinkChildFields')))
            if c.get('RowSource'): line += ' · rows: `%s`' % esc(c['RowSource'])[:400]
            if c.get('DefaultValue'): line += ' · default `%s`' % esc(c['DefaultValue'])
            if c.get('page'): line += ' · tab %s' % esc(c['page'])
            if c.get('events'): line += ' · events: ' + ', '.join(c['events'])
            ctl_lines.append(line + tgt + ('  [%s]' % s['name'] if s['name'] != 'Detail' else ''))
    if bound: L.append('- **Migration:** %d of %d bound fields mapped. Main GrowHub screens: %s' % (mapped, bound, ', '.join('%s (%d)' % kv for kv in screens.most_common(4)) or 'none'))
    L.append('\n**Controls**\n' + ('\n'.join(ctl_lines) or '(none)'))
    sec.append('\n'.join(L) + '\n')
emit('02_legacy_forms', 'Legacy NMIS forms (reachable only)',
     'Each reachable Access form: caption, menu path, record source SQL, navigation, and every data control with its binding, row-source SQL, tab page and VBA events. "→ GrowHub" shows the mapped GrowHub column and its approval state from the mapping sheet. The VBA code is in the 04_legacy_vba files.', sec)
# ---------- 03 legacy reports ----------
sec = []
for i in sorted((i for i in items if i['kind'] == 'Report' and reach(i) and 'error' not in i), key=lambda i: i['name'].lower()):
    fields = []; calcs = []
    for s in i['sections']:
        for c in s['controls']:
            cs = c.get('ControlSource') or ''
            if not cs: continue
            (calcs if cs.startswith('=') else fields).append(cs if not cs.startswith('=') else '%s: `%s`' % (s['name'], esc(cs)))
    L = ['## Report: %s' % i['name'], '- **Caption:** %s' % esc(i.get('caption')), '- **Menu path:** %s' % esc(menu_path(i)),
         '- **Record source:** `%s`' % esc(i.get('recordSource')), '- **Grouping:** %s' % ' → '.join(i.get('groupBy', []))]
    if i.get('subforms'): L.append('- **Subreports:** %s' % ', '.join(i['subforms']))
    L.append('- **Fields:** %s' % ', '.join(sorted(set(fields))))
    if calcs: L.append('- **Calculated:**\n' + '\n'.join('  - ' + x for x in calcs[:60]))
    sec.append('\n'.join(L) + '\n')
emit('03_legacy_reports', 'Legacy NMIS reports (reachable only)', 'Each reachable Access report: record source, grouping, bound fields and calculated expressions.', sec)
# ---------- 04 VBA ----------
reach_mods = set()
for i in items:
    if reach(i):
        for m in (i['kind'] + '_' + i['name'],): reach_mods.add(m)
for n, o in R.items():
    if o.get('reachable') and n.startswith('Proc:'): reach_mods.add(n[5:].split('.')[0])
sec = []
for mod in sorted(V['vba']):
    code = V['vba'][mod].strip()
    if code in ('', 'Option Compare Database') or mod not in reach_mods and mod.startswith(('Form_', 'Report_')): continue
    sec.append('## Module: %s\n\n```vb\n%s\n```\n' % (mod, code))
emit('04_legacy_vba', 'Legacy NMIS VBA (modules of reachable screens + standard modules)', 'Code-behind for reachable forms/reports plus all standard modules. Module names are Form_<form>, Report_<report> or the module name.', sec)
# ---------- 05 legacy schema ----------
sec = []
for t in sorted(T):
    if t.startswith('*'): continue
    rs = [r for r in RELS if t in (r['parent'], r['child'])]
    sec.append('## %s\n- linked from `%s`\n- columns seen: %s\n%s' % (t, T[t]['backend'], ', '.join(T[t]['columns']) or '(none seen)',
               '\n'.join('- %s.%s → %s.%s (%s)' % (r['child'], r['fk'], r['parent'], r['pk'], ('%d joins' % r['evidence']) if r['evidence'] else 'by name') for r in rs if r['child'] == t)) + '\n')
sec.append('## Local tables in the frontend (exact)\n' + '\n'.join('- %s: %s' % (t, ', '.join('%s %s' % (c['name'], c['type']) for c in cols)) for t, cols in sorted(V['localTables'].items())))
emit('05_legacy_schema', 'Legacy NMIS backend schema (inferred) and local tables',
     'The 91 linked backend tables (NmisData.mdb) are not in the file, so columns come from what the frontend uses and relationships from ~10k query joins. Types are unknown. CN is the surrogate key on most tables.', sec)
# ---------- 06 GrowHub schema ----------
sec = []
for t in sorted(G['tables']):
    g = G['tables'][t]
    fk = {f['column']: f for f in g['fks']}
    cols = '\n'.join('| %s | %s%s | %s | %s | %s | %s |' % (c['name'], c['type'], (' (' + ', '.join(c['enumValues']) + ')') if c.get('enumValues') else '', 'req' if c['notNull'] else '',
                     esc(c.get('default')), ('PK' if c['name'] in g['pk'] else '') + (' → %s.%s %s' % (fk[c['name']]['refTable'], fk[c['name']]['refColumn'], fk[c['name']]['onDelete']) if c['name'] in fk else ''),
                     '; '.join('%s ← %s %s' % (r['accessTables'], r['accessField'], r['approved']['state']) for r in gh_idx.get((t, c['name']), []))) for c in g['columns'] if not c['name'].startswith('metadata'))
    hist = '; '.join('%s %s' % (h['date'], h['name']) for h in g['history'][-8:])
    sec.append('## %s\n- entity: %s\n- created: %s\n- recent migrations: %s\n\n| Column | Type | Null | Default | Keys | Access source (mapping) |\n|---|---|---|---|---|---|\n%s\n' % (
        t, (g.get('entity') or {}).get('file', 'none in code'), g.get('createdIn'), hist, cols))
emit('06_growhub_schema', 'GrowHub Postgres schema (nmis)', 'Every table with exact types, enum values, keys, FKs (on-delete), the Access source from the mapping sheet, and recent migrations. Audit columns metadata* are omitted (every table has them).', sec)
# ---------- 07 migrations ----------
sec = ['## %s %s\n%s\n' % (m['date'], m['name'], '\n'.join('- %s %s%s %s' % (c['table'], c['action'], (' ' + c['column']) if c['column'] else '', esc(c['detail'])[:120]) for c in m['changes'][:80])) for m in reversed(G['migrations'])]
emit('07_growhub_migrations', 'GrowHub migration history', 'All TypeORM migrations newest first, with the tables/columns each touched.', sec)
# ---------- 08 endpoints ----------
called = collections.defaultdict(list)
for r in FE['requests']:
    if r.get('endpointKey'): called[r['endpointKey']].append('%s.%s' % (r['service'], r['method']))
sec = []
by = collections.defaultdict(list)
for e in BE['endpoints']: by[e['group']].append(e)
for g, es in sorted(by.items()):
    sec.append('## /api/%s\n' % g + '\n'.join('- **%s %s** → `%s` (%s:%s)%s · roles: %s · reads: %s · tables: %s · frontend: %s' % (
        e['verb'], e['path'], e['handler'].get('function'), e['handler'].get('file'), e['handler'].get('line'), ' [base CRUD]' if e['handler'].get('baseCrud') else '',
        ', '.join(e['handler'].get('auth', [])) or 'none in handler', '; '.join('%s: %s' % (k, ', '.join(e['handler'].get(k, []))) for k in ('params', 'query', 'body') if e['handler'].get(k)) or '-',
        ', '.join(e['handler'].get('tables', [])), ', '.join(called.get(e['verb'] + ' ' + e['path'], [])) or 'not called by the frontend') for e in es) + '\n')
emit('08_growhub_api_endpoints', 'GrowHub backend API endpoints', 'Scraped from %s @ %s (%s). Every /api route with handler file:line, role checks, request fields read, tables touched and the frontend service methods that call it. /api is behind passport JWT when auth is on.' % (stampb.get('branch'), stampb.get('commit'), stampb.get('commitDate')), sec)
# ---------- 09 frontend screens + forms ----------
sec = []
for cn, s in sorted(scr.items(), key=lambda kv: kv[1]['paths'][0]):
    L = ['## Screen %s (%s)' % (', '.join(s['paths']), cn)]
    for c in s['components']:
        C = FE['components'][c]
        if not C['controls'] and not C.get('forms'): continue
        L.append('### %s (`%s`)' % (c, C['file']))
        for f in C.get('forms', []):
            def flat(fs, p=''):
                for x in fs:
                    if x['kind'] == 'control': yield p + x['name'], x
                    else: yield from flat(x.get('fields', []), p + x['name'] + ('[].' if x['kind'] == 'array' else '.'))
            L.append('Form **%s** (line %s), requests: %s' % (f['name'], f['line'], ', '.join(sorted({'%s.%s' % (r['service'], r['method']) for r in f['requests']})) or '-'))
            L += ['- %s%s%s%s%s' % (n, (' "' + x['label'] + '"') if x.get('label') else '', (' [' + ', '.join(v.replace('Validators.', '') for v in x.get('validators', [])) + ']') if x.get('validators') else '',
                  ' → ' + ', '.join('%s.%s' % (g['table'], g['column']) for g in x.get('gh', [])) if x.get('gh') else '', ' (disabled)' if x.get('disabled') else '') for n, x in flat(f['fields'])]
        tpl = [x for x in C['controls'] if x['binding'] != 'formControlName']
        if tpl: L.append('Other inputs: ' + ', '.join('%s "%s"' % (x['name'], x.get('label') or '') for x in tpl))
    sec.append('\n'.join(L) + '\n')
emit('09_growhub_screens_and_forms', 'GrowHub frontend screens and forms', 'Scraped from %s @ %s (%s). Each route screen with its components, reactive forms (fields, labels, validators, GrowHub column) and the service requests each form sends.' % (stampf.get('branch'), stampf.get('commit'), stampf.get('commitDate')), sec)
# ---------- 10 requests ----------
sec = []
by = collections.defaultdict(list)
for r in FE['requests']: by[r['service']].append(r)
for svc, rs in sorted(by.items()):
    sec.append('## %s (`%s`)\n' % (svc, rs[0]['file']) + '\n'.join('- **%s** %s %s → %s · tables: %s · callers: %s' % (r['method'], r['verb'], r['url'], r['endpoint'] or 'NO BACKEND ROUTE', ', '.join(r['tables']), ', '.join(r['callers']) or 'unused') for r in rs) + '\n')
emit('10_growhub_frontend_requests', 'GrowHub frontend HTTP requests', 'Every HTTP call in the Angular services, paired with the backend route it hits.', sec)
# ---------- 11 mapping ----------
sec = []
for d in MP['domains']:
    for s in d['sections']:
        sec.append('## %s › %s → %s\n\n| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |\n|---|---|---|---|---|---|---|---|\n' % (d['sheet'], s['name'], s['table']) + '\n'.join(
            '| %s | %s | %s %s | %s | %s | %s | %s | %s |' % (esc(r['field']), ('%s.%s' % (r['gh']['table'], r['gh']['column'])) if r['gh'] else ('NOT IN SCHEMA' + ((' (did you mean ' + ', '.join('%s.%s' % (x['table'], x['column']) for x in r['suggest']) + ')') if r['suggest'] else '')),
            esc(r['accessTables']), esc(r['accessField']), esc(r['approved']['text'] or '-'), esc(r['validated']['text'] or '-'), esc(r['final']['text'] or '-'), esc(r['enumMapping'] or (r['enumRef'] and 'see enum ' + r['enumRef']) or ''), esc(r['notes'])) for r in s['rows']) + '\n')
sec.append('## Coverage: GrowHub columns with no mapping row\n' + '\n'.join('- %s: %s' % (t, ', '.join(c['unmapped']) or 'all covered') for t, c in MP['coverage'].items()))
emit('11_mapping_access_to_growhub', 'Access → GrowHub field mapping (from Access_Mapping_Spreadsheet.xlsx)', 'Source: %s saved %s. Each row checked against the GrowHub schema; NOT IN SCHEMA marks fields that were renamed or moved.' % (MP['source'], MP['modified']), sec)
# ---------- 12 reference data (enums md + csvs) ----------
sec = ['## %s → %s\n' % (e['access'], e['growhub']) + '\n'.join('- `%s` → %s' % (v['access'], v['growhub'] or '(blank)') for v in e['values']) + '\n' for e in MP['enums']]
emit('12_mapping_enum_values', 'Access → GrowHub enum value mappings (SourceENUM sheet)', '', sec)
def write_csv(name, rows_, cols):
    buf = io.StringIO(); w = csv.writer(buf); w.writerow(cols); [w.writerow([r.get(c, '') for c in cols]) for r in rows_]
    open(os.path.join(PACK, name), 'w').write(buf.getvalue()); written.append((name, name, len(buf.getvalue().encode())))
write_csv('13_reference_activity_codes_access.csv', MP['activityCodes']['access'], ['nursery', 'code', 'name', 'parentCode', 'balance', 'module', 'kind', 'ghParent', 'ghCode', 'note'])
write_csv('13_reference_activity_codes_oracle.csv', MP['activityCodes']['oracle'], ['code', 'name', 'ghParent', 'ghCode', 'kind', 'balance'])
write_csv('13_reference_grow_units.csv', [dict(u, approved=u['approved']['text']) for u in MP['growUnits']['units']], ['nursery', 'code', 'type', 'description', 'cellDims', 'cellsPerContainer', 'ghCode', 'approved'])
write_csv('13_reference_grow_unit_targets.csv', MP['growUnits']['desired'], ['current', 'desired', 'description', 'stockType', 'cellDiameter', 'cellDepth', 'cellsPerContainer', 'width', 'length', 'height', 'drillRows', 'historical'])
write_csv('13_reference_box_types.csv', MP['boxTypes'], ['nursery', 'code', 'type', 'multiplier', 'description', 'cellsPerContainer', 'notes'])
# ---------- 14 business rules ----------
for dom in RULES:
    sec = ['## Inputs\n| Meaning | Legacy | GrowHub | Note |\n|---|---|---|---|\n' + '\n'.join('| %s | %s | %s | %s |' % (esc(x['meaning']), esc(x['legacy']), esc(x['growhub']) or 'no field', esc(x.get('note'))) for x in dom['inputs'])]
    for r in dom['rules']:
        blk = lambda side: '\n'.join('%s\n```\n%s\n```' % (ref.get('where', ''), ref.get('code', '')) for ref in r[side].get('refs', []) if ref.get('code'))
        sec.append('## %s %s — %s (%s)\n**Why it matters:** %s\n\n**Legacy:** %s\n\n%s\n\n**GrowHub:** %s\n\n%s\n%s%s' % (
            r['id'], r['title'], r['verdict'], r['severity'], r.get('impact', ''), r['legacy']['formula'], blk('legacy'), r['growhub']['formula'], blk('growhub'),
            ('\n**Evidence:** ' + r['evidence']) if r.get('evidence') else '', ('\n**Open question:** ' + r['question']) if r.get('question') else ''))
    emit('14_business_rules_' + re.sub(r'\W+', '_', dom['domain'].lower()), 'Business rules: ' + dom['domain'], dom['summary'], sec)
# ---------- carry-over docs ----------
for extra in ('SPRINT_PLAN.md',):
    if os.path.exists(os.path.join(OUT, extra)):
        shutil.copy(os.path.join(OUT, extra), os.path.join(PACK, '15_' + extra)); written.append(('15_' + extra, extra, os.path.getsize(os.path.join(OUT, extra))))
# ---------- 00 README ----------
lines = ['# NMIS → GrowHub migration knowledge pack', '',
         'Generated %s from the `nmis_frontend_extract` explorer data. Flat files, one topic each, written for a Claude Project. The interactive `explorer.html` stays in the extract folder for people; these files carry the same facts as text.' % today, '',
         '**Systems:** legacy = USDA Forest Service NMIS (Access 2000 frontend `nmis_Demo.mdb`, backend NmisData.mdb not available). New = GrowHub: backend `Nursery-GrowHub-Backend` (Express + TypeORM, Postgres schema `nmis`), frontend `Nursery-GrowHub-Frontend` (Angular).', '',
         '**Scrape stamps:** frontend %s @ %s (%s); backend %s @ %s (%s).' % (stampf.get('branch'), stampf.get('commit'), stampf.get('commitDate'), stampb.get('branch'), stampb.get('commit'), stampb.get('commitDate')), '',
         '**Conventions:** legacy tables are `NMIS_*` (UPPER_CASE, key `CN`); GrowHub tables are snake_case with `uuid` keys and camelCase columns; embedded columns are flattened (`containerSpecificationsNumberofcontainersneeded`). Legacy quantities are often in thousands; GrowHub in units. Mapping status words: yes = approved for migration work, maybe, no, blank = not reviewed.', '',
         '**Caveats:** legacy backend columns/relationships are inferred; GrowHub field→column links and form→request pairing are inferred from code; reachability may miss screens opened via names built at runtime.', '',
         '## Files', '', '| File | What | Size |', '|---|---|---|']
lines += ['| %s | %s | %d KB |' % (n, t, s // 1024) for n, t, s in written]
open(os.path.join(PACK, '00_README.md'), 'w').write('\n'.join(lines) + '\n')
tot = sum(s for _, _, s in written)
print(len(written) + 1, 'files,', tot // 1024, 'KB total; largest', max(written, key=lambda x: x[2])[0], max(s for _, _, s in written) // 1024, 'KB')
