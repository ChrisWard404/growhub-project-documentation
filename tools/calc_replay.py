"""Replay legacy NMIS seed/space calculations and GrowHub's planning calculations on real agreement lots.

Legacy side: the saved Access queries (Actual_Sow_Calculated, SOURCE_CALC, Seed_Per_Cell) and the
NMIS_AGREEMENT_LOTS form VBA (Calculate button and the three container variants, SP-10).
GrowHub side: line-for-line ports of OrderPlanningComponent (frontend/src/app/routes/orders/order-planning).

    python3 -I tools/calc_replay.py                       # Oracle-era JSON export (default)
    python3 -I tools/calc_replay.py --source NmisData.mdb # Access backend, read with mdb-export
    python3 -I tools/calc_replay.py --source exports/     # folder of NAME.csv / NAME.json / NAME.xml

Writes calc_replay/lots.csv and calc_replay/summary.md.
"""
import argparse, csv, io, json, math, os, re, statistics, subprocess, sys, collections

HERE = os.path.dirname(os.path.abspath(__file__))
OUT_ROOT = os.path.dirname(HERE)
BE_SEED = '/Users/christopherward/Documents/GitHub/Nursery-GrowHub-Backend/seed'
PACK = os.path.join(OUT_ROOT, 'project_pack')

# ---------------------------------------------------------------- loading

def _rows_from_xml(text, name):
    out = []
    for blk in re.findall(r'<%s>(.*?)</%s>' % (re.escape(name), re.escape(name)), text, re.S):
        out.append({k: v for k, v in re.findall(r'<(\w+)>([^<]*)</\1>', blk)})
    return out


def load_table(source, name):
    """Rows of `name` from an .mdb, a folder of exports, or None if unavailable."""
    if source and source.lower().endswith(('.mdb', '.accdb')):
        try:
            r = subprocess.run(['mdb-export', source, name], capture_output=True, text=True, check=True)
        except (subprocess.CalledProcessError, FileNotFoundError):
            return None
        return list(csv.DictReader(io.StringIO(r.stdout)))
    if source and os.path.isdir(source):
        for ext in ('.csv', '.json', '.xml'):
            p = os.path.join(source, name + ext)
            if not os.path.exists(p):
                continue
            if ext == '.csv':
                return list(csv.DictReader(open(p, encoding='utf-8-sig')))
            if ext == '.json':
                d = json.load(open(p))
                return d if isinstance(d, list) else next(v for v in d.values() if isinstance(v, list))
            return _rows_from_xml(open(p, encoding='utf-8-sig').read(), name)
    return None


def num(v):
    if v is None or v == '':
        return None
    try:
        return float(v)
    except (TypeError, ValueError):
        return None


