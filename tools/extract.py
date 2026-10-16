import olefile, json, re, struct, os, collections
from dirs import dirdata
from blobparse import tok, clean_text

TYPES = {0x64:'Label',0x65:'Rectangle',0x66:'Line',0x67:'Image',0x68:'CommandButton',0x69:'OptionButton',
         0x6a:'CheckBox',0x6b:'OptionGroup',0x6c:'BoundObjectFrame',0x6d:'TextBox',0x6e:'ListBox',0x6f:'ComboBox',
         0x70:'Subform',0x72:'ObjectFrame',0x76:'PageBreak',0x7a:'ToggleButton',0x7b:'TabControl',0x7c:'Page'}
SECTIONS = {0x98:'Detail',0x99:'Header',0x9a:'Footer',0x9b:'PageHeader',0x9c:'PageFooter',0x9d:'GroupHeader',0x9e:'GroupFooter'}
PROPS = {
 'Label':{0xdc:'Name',0xdd:'Caption',0xe7:'ControlTipText'},
 'Rectangle':{0xdc:'Name'},'Line':{0xdc:'Name'},'Image':{0xdc:'Name'},'OptionButton':{0xdc:'Name'},
 'CommandButton':{0xdc:'Name',0xdd:'Caption',0xde:'StatusBarText',0xf0:'ControlTipText',0xf1:'ControlTipText'},
 'CheckBox':{0xdc:'Name',0xdd:'ControlSource',0xde:'StatusBarText',0xe6:'DefaultValue',0xf3:'ControlTipText'},
 'ToggleButton':{0xdc:'Name',0xdd:'ControlSource'},
 'OptionGroup':{0xdc:'Name',0xdd:'ControlSource',0xe6:'DefaultValue'},
 'TextBox':{0xdc:'Name',0xdd:'ControlSource',0xde:'Format',0xdf:'StatusBarText',0xe0:'ValidationRule',0xe7:'DefaultValue',0xe9:'InputMask',0xf7:'ControlTipText',0xf8:'ControlTipText'},
 'ListBox':{0xdc:'Name',0xdd:'ControlSource',0xde:'RowSourceType',0xdf:'RowSource',0xe0:'ColumnWidths'},
 'ComboBox':{0xdc:'Name',0xdd:'ControlSource',0xde:'RowSourceType',0xdf:'RowSource',0xe0:'ColumnWidths',0xe1:'StatusBarText',0xe9:'DefaultValue',0xfa:'Format',0xf8:'ControlTipText',0xf9:'ControlTipText'},
 'Subform':{0xdc:'Name',0xdd:'SourceObject',0xde:'LinkChildFields',0xdf:'LinkMasterFields'},
 'ObjectFrame':{0xdc:'Name',0xe3:'OLEClass'},'BoundObjectFrame':{0xdc:'Name',0xdd:'ControlSource'},
 'TabControl':{0xdc:'Name'},'Page':{0xdc:'Name',0xe8:'Caption'},'PageBreak':{0xdc:'Name'},
}
GEOM = {'ComboBox': (0x63, 0x64, 0x65, 0x66), 'ListBox': (0x61, 0x62, 0x63, 0x64)}
FORM_PROPS = {0xdc:'RecordSource',0xdd:'Caption',0xc8:'OrderBy',0xc7:'Filter'}

def tok_partial(b, p):
    out = []
    end = len(b)
    while p < end:
        try:
            t = tok(b, p, min(end, p+1))  # dummy to reuse? not used
        except Exception:
            pass
        break
    return out

def tokenize_lenient(b, p):
    """like tok but stops on error"""
    out = []; end = len(b)
    while p < end:
        c = b[p]
        try:
            if c in (0xfd,0xfe):
                if p+1 >= end: break
                out.append(('obj' if c==0xfd else 'child', b[p+1], p)); p += 2
            elif c == 0xff:
                n = b[p+1] | (b[p+2]<<8); out.append(('list', n, p)); p += 3
                if p < end: out.append(('obj', b[p], p)); p += 1
            elif c < 0x20 or 0x40 <= c < 0x60: out.append(('p', c, None)); p += 1
            elif c < 0x40: out.append(('p', c, b[p+1])); p += 2
            elif c < 0x80: out.append(('p', c, struct.unpack_from('<H', b, p+1)[0])); p += 3
            elif c < 0xbc: out.append(('p', c, struct.unpack_from('<I', b, p+1)[0])); p += 5
            else:
                l = b[p+1]; q = p+2
                if l == 0xff: l = struct.unpack_from('<H', b, p+2)[0]; q = p+4
                if q+l > end: break
                out.append(('s', c, b[q:q+l])); p = q+l
        except Exception:
            break
    return out, p

def find_start(b):
    best = (None, [], -1)
    for m in re.finditer(rb'\xff(.)\x00\x64\x00', b, re.S):
        t, p = tokenize_lenient(b, m.start())
        if p >= len(b)-1:
            return m.start(), t, True
        if p - m.start() > best[2]:
            best = (m.start(), t, p - m.start())
    return best[0], best[1], False

def form_level(b, s, back=4000, allow_bin=False):
    best = []
    for p in range(s-1, max(0, s-back), -1):
        if not (0xbc <= b[p] <= 0xfc): continue
        try: t = tok(b, p, s)
        except Exception: continue
        ok = True; zeros = 0
        for x in t:
            if x[0] == 's' and clean_text(x[2]) is None and len(x[2]) != 16 and not allow_bin:
                ok = False; break
            if x[0] == 'p' and x[1] == 0: zeros += 1
            if x[0] in ('obj','child','list'): ok = False; break
        if ok and zeros <= 1 and len(t) >= len(best):
            best = t
    return best

