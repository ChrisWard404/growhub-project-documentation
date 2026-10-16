"""Parse Angular reactive-form definitions (FormBuilder.group / new FormGroup) out of component TypeScript."""
import re
OPEN = {'(': ')', '[': ']', '{': '}'}
def skip_str(src, i):
    q = src[i]; i += 1
    while i < len(src) and src[i] != q:
        if src[i] == '\\': i += 1
        elif q == '`' and src[i:i+2] == '${':
            d = 1; i += 2
            while i < len(src) and d:
                d += {'{': 1, '}': -1}.get(src[i], 0); i += 1
            continue
        i += 1
    return i + 1
def match_close(src, i):
    """index just past the bracket that closes src[i]"""
    stack = [OPEN[src[i]]]; i += 1
    while i < len(src) and stack:
        c = src[i]
        if c in '"\'`': i = skip_str(src, i); continue
        if src[i:i+2] == '//': i = src.find('\n', i); i = len(src) if i < 0 else i; continue
        if src[i:i+2] == '/*': i = src.find('*/', i) + 2; continue
        if c in OPEN: stack.append(OPEN[c])
        elif c == stack[-1]: stack.pop()
        i += 1
    return i
def split_top(src):
    out, i, cur = [], 0, 0
    while i < len(src):
        c = src[i]
        if c in '"\'`': i = skip_str(src, i); continue
        if src[i:i+2] == '//':
            j = src.find('\n', i); i = len(src) if j < 0 else j; continue
        if c in OPEN: i = match_close(src, i); continue
        if c == ',': out.append(src[cur:i]); cur = i + 1
        i += 1
    out.append(src[cur:]); return [x for x in out if x.strip()]
def strip_comments(t): return re.sub(r'//[^\n]*|/\*.*?\*/', '', t, flags=re.S).strip()
GROUP = re.compile(r'^(?:this\.)?(?:formBuilder|fb|_fb|builder)\.group\s*\(|^new\s+(?:Untyped)?FormGroup\s*\(')
ARRAY = re.compile(r'^(?:this\.)?(?:formBuilder|fb|_fb|builder)\.array\s*\(|^new\s+(?:Untyped)?FormArray\s*\(')
CTRL = re.compile(r'^new\s+(?:Untyped)?FormControl\s*(?:<[^>]*>)?\s*\(|^(?:this\.)?(?:formBuilder|fb)\.control\s*\(')
def parse_obj(body):
    """body: text inside { } → list of field dicts"""
    fields = []
    for part in split_top(body):
        p = strip_comments(part)
        if not p or p.startswith('...'): continue
        m = re.match(r'["\']?([\w$-]+)["\']?\s*:\s*(.*)$', p, re.S)
        if not m: continue
        fields.append(parse_value(m[1], m[2].strip()))
    return fields
def validators(txt):
    return sorted(set(re.sub(r'\s+', '', v) for v in re.findall(r'Validators\.\w+(?:\([^()]*\))?', txt) if v != 'Validators.compose') | set(re.findall(r'\b(\w+Validator\w*|\w+Validation)\b(?!\s*:)', txt)) - {'Validators'})
def parse_value(name, v):
    f = {'name': name}
    if GROUP.match(v):
        i = v.find('('); inner = v[i+1:match_close(v, i)-1]
        parts = split_top(inner)
        obj = parts[0].strip() if parts else '{}'
        f['kind'] = 'group'; f['fields'] = parse_obj(obj[1:-1]) if obj.startswith('{') else []
        if len(parts) > 1: f['validators'] = validators(','.join(parts[1:]))
        return f
    if ARRAY.match(v):
        i = v.find('('); inner = v[i+1:match_close(v, i)-1]
        f['kind'] = 'array'
        g = re.search(r'(?:formBuilder|fb)\.group\s*\(|new\s+(?:Untyped)?FormGroup\s*\(', inner)
        if g:
            sub = parse_value('[]', inner[g.start():].strip()); f['fields'] = sub.get('fields', [])
        return f
    if CTRL.match(v):
        i = v.find('('); inner = v[i+1:match_close(v, i)-1]; parts = split_top(inner)
    elif v.startswith('['):
        parts = split_top(v[1:match_close(v, 0)-1])
    else:
        parts = [v]
    f['kind'] = 'control'
    d = strip_comments(parts[0]) if parts else ''
    if d.startswith('{') and 'disabled' in d:
        f['disabled'] = bool(re.search(r'disabled\s*:\s*true', d))
        dv = re.search(r'value\s*:\s*(.*?)(?:,\s*disabled|\}$)', d, re.S); d = dv[1].strip() if dv else d
    f['default'] = re.sub(r'\s+', ' ', d)[:80]
    f['validators'] = validators(','.join(parts[1:])) if len(parts) > 1 else []
    return f
METHOD = re.compile(r'^\s{2}(?:public |private |protected )?(?:async )?(\w+)\s*(?:\([^)]*\)\s*(?::\s*[^={]+)?\{|=\s*(?:async\s*)?\([^)]*\)\s*(?::\s*[^=]+)?=>\s*\{)', re.M)
def methods(src):
    out = {}
    for m in METHOD.finditer(src):
        if m[1] in ('if', 'for', 'while', 'switch', 'catch', 'constructor'): pass
        j = src.find('{', m.end() - 1); k = match_close(src, j)
        out.setdefault(m[1], (src[j:k], src[:m.start()].count('\n') + 1))
    return out
def forms_in(src):
    found = []
    meths = methods(src)
    for m in re.finditer(r'(?:this\.(\w+)\s*=\s*|(?:let|const)\s+(\w+)\s*(?::\s*[\w<>]+)?\s*=\s*|return\s+|(\w+)\s*(?::\s*[\w<>]+)?\s*=\s*)((?:this\.)?(?:formBuilder|fb|_fb)\.group\s*\(|new\s+(?:Untyped)?FormGroup\s*\()', src):
        start = m.start(4); i = src.find('(', start); end = match_close(src, i)
        f = parse_value('root', src[start:end])
        line = src[:start].count('\n') + 1
        owner = None
        for name, (body, l) in meths.items():
            if l <= line and src.find(body) <= start < src.find(body) + len(body): owner = name
        name = m[1] or m[2] or m[3] or ('returned by ' + owner + '()' if owner else 'form')
        if not f.get('fields'): continue
        found.append({'name': name, 'var': m[1] or m[3], 'method': owner, 'line': line, 'fields': f['fields'], 'groupValidators': f.get('validators', [])})
    return found