def load_inputs(source):
    notes = []
    lots = load_table(source, 'NMIS_AGREEMENT_LOTS')
    if lots is None:
        lots = load_table(BE_SEED, 'NMIS_AGREEMENT_LOTS')
        notes.append('Agreement lots: Oracle-era export `seed/NMIS_AGREEMENT_LOTS.json` (no --source given or table missing).')
    else:
        notes.append('Agreement lots: `%s`.' % source)
    for l in lots:  # the Oracle export misspells this column
        if 'THINNING_PROBABILITY_PCT' not in l and 'THINNNING_PROBABILITY_PCT' in l:
            l['THINNING_PROBABILITY_PCT'] = l['THINNNING_PROBABILITY_PCT']

    # Begin container = UNIT on the species product's first cycle (NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER)
    cycles = load_table(source, 'NMIS_SPECIES_PRODUCT_CYCLES')
    if not cycles or 'UNIT' not in cycles[0]:
        cycles = []
        for n in ('jhsn', 'lpn', 'pn', 'tn'):
            p = os.path.join(BE_SEED, 'access', n, 'species_product_cycles.xml')
            if os.path.exists(p):
                cycles += _rows_from_xml(open(p, encoding='utf-8-sig').read(), 'species_product_cycles')
        notes.append('Begin container: Access XML `seed/access/*/species_product_cycles.xml`.')
    begin = {}
    for c in cycles:
        k, fy = c.get('SPECIES_PRODUCT_CN'), num(c.get('NUMBER_OF_FY_MIN'))
        fy = 99 if fy is None else fy
        if k and (k not in begin or fy < begin[k][0]):
            begin[k] = (fy, c.get('UNIT'))

    units = load_table(source, 'NMIS_UNITS')
    cells = {}
    if units:
        cells = {u['UNIT_CODE']: num(u.get('CELLS_PER_CONTAINER')) for u in units}
    else:
        for r in csv.DictReader(open(os.path.join(PACK, '13_reference_grow_units.csv'))):
            cells.setdefault(r['code'], num(r['cellsPerContainer']))
        notes.append('Cells per container: `project_pack/13_reference_grow_units.csv` (NMIS_UNITS not supplied).')

    # GrowHub stock type for a legacy unit code, from the grow-unit crosswalk
    stock = {}
    for r in csv.DictReader(open(os.path.join(PACK, '13_reference_grow_unit_targets.csv'))):
        stock[r['current']] = r['stockType']
        stock.setdefault(r['desired'], r['stockType'])

    # Factor operators: NMIS_PRODUCTS.HARVEST_n/CONTAINER_n_FACTOR_CODE -> NMIS_FACTOR_CODES.FORMULA_OP
    ops = {}
    fcodes = load_table(source, 'NMIS_FACTOR_CODES')
    if fcodes:
        opmap = {f['FACTOR_CODE']: (f.get('FORMULA_OP') or '*') for f in fcodes}
        products = load_table(source, 'NMIS_PRODUCTS') or load_table(BE_SEED, 'NMIS_PRODUCTS')
        sps = load_table(source, 'NMIS_SPECIES_PRODUCTS') or load_table(BE_SEED, 'NMIS_SPECIES_PRODUCTS')
        prod = {p['CN']: p for p in products}
        for s in sps:
            p = prod.get(s.get('PRODUCT_CN'))
            if p:
                ops[s['CN']] = {
                    **{'HF%d' % i: opmap.get(p.get('HARVEST_%d_FACTOR_CODE'), '*') for i in range(1, 5)},
                    **{'CF%d' % i: opmap.get(p.get('CONTAINER_%d_FACTOR_CODE'), '*') for i in range(1, 4)},
                }
    else:
        notes.append('Factor operators: NMIS_FACTOR_CODES not supplied, so every harvest and container factor is treated as `*` (multiply).')
    return lots, begin, cells, stock, ops, notes

# ---------------------------------------------------------------- legacy formulas

def op_factor(v, op):
    """HFn / CFn as a fraction: IIf(op="*", F, 10000/F) / 100."""
    if v is None:
        return None
    if op == '/':
        return (100 / v) if v else None
    return v / 100