def strings_of(tokens):
    out = {}
    for x in tokens:
        if x[0] == 's':
            v = clean_text(x[2])
            if v is not None and v != '':
                out.setdefault(x[1], v)
    return out

def field_cache(b, s):
    """Table/query field lists Access caches in the blob before the property stream."""
    region = b[:s]
    res = collections.OrderedDict(); cur = None
    for m in re.finditer(rb'((?:[\x20-\x7e]\x00){2,})\x00\x00\x00\x00', region):
        txt = m.group(1).decode('utf-16le'); st = m.start()
        pre = region[max(0, st-24):st]
        if txt.startswith('b') and len(txt) > 1 and region[st-4:st-2] != b'\x00\x00' and re.match(r'b[A-Za-z_*\[]', txt) and not pre[-20:-16] == b'\x07\x00\x00\x00':
            cur = txt[1:]; res.setdefault(cur, [])
        elif len(pre) >= 20 and pre[-20:-16] == b'\x07\x00\x00\x00' and cur:
            if txt not in res[cur]: res[cur].append(txt)
    return {k: v for k, v in res.items() if v}

def parse_object(b):
    s, t, complete = find_start(b)
    if s is None: return None
    fl = strings_of(form_level(b, s)) or strings_of(form_level(b, s, allow_bin=True))
    form = {k2: fl[k] for k, k2 in FORM_PROPS.items() if k in fl}
    sections = []; groups = []; cur_sec = None; cur_ctl = None
    def finish():
        nonlocal cur_ctl
        cur_ctl = None
    stack = []; last = None
    for x in t:
        kind = x[0]
        if kind == 'list':
            stack.append([x[1], last])
        if kind == 'obj':
            while stack and stack[-1][0] == 0: stack.pop()
            if stack: stack[-1][0] -= 1
        if kind in ('obj', 'child'):
            typ = x[1]
            pages = [fr[1] for fr in stack if fr[1] is not None and fr[1].get('type') == 'Page']
            if typ in SECTIONS:
                cur_sec = {'type': SECTIONS[typ], 'nums': {}, 'strs': {}, 'controls': []}
                sections.append(cur_sec); cur_ctl = cur_sec; cur_ctl['_k'] = 'sec'; last = cur_sec
            elif typ == 0x9f:
                g = {'nums': {}, 'strs': {}, '_k': 'grp'}; groups.append(g); cur_ctl = g
            elif typ in TYPES and cur_sec is not None:
                c = {'type': TYPES[typ], 'nums': {}, 'strs': {}, '_k': 'ctl'}
                if kind == 'child' and cur_sec['controls']:
                    parent = cur_sec['controls'][-1]
                    c['attachedTo'] = parent.get('strs', {}).get(0xdc)
                    parent.setdefault('_children', []).append(c)
                if pages: c['_page'] = pages[-1]
                cur_sec['controls'].append(c); cur_ctl = c
                if kind == 'obj': last = c
            else:
                cur_ctl = None
                if kind == 'obj': last = None
        elif kind == 'list':
            pass
        elif cur_ctl is not None:
            if kind == 'p':
                cur_ctl['nums'].setdefault(x[1], x[2])
            elif kind == 's':
                v = clean_text(x[2])
                if v is not None: cur_ctl['strs'].setdefault(x[1], v)
    out_secs = []
    for sec in sections:
        name = sec['strs'].get(0xdf, sec['type'])
        controls = []
        for c in sec['controls']:
            pm = PROPS.get(c['type'], {0xdc: 'Name'})
            props = {}
            for pid, v in c['strs'].items():
                if pid in pm: props.setdefault(pm[pid], v)
                elif v in ('[Event Procedure]',) or v.startswith('=') and pid >= 0xe2:
                    props.setdefault('Events', []).append(v)
            n = c['nums']
            g = GEOM.get(c['type'], (0x60, 0x61, 0x62, 0x63))
            ctl = {'type': c['type'], 'name': props.pop('Name', None),
                   'left': n.get(g[0]) or 0, 'top': n.get(g[1]) or 0, 'width': n.get(g[2]) or 0, 'height': n.get(g[3]) or 0}
            if c.get('attachedTo'): ctl['attachedTo'] = c['attachedTo']
            if c.get('_page'): ctl['page'] = c['_page']['strs'].get(0xdc)
            ctl.update({k: v for k, v in props.items() if k != 'Events'})
            if 'Events' in props: ctl['hasEvents'] = True
            controls.append(ctl)
        out_secs.append({'name': name, 'type': sec['type'], 'height': sec['nums'].get(0x60) or 0, 'controls': controls})
    form['sections'] = out_secs
    form['groupBy'] = [g['strs'].get(0xdc) for g in groups if g['strs'].get(0xdc)]
    form['fieldLists'] = field_cache(b, s)
    form['parsedCompletely'] = complete
    return form

if __name__ == '__main__':
    o = olefile.OleFileIO('storage.cfb')
    objs = {}
    for name, typ in [l.rstrip('\n').split('\t')[2:4] for l in open('objects.tsv', encoding='utf-8')][1:]:
        pass
    result = {}
    for root in ['Forms', 'Reports']:
        d = dirdata(o, root); result[root] = {}
        for k, n in d.items():
            try:
                b = o.openstream('%s/%d/Blob' % (root, k)).read()
                r = parse_object(b)
            except Exception as e:
                r = {'error': str(e)}
            result[root][n] = r or {'error': 'unparsed'}
    json.dump(result, open('views_raw.json', 'w'), indent=1)
    for root in result:
        ok = sum(1 for v in result[root].values() if 'error' not in v)
        print(root, ok, len(result[root]), 'complete', sum(1 for v in result[root].values() if v.get('parsedCompletely')))
