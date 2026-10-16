import re, struct
def tok(b, p, end=None):
    """Tokenize property stream from p. Returns list of tokens and final pos; raises on invalid."""
    end = len(b) if end is None else end
    out = []
    while p < end:
        c = b[p]
        if c in (0xfd, 0xfe):
            if p+1 >= end:
                p += 1; break
            out.append(('obj' if c == 0xfd else 'child', b[p+1], p)); p += 2
        elif c == 0xff:
            if p+3 > end: raise ValueError
            n = b[p+1] | (b[p+2]<<8)
            out.append(('list', n, p)); p += 3
            if p < end:
                out.append(('obj', b[p], p)); p += 1
        elif c < 0x20 or 0x40 <= c < 0x60:
            out.append(('p', c, None)); p += 1
        elif c < 0x40:
            out.append(('p', c, b[p+1])); p += 2
        elif c < 0x80:
            out.append(('p', c, struct.unpack_from('<H', b, p+1)[0])); p += 3
        elif c < 0xbc:
            out.append(('p', c, struct.unpack_from('<I', b, p+1)[0])); p += 5
        elif c < 0xfd:
            l = b[p+1]; q = p+2
            if l == 0xff:
                l = struct.unpack_from('<H', b, p+2)[0]; q = p+4
            if q+l > end: raise ValueError
            out.append(("s", c, b[q:q+l])); p = q+l
    if p != end: raise ValueError
    return out

def find_start(b):
    for m in re.finditer(rb'\xff(.)\x00\x64\x00', b, re.S):
        try:
            t = tok(b, m.start())
            return m.start(), t
        except Exception:
            continue
    return None, None

def form_level(b, s, back=6000):
    best = None
    for p in range(max(0, s-back), s):
        if not (0xbc <= b[p] <= 0xfc): continue
        try:
            t = tok(b, p, s)
        except Exception:
            continue
        if all(x[0] in ('p','s') for x in t):
            return p, t
    return None, []

def u16(x):
    try:
        s = x.decode('utf-16le')
    except Exception:
        return None
    return s

def clean_text(bs):
    if len(bs) % 2: return None
    try: s = bs.decode('utf-16le')
    except Exception: return None
    if all(ch.isprintable() or ch in '\r\n\t' for ch in s): return s
    return None

def form_level2(b, s, back=4000):
    best = []
    for p in range(s-1, max(0, s-back), -1):
        if not (0xbc <= b[p] <= 0xfc): continue
        try: t = tok(b, p, s)
        except Exception: continue
        ok = True; zeros = 0
        for x in t:
            if x[0] == 's' and clean_text(x[2]) is None and len(x[2]) not in (16,):
                ok = False; break
            if x[0] == 'p' and x[1] == 0: zeros += 1
            if x[0] in ('obj','child','list'): ok = False; break
        if ok and zeros <= 1 and len(t) >= len(best):
            best = t
    return best