def legacy(l, bc, cpc, ops, cat_b=False):
    """Legacy figures. Returns dict; None where an input is missing."""
    g = lambda k: num(l.get(k))
    req, spl, germ, pur = g('TOTAL_REQUEST'), g('GROSS_SOURCE_PER_UNIT'), g('SOURCE_GERM_PCT'), g('SOURCE_PURITY_PCT')
    hasf = g('HARVEST_ASF_ADJUSTMENT')
    casf = g('CONTAINER_ASF_ADJUSTMENT')
    thin = g('THINNING_PROBABILITY_PCT')
    dens = g('DESIRED_DENSITY')
    sr, est = g('SOURCE_REQUIRED'), g('EST_CONTAINERS_REQUIRED')
    # Missing factors/ASF/thinning: treated as 100 so the rest of the formula can still be compared.
    hf = [op_factor(g('HARVEST_FACTOR_%d' % i), ops.get('HF%d' % i, '*')) for i in range(1, 5)]
    cf = [op_factor(g('CONTAINER_FACTOR_%d' % i), ops.get('CF%d' % i, '*')) for i in range(1, 4)]
    hf = [1 if x is None else x for x in hf]
    cf = [1 if x is None else x for x in cf]
    hasf_f = (hasf if hasf is not None else 100) / 100
    casf_f = (casf if casf is not None else 100) / 100
    thin_f = (thin if thin is not None else 100) / 100
    hfp = hf[0] * hf[1] * hf[2] * hf[3]
    cfp = cf[0] * cf[1] * cf[2]
    pls = spl * germ / 100 * pur / 100 if None not in (spl, germ, pur) else None
    # Actual_Sow_Calculated B_or_C; without a begin container, fall back to the lot category
    is_b = (bc == 'SB' or bc.startswith('TB')) if bc else cat_b
    form_sb = bc == 'SB' if bc else cat_b                    # form Type_of_Container
    r = {'is_b': is_b, 'hfp': hfp, 'cfp': cfp, 'pls': pls, 'hf': hf, 'hasf_f': hasf_f, 'casf_f': casf_f,
         'thin_f': thin_f, 'complete': g('HARVEST_FACTOR_1') is not None and pls is not None}

    # Seed (lb)
    if req and pls and hfp:
        r['seed_form'] = round(req * 1000 / (pls * hfp * hasf_f), 3)            # Calculate button -> SOURCE_REQUIRED
        r['seed_query'] = req * 1000 / (pls * hfp * hasf_f) / thin_f            # SOURCE_CALC (work order / source calcs)
    gross = round(req / (hfp * hasf_f), 3) if req and hfp else None              # Calculated_Gross (thousands)

    # Containers / bed feet
    if dens and cpc and gross is not None:
        r['ctr_A'] = gross * 1000 / (dens * cpc) * cfp + 0.35                   # Calculate button
        r['ctr_B'] = gross * 1000 * cfp / (dens * cpc) * casf_f                 # exit Container ASF / CF1-3
        r['ctr_C'] = gross * 1000 / (dens * cpc) * casf_f + 0.35                # exit Desired Density
    if dens and cpc and pls and sr:
        r['sb_bedft'] = sr * pls * cfp / (dens * cpc) * casf_f                  # SB, from seed actually stored

    # Will grow (Actual_Sow_Calculated Query), from stored seed and containers, in thousands
    if sr and pls:
        hfq = 1
        for x in hf:
            hfq *= round(x, 2)
        y_thin = sr * pls * hfq * hasf_f * thin_f / 1000
        y_nothin = sr * pls * hfq * hasf_f / 1000
        if is_b:
            max_total = y_thin
        else:
            cap = est * cpc / 1000 if (est and cpc) else None
            max_total = y_nothin if cap is None else min(cap, y_nothin)
            r['cap_bound'] = cap is not None and cap < y_thin
        r['willgrow_query'] = round(min(max_total, y_thin), 3)
        r['willgrow_form'] = round(sr * pls * hfp * hasf_f * (1 if form_sb else thin_f) / 1000, 3)  # Source_Will_Grow
        r['shortage_query'] = max(0, req - r['willgrow_query']) if req is not None else None
    if spl and sr and est and cpc:
        r['spc_query'] = round(spl * sr / (est * cpc), 1)                       # Seed_Per_Cell
    return r

# ---------------------------------------------------------------- GrowHub ports (order-planning.component.ts)

def js_round(x):
    """Math.round: halves round up."""
    return math.floor(x + 0.5)


def to_fixed(x, n):
    return float('%.*f' % (n, x))


def pct_or_1(v):
    """`v !== null && !isNaN(v) ? v / 100 : 1`"""
    return v / 100 if v is not None else 1


def nz100(v):
    """`castToFloat(v) !== 0 ? castToFloat(v) : 100`"""
    return v if v not in (None, 0) else 100


def growhub(p, is_br, cpc):
    """p: planning-form values. Mirrors runFirstCycleCalculations for one cycle."""
    qty, f1, f2, f3 = p['qty'], p['f1'], p['f2'], p['f3']
    thin, past, germ, pur, spl = p['thin'], p['past'], p['germ'], p['pur'], p['spl']
    dens, cf, surv = p['dens'], p['cellsFilled'], p['survival']
    r = {}
    # calculateEstimatedSeed
    adj = pct_or_1(f1) * pct_or_1(f2) * pct_or_1(f3) * pct_or_1(thin) * pct_or_1(past)
    den = adj * nz100(germ) / 100 * nz100(pur) / 100 * (spl or 0)
    seed = to_fixed(qty / den, 3) if den else None
    r['seed'] = seed
    # calculateEstimatedSpace (BR) / calculateCTREstimatedSpace (CTR)
    if dens and cpc and surv:
        if is_br:
            a = pct_or_1(f1) * pct_or_1(f2) * pct_or_1(f3) * pct_or_1(past)
            r['space'] = js_round(((qty / a) * cf) / (dens * cpc * surv)) if a else None
        else:
            a = to_fixed(pct_or_1(f1) * pct_or_1(f2) * pct_or_1(f3) * pct_or_1(past), 3)
            r['space'] = js_round(((qty / a) * cf) / (dens * cpc * surv) + 0.35) if a else None
    return r


def gh_yield(p, is_br, seed):
    """calculateSeedlingYield (germ/purity here use the null->1 rule, not the 0->100 rule)."""
    f = pct_or_1(p['f1']) * pct_or_1(p['f2']) * pct_or_1(p['f3']) * pct_or_1(p['germ']) * pct_or_1(p['pur'])
    if not is_br:
        f *= pct_or_1(p['thin'])
    f *= pct_or_1(p['past']) * (p['spl'] or 0)
    return js_round(seed * to_fixed(f, 3))


def gh_spc(spl, seed, space, cpc):
    """seedsPerCell / calculateSeedsPerSqFoot."""
    return to_fixed(spl * seed / (space * cpc), 2)

# ---------------------------------------------------------------- replay

def pct_gap(a, b):
    if a is None or b is None or b == 0:
        return None
    return (a - b) / b * 100


def run(source, outdir):
    lots, begin, cells, stock, ops_by_sp, notes = load_inputs(source)
    rows, skipped = [], collections.Counter()
    for l in lots:
        cat = (l.get('CATEGORY_CODE') or '').upper()
        if cat in ('N', 'NSP') or cat.startswith('N'):
            skipped['propagule / native (N, NSP): legacy uses bed-feet-per-acre, not seed (SP-14)'] += 1
            continue
        sp = l.get('SPECIES_PRODUCT_CN')
        bc = begin.get(sp, (None, None))[1]
        cpc = cells.get(bc) if bc else None
        cpc_assumed = False
        if cpc is None and cat.startswith('BR'):
            cpc, cpc_assumed = 4, True  # every bareroot grow unit (SB, SPB, STB, TB, TB9) has 4
        g = lambda k: num(l.get(k))
        req = g('TOTAL_REQUEST')
        if not req:
            skipped['no TOTAL_REQUEST'] += 1
            continue
        L = legacy(l, bc, cpc, ops_by_sp.get(sp, {}), cat_b=cat.startswith('BR'))
        gh_stock = stock.get(bc) if bc else None
        # Without a begin container, fall back to the lot category: BR* = bareroot, C/CT = container.
        # TRNS (transplant) lots could be either, so they're reported as their own group.
        is_br = gh_stock == 'Bareroot' if gh_stock else cat.startswith('BR')
        group = ('BR' if is_br else 'CTR') if gh_stock else ('BR' if cat.startswith('BR') else 'CTR' if cat in ('C', 'CT') else cat)
        p = {'qty': req * 1000, 'f1': g('HARVEST_FACTOR_1'), 'f2': g('HARVEST_FACTOR_2'), 'f3': g('HARVEST_FACTOR_3'),
             'thin': g('THINNING_PROBABILITY_PCT'), 'past': None, 'germ': g('SOURCE_GERM_PCT'),
             'pur': g('SOURCE_PURITY_PCT'), 'spl': g('GROSS_SOURCE_PER_UNIT'), 'dens': g('DESIRED_DENSITY'),
             # Not migrated from Access; equal values make the cellsFilled/survival ratio 1.
             'cellsFilled': 100, 'survival': 100}
        G = growhub(p, is_br, cpc)
        sr, est = g('SOURCE_REQUIRED'), g('EST_CONTAINERS_REQUIRED')
        row = {
            'ID': l.get('ID'), 'nursery': l.get('NURSERY_ASSOCIATE'), 'category': cat, 'begin_fy': l.get('BEGIN_FY'),
            'begin_container': bc or '', 'cells_per_container': cpc, 'cells_assumed': cpc_assumed,
            'complete_inputs': L['complete'], 'legacy_stock': 'B' if L['is_b'] else ('C' if bc else ''),
            'growhub_stock': 'BR' if is_br else 'CTR', 'group': group, 'stock_basis': 'grow unit' if gh_stock else 'category',
            'TOTAL_REQUEST_k': req, 'seeds_per_lb': p['spl'], 'germ': p['germ'], 'purity': p['pur'],
            'HF1': p['f1'], 'HF2': p['f2'], 'HF3': p['f3'], 'HF4': g('HARVEST_FACTOR_4'),
            'HARVEST_ASF': g('HARVEST_ASF_ADJUSTMENT'), 'CF1': g('CONTAINER_FACTOR_1'), 'CF2': g('CONTAINER_FACTOR_2'),
            'CF3': g('CONTAINER_FACTOR_3'), 'CONTAINER_ASF': g('CONTAINER_ASF_ADJUSTMENT'), 'thinning': p['thin'],
            'density': p['dens'],
            'stored_seed_lb': sr, 'legacy_seed_form': L.get('seed_form'), 'legacy_seed_query': L.get('seed_query'),
            'growhub_seed': G.get('seed'),
            'stored_space': est, 'legacy_ctr_A': L.get('ctr_A'), 'legacy_ctr_B': L.get('ctr_B'),
            'legacy_ctr_C': L.get('ctr_C'), 'legacy_sb_bedft': L.get('sb_bedft'), 'growhub_space': G.get('space'),
            'legacy_willgrow_query_k': L.get('willgrow_query'), 'legacy_willgrow_form_k': L.get('willgrow_form'),
            'cap_bound': L.get('cap_bound'),
            'legacy_spc_query': L.get('spc_query'),
        }
        # GrowHub yield and seeds per cell on the stored legacy seed/space, so only the formula differs
        if sr and p['spl']:
            row['growhub_willgrow_k'] = gh_yield(p, is_br, sr) / 1000
        if sr and est and cpc and p['spl']:
            row['growhub_spc'] = gh_spc(p['spl'], sr, est, cpc)
        # Which legacy container formula reproduces the stored value
        if est:
            match = [k for k in ('ctr_A', 'ctr_B', 'ctr_C', 'sb_bedft') if L.get(k) is not None and abs(L[k] - est) <= 1]
            row['stored_space_matches'] = '+'.join(match)
        if L['complete']:
            add_steps(row, L, G, p, is_br, sr, est, cpc)
        else:  # blank harvest factors or test data: a gap would only reflect missing inputs
            for k in ('growhub_willgrow_k', 'growhub_spc'):
                row.pop(k, None)
            G = {}
            row['growhub_seed'] = row['growhub_space'] = None
        row['gap_seed_vs_stored_pct'] = pct_gap(row['growhub_seed'], sr)
        row['gap_seed_vs_query_pct'] = pct_gap(row['growhub_seed'], row['legacy_seed_query'])
        row['gap_space_vs_stored_pct'] = pct_gap(row['growhub_space'], est)
        row['gap_seed_vs_form_pct'] = pct_gap(row['growhub_seed'], L.get('seed_form'))
        row['gap_space_vs_formula_pct'] = pct_gap(row['growhub_space'], L.get('sb_bedft') if is_br else L.get('ctr_A'))
        row['gap_willgrow_vs_query_pct'] = pct_gap(row.get('growhub_willgrow_k'), row['legacy_willgrow_query_k'])
        row['gap_spc_vs_query_pct'] = pct_gap(row.get('growhub_spc'), row['legacy_spc_query'])
        rows.append(row)

    os.makedirs(outdir, exist_ok=True)
    cols = [k for k in dict.fromkeys(k for r in rows for k in r) if not k.startswith('steps_')]
    with open(os.path.join(outdir, 'lots.csv'), 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=cols)
        w.writeheader()
        for r in rows:
            w.writerow({k: ('' if r.get(k) is None else (round(r[k], 4) if isinstance(r[k], float) else r[k])) for k in cols})
    write_summary(rows, skipped, notes, lots, begin, outdir)
    return rows


# Each step adds one legacy element to the GrowHub figure; the last step is the legacy formula.
STEPS = {
    'seed': ('legacy_seed_query', ['GrowHub', '+ harvest factor 4', '+ harvest ASF', '+ factor operators (= SOURCE_CALC)']),
    'willgrow': ('legacy_willgrow_query_k', ['GrowHub', '+ HF4 and harvest ASF', '+ each HF rounded to 2 dp',
                                             '+ thinning for bareroot', '+ containers x cells cap (= Actual_Sow_Calculated)']),
    'space_BR': ('stored_space', ['GrowHub', '+ HF4 and harvest ASF', '+ container factors and container ASF',
                                  '+ start from stored seed x PLS (= form SB formula)']),
    'space_CTR': ('stored_space', ['GrowHub', '+ HF4 and harvest ASF', '+ container factors instead of cellsFilled/survival',
                                   '+ factor product not rounded (= form Calculate)']),
}


def add_steps(row, L, G, p, is_br, sr, est, cpc):
    hf4, hasf, thin = L['hf'][3], L['hasf_f'], L['thin_f']
    s = G.get('seed')
    if s and row['legacy_seed_query']:
        row['steps_seed'] = [s, s / hf4, s / hf4 / hasf, row['legacy_seed_query']]
    w = row.get('growhub_willgrow_k')
    if w is not None and row['legacy_willgrow_query_k'] is not None:
        w1 = w * hf4 * hasf
        hfq = 1
        for x in L['hf']:
            hfq *= round(x, 2)
        w2 = w1 * hfq / L['hfp'] if L['hfp'] else w1
        w3 = w2 * thin if is_br else w2
        row['steps_willgrow'] = [w, w1, w2, w3, row['legacy_willgrow_query_k']]
    sp = G.get('space')
    if sp and est:
        s1 = sp / (hf4 * hasf)
        if is_br:
            s2 = s1 * L['cfp'] * L['casf_f']
            row['steps_space'] = [sp, s1, s2, row['legacy_sb_bedft'] if row['legacy_sb_bedft'] is not None else s2]
        else:
            s2 = (s1 - 0.35) * L['cfp'] + 0.35
            row['steps_space'] = [sp, s1, s2, row['legacy_ctr_A'] if row['legacy_ctr_A'] is not None else s2]


# ---------------------------------------------------------------- summary

OUTPUTS = [
    ('Seed (lb): GrowHub vs stored SOURCE_REQUIRED', 'gap_seed_vs_stored_pct'),
    ('Seed (lb): GrowHub vs form Calculate recomputed', 'gap_seed_vs_form_pct'),
    ('Seed (lb): GrowHub vs query SOURCE_CALC', 'gap_seed_vs_query_pct'),
    ('Containers / bed feet: GrowHub vs stored EST_CONTAINERS_REQUIRED', 'gap_space_vs_stored_pct'),
    ('Containers / bed feet: GrowHub vs legacy formula recomputed (SB formula for bareroot, Calculate for container)', 'gap_space_vs_formula_pct'),
    ('Will grow: GrowHub vs Actual_Sow_Calculated (same stored seed)', 'gap_willgrow_vs_query_pct'),
    ('Seeds per cell: GrowHub vs query Seed_Per_Cell (same stored seed and space)', 'gap_spc_vs_query_pct'),
]


def stats_line(vals):
    v = [x for x in vals if x is not None]
    if not v:
        return '| 0 | – | – | – | – |'
    a = sorted(abs(x) for x in v)
    p90 = a[min(len(a) - 1, int(len(a) * 0.9))]
    return '| %d | %d (%.0f%%) | %d (%.0f%%) | %.1f%% | %.1f%% |' % (
        len(v), sum(x > 1 for x in a), 100 * sum(x > 1 for x in a) / len(a),
        sum(x > 10 for x in a), 100 * sum(x > 10 for x in a) / len(a), statistics.median(a), p90)


def write_summary(rows, skipped, notes, lots, begin, outdir):
    o = []
    o.append('# Seed & space replay: legacy NMIS vs GrowHub\n')
    o.append('Generated by `tools/calc_replay.py`. Per-lot detail: `lots.csv`.\n')
    both = [l for l in lots if num(l.get('HARVEST_FACTOR_4')) is not None and num(l.get('DESIRED_DENSITY')) is not None]
    same = sum(1 for l in both if num(l['HARVEST_FACTOR_4']) == num(l['DESIRED_DENSITY']))
    hf2 = sum(1 for l in lots if num(l.get('HARVEST_FACTOR_2')) is not None)
    if both and same / len(both) > 0.5:
        o.append('> **Data warning: this export looks column-shifted, so factor-level results below are not reliable.** '
                 '`HARVEST_FACTOR_4` equals `DESIRED_DENSITY` on %d of %d lots, `HARVEST_FACTOR_2` is set on only %d of %d, '
                 'and `CONTAINER_FACTOR_1/2` hold cell counts while `CONTAINER_FACTOR_3` holds 1-5. '
                 'Re-run with `--source` pointing at the Access backend.\n' % (same, len(both), hf2, len(lots)))
    o.append('## Data used\n')
    o += ['- ' + n for n in notes]
    o.append('- Lots read: %d. Replayed: %d.' % (len(lots), len(rows)))
    for k, v in skipped.most_common():
        o.append('- Skipped, %s: %d' % (k, v))
    matched = sum(1 for r in rows if r['begin_container'])
    o.append('- Lots with a begin container (and so cells per container): %d of %d. Bareroot lots without one use 4 cells per container (true of every bareroot grow unit). Other lots without one are compared on seed only.' % (matched, len(rows)))
    o.append('- Gaps are measured only on lots with harvest factor 1 and test data (germ, purity, seeds/lb) present: %d of %d. On the rest a gap would only reflect missing inputs.' % (sum(1 for r in rows if r['complete_inputs']), len(rows)))
    o.append('- GrowHub-only inputs: `pastInventoryPerformance` blank (counts as 100%). `cellsFilled` and `containerSurvival` both 100, so their ratio is 1. Migration maps none of the three, and a blank `cellsFilled` would make GrowHub space 0.')
    miss = collections.Counter()
    for r in rows:
        for k in ('HF1', 'HF4', 'HARVEST_ASF', 'CF1', 'CONTAINER_ASF', 'thinning', 'density', 'stored_seed_lb', 'stored_space'):
            if r.get(k) is None:
                miss[(r['group'], k)] += 1
    o.append('\nInputs that are blank (legacy treats a blank factor, ASF or thinning as 100 in this replay):\n')
    gs = sorted({r['group'] for r in rows})
    cnt = collections.Counter(r['group'] for r in rows)
    o.append('| Field | ' + ' | '.join('%s lots blank' % g for g in gs) + ' |')
    o.append('|---' * (len(gs) + 1) + '|')
    for k in ('HF1', 'HF4', 'HARVEST_ASF', 'CF1', 'CONTAINER_ASF', 'thinning', 'density', 'stored_seed_lb', 'stored_space'):
        o.append('| %s | ' % k + ' | '.join('%d / %d' % (miss[(g, k)], cnt[g]) for g in gs) + ' |')

    titles = {'CTR': 'Container', 'BR': 'Bareroot', 'TRNS': 'Transplant (TRNS, begin container unknown)'}
    groups = ['CTR', 'BR'] + sorted({r['group'] for r in rows} - {'CTR', 'BR'})
    for grp in groups:
        sub = [r for r in rows if r['group'] == grp]
        stock = 'BR' if grp == 'BR' else 'CTR'
        o.append('\n## %s lots (%d)\n' % (titles.get(grp, grp), len(sub)))
        o.append('Lots with complete inputs: %d.\n' % sum(1 for r in sub if r['complete_inputs']))
        o.append('| Output | Lots compared | Gap > 1% | Gap > 10% | Median gap | P90 gap |')
        o.append('|---|---|---|---|---|---|')
        for label, key in OUTPUTS:
            o.append('| %s %s' % (label, stats_line([r.get(key) for r in sub])))
        m = collections.Counter(r.get('stored_space_matches') or 'none' for r in sub if r.get('stored_space') and r.get('legacy_ctr_A') is not None)
        if m:
            o.append('\nWhich legacy formula reproduces the stored container / bed-feet value (±1): ' +
                     ', '.join('%s %d' % (k, v) for k, v in m.most_common()))
        cb = sum(1 for r in sub if r.get('cap_bound'))
        if stock == 'CTR':
            o.append('\nLots where Actual_Sow_Calculated is capped by containers × cells (GrowHub has no cap): %d' % cb)
        o.append('\n### What explains the gap\n')
        o.append('Median gap to the legacy figure after adding each legacy element to GrowHub, one at a time and cumulatively. '
                 'The step where the gap drops is the cause. If the last row is still off, the stored legacy value came from somewhere else '
                 '(manual edit, balance cap, SPC override, or a different container variant; see SP-04, SP-10, SP-11).\n')
        for key, steps_key in (('seed', 'steps_seed'), ('willgrow', 'steps_willgrow'), ('space_' + stock, 'steps_space')):
            target, labels = STEPS[key]
            have = [r for r in sub if r.get(steps_key) and r.get(target)]
            if not have:
                continue
            o.append('**%s** (%d lots; target: `%s`)\n' % (key.split('_')[0].replace('willgrow', 'will grow'), len(have), target))
            o.append('| Step | Median gap | Lots within 1% |')
            o.append('|---|---|---|')
            for i, lab in enumerate(labels):
                gaps = [abs(pct_gap(r[steps_key][i], r[target])) for r in have if pct_gap(r[steps_key][i], r[target]) is not None]
                if gaps:
                    o.append('| %s | %.1f%% | %d of %d |' % (lab, statistics.median(gaps), sum(x <= 1 for x in gaps), len(gaps)))
            o.append('')
        ex = [r for r in sub if r.get('gap_space_vs_stored_pct') is not None][:3] or \
             [r for r in sub if r.get('gap_seed_vs_stored_pct') is not None][:3]
        if ex:
            o.append('\nExample lots:\n')
            o.append('| ID | Req (k) | Seeds/lb | Germ | Purity | HF1-4 | Density | Cells | Stored seed | GrowHub seed | Stored space | GrowHub space | Will grow (query) | Will grow (GrowHub) |')
            o.append('|---|---|---|---|---|---|---|---|---|---|---|---|---|---|')
            for r in ex:
                f = lambda v: '' if v is None else ('%g' % v if isinstance(v, (int, float)) else str(v))
                o.append('| ' + ' | '.join(f(x) for x in (
                    r['ID'], r['TOTAL_REQUEST_k'], r['seeds_per_lb'], r['germ'], r['purity'],
                    '/'.join(f(r[k]) or '–' for k in ('HF1', 'HF2', 'HF3', 'HF4')), r['density'], r['cells_per_container'],
                    r['stored_seed_lb'], r['growhub_seed'], r['stored_space'], r['growhub_space'],
                    r['legacy_willgrow_query_k'], r.get('growhub_willgrow_k'))) + ' |')
    open(os.path.join(outdir, 'summary.md'), 'w').write('\n'.join(o) + '\n')


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--source', help='Access backend .mdb, or a folder of NAME.csv/.json/.xml exports')
    ap.add_argument('--out', default=os.path.join(OUT_ROOT, 'calc_replay'))
    a = ap.parse_args()
    rows = run(a.source, a.out)
    print('replayed %d lots -> %s' % (len(rows), a.out))
