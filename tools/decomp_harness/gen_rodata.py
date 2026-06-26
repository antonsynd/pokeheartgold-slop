#!/usr/bin/env python3
"""Generate typed byte-exact C const definitions for the overlay_02_02248728
rodata/.data symbols, for the finalization flip-to-src.

Parses asm/overlay_02_02248728.s .rodata+.data into per-symbol ordered token
lists (symbol-ref words vs raw byte runs), then emits each symbol with its
declared C type. Verify by building --target main and byte-comparing the src .o
rodata against the asm .o rodata.
"""
import re, sys

S = 'asm/overlay_02_02248728.s'

# --- parse the rodata/data sections into ordered per-symbol token lists ---
# token = ('sym', name) for a relocated .word, or ('int', value) for a numeric
# .word, or ('byte', b) for each .byte. We keep them flat & ordered.
def parse():
    lines = open(S).read().splitlines()
    syms = {}        # name -> list of tokens
    order = []       # symbol names in file order
    cur = None
    in_data = False
    started = False
    for l in lines:
        st = l.strip()
        if st == '.rodata':
            started = True; continue
        if st == '.data':
            in_data = True; continue
        if not started:
            continue
        m = re.match(r'^(ov02_[0-9A-Fa-f]+|_[0-9A-Fa-f]+):', st)
        if m:
            cur = m.group(1)
            if cur not in syms:
                syms[cur] = {'toks': [], 'data': in_data}
                order.append(cur)
            continue
        if cur is None:
            continue
        # .word a, b, c
        mw = re.match(r'\.word\s+(.+)$', st)
        if mw:
            for item in mw.group(1).split(','):
                item = item.strip()
                if re.match(r'^[A-Za-z_]\w*$', item):
                    syms[cur]['toks'].append(('sym', item))
                else:
                    syms[cur]['toks'].append(('int', int(item, 0)))
            continue
        mb = re.match(r'\.byte\s+(.+)$', st)
        if mb:
            for item in mb.group(1).split(','):
                syms[cur]['toks'].append(('byte', int(item.strip(), 0)))
            continue
    return syms, order

# flatten a symbol's tokens to a byte list + reloc map {offset: symname}
def to_bytes(toks):
    out = []
    relocs = {}
    for t in toks:
        if t[0] == 'sym':
            relocs[len(out)] = t[1]
            out += [0, 0, 0, 0]
        elif t[0] == 'int':
            v = t[1] & 0xFFFFFFFF
            out += [v & 0xff, (v >> 8) & 0xff, (v >> 16) & 0xff, (v >> 24) & 0xff]
        else:
            out.append(t[1] & 0xff)
    return out, relocs

def le(bs):  # little-endian int from byte list
    return sum(b << (8 * i) for i, b in enumerate(bs))

def s32(bs):
    v = le(bs)
    return v - (1 << 32) if v >= (1 << 31) else v

def fxhex(bs):
    """format a 4-byte fx32 component; cast negatives like the codebase (fx32)0x..."""
    v = le(bs)
    if v == 0:
        return '0'
    if v & 0x80000000:
        return f'(fx32)0x{v:08X}'
    return f'0x{v:08X}'

# ---- emit helpers per type ----
def emit_vecfx32_scalar(name, bs):
    assert len(bs) == 12, (name, len(bs))
    x, y, z = fxhex(bs[0:4]), fxhex(bs[4:8]), fxhex(bs[8:12])
    return f'const VecFx32 {name} = {{ {x}, {y}, {z} }};'

def emit_vecfx32_array(name, bs, n, qual='const '):
    assert len(bs) == 12 * n, (name, len(bs))
    elems = []
    for i in range(n):
        c = bs[i*12:(i+1)*12]
        elems.append(f'{{ {fxhex(c[0:4])}, {fxhex(c[4:8])}, {fxhex(c[8:12])} }}')
    return f'{qual}VecFx32 {name}[] = {{\n    ' + ',\n    '.join(elems) + ',\n};'

def emit_u16_array(name, bs):
    vals = [f'0x{le(bs[i:i+2]):04X}' for i in range(0, len(bs), 2)]
    return f'const u16 {name}[] = {{ ' + ', '.join(vals) + ' };'

def emit_u32_array(name, bs):
    vals = [f'0x{le(bs[i:i+4]):08X}' for i in range(0, len(bs), 4)]
    # wrap
    out = []
    for i in range(0, len(vals), 8):
        out.append('    ' + ', '.join(vals[i:i+8]) + ',')
    return f'const u32 {name}[] = {{\n' + '\n'.join(out) + '\n};'

def emit_fx32_array(name, bs):
    vals = [fxhex(bs[i:i+4]) for i in range(0, len(bs), 4)]
    out = []
    for i in range(0, len(vals), 8):
        out.append('    ' + ', '.join(vals[i:i+8]) + ',')
    return f'const fx32 {name}[] = {{\n' + '\n'.join(out) + '\n};'

def hex_signed(v):
    return f'0x{v & 0xFFFFFFFF:08X}'

def emit_u8_array(name, bs):
    vals = [f'0x{b:02X}' for b in bs]
    out = []
    for i in range(0, len(vals), 12):
        out.append('    ' + ', '.join(vals[i:i+12]) + ',')
    return f'const u8 {name}[] = {{\n' + '\n'.join(out) + '\n};'

# ---- per-symbol type map (strategy keyed by symbol name) ----
VEC_SCALARS = ['ov02_02253348','ov02_02253354','ov02_02253360','ov02_0225336C',
    'ov02_02253378','ov02_02253384','ov02_02253390','ov02_0225339C','ov02_022533A8',
    'ov02_022533B4','ov02_022533CC','ov02_022533D8','ov02_022533E4','ov02_022533F0',
    'ov02_022533FC','ov02_02253408','ov02_02253414','ov02_02253B24','ov02_02253B30']
SMFUNC = ['ov02_022532F8','ov02_02253300','ov02_02253330','ov02_02253420',
    'ov02_022534B8','ov02_022534D0','ov02_022534F0','ov02_02253550','ov02_02253588']
SMFUNC_PTR = ['ov02_02253320','ov02_022533C0']
FIELDTASK = ['ov02_022536F0','ov02_02253700','ov02_02253710','ov02_02253724','ov02_0225373C','ov02_02253754']
F3DTT = ['ov02_022538FC','ov02_02253914','ov02_0225392C','ov02_02253944','ov02_0225395C',
    'ov02_02253974','ov02_0225398C','ov02_022539A4','ov02_022539BC','ov02_022539D4','ov02_022539EC']
MOVEMENT = ['ov02_02253770','ov02_02253794','ov02_022537B8','ov02_022537DC','ov02_02253820','ov02_02253884']
U16 = ['ov02_022532FC','ov02_02253304','ov02_0225330A','ov02_02253310']
FX32 = ['ov02_02253430','ov02_02253520']
U8 = ['ov02_022538EC','ov02_02253A4C']
ANIMDISP = ['ov02_02253A04','ov02_02253A34']
LAUNCH = ['ov02_02253440','ov02_02253454','ov02_02253468','ov02_0225347C','ov02_02253490','ov02_022534A4']
# symbols to SKIP (auto-generated by a function-local initializer, or absorbed into an array)
SKIP = ['ov02_02253A54','ov02_02253D94','ov02_02253D98','ov02_02253DDC','ov02_02253DE0','_02253E20']
# rodata-only (referenced only by other rodata) -> need forward externs
RODATA_ONLY = ['ov02_022532F8','ov02_02253300','ov02_02253330','ov02_02253420','ov02_022534D0']

def words(bs, rel, etype, name):
    """emit a flat array of cast pointer/int words for a func-pointer table"""
    out = []
    for o in range(0, len(bs), 4):
        if o in rel:
            out.append(f'({etype}){rel[o]}')
        else:
            out.append(f'({etype})0x{le(bs[o:o+4]):X}')
    return out

def emit_symbol(name, bs, rel):
    if name in VEC_SCALARS:
        return emit_vecfx32_scalar(name, bs)
    if name == 'ov02_02253D90' or name == 'ov02_02253DD8':
        # .data section (non-const) -> matches retail placement
        return emit_vecfx32_array(name, bs, 6, qual='')
    if name in U16:
        return emit_u16_array(name, bs)
    if name == 'ov02_02253AC0':
        return emit_u32_array(name, bs)
    if name in FX32:
        return emit_fx32_array(name, bs)
    if name in U8:
        return emit_u8_array(name, bs)
    if name in SMFUNC:
        ws = words(bs, rel, 'ov02_StateMachineFunc', name)
        return f'ov02_StateMachineFunc const {name}[] = {{ ' + ', '.join(ws) + ' };'
    if name in SMFUNC_PTR:
        ws = words(bs, rel, 'ov02_StateMachineFunc *', name)
        return f'ov02_StateMachineFunc *const {name}[] = {{ ' + ', '.join(ws) + ' };'
    if name in FIELDTASK:
        ws = words(bs, rel, 'ov02_FieldTaskFunc', name)
        return f'ov02_FieldTaskFunc const {name}[] = {{\n    ' + ',\n    '.join(ws) + ',\n};'
    if name in ANIMDISP:
        ws = words(bs, rel, 'ov02_AnimDispatchFunc', name)
        return f'ov02_AnimDispatchFunc const {name}[] = {{ ' + ', '.join(ws) + ' };'
    if name == 'ov02_02253A1C':
        ws = words(bs, rel, 'ov02_CreateDispatchFunc', name)
        return f'ov02_CreateDispatchFunc const {name}[] = {{ ' + ', '.join(ws) + ' };'
    if name in LAUNCH:
        prio = le(bs[0:4])
        f = [(f'(void *){rel[o]}' if o in rel else f'(void *)0x{le(bs[o:o+4]):X}') for o in (4,8,12,16)]
        return f'const ov02_LaunchTemplate {name} = {{ 0x{prio:X}, {f[0]}, {f[1]}, {f[2]}, {f[3]} }};'
    if name in F3DTT:
        prio = le(bs[0:4]); dsize = le(bs[4:6]); pad = le(bs[6:8])
        assert pad == 0, (name, pad)
        f = [f'(Field3dObjectTaskFunc){rel[o]}' for o in (8,12,16,20)]
        return f'const Field3dObjectTaskTemplate {name} = {{ 0x{prio:X}, 0x{dsize:X}, {f[0]}, {f[1]}, {f[2]}, {f[3]} }};'
    if name in MOVEMENT:
        cmds = [f'{{ 0x{le(bs[o:o+2]):X}, 0x{le(bs[o+2:o+4]):X} }}' for o in range(0, len(bs), 4)]
        return f'const MovementScriptCommand {name}[] = {{\n    ' + ', '.join(cmds) + ',\n};'
    if name == 'ov02_02253A70':
        rows = []
        for r in range(4):
            base = r * 20
            cmds = [f'{{ 0x{le(bs[base+o:base+o+2]):X}, 0x{le(bs[base+o+2:base+o+4]):X} }}' for o in range(0, 20, 4)]
            rows.append('    { ' + ', '.join(cmds) + ' }')
        return f'const MovementScriptCommand {name}[][5] = {{\n' + ',\n'.join(rows) + ',\n};'
    if name == 'ov02_022535E4':
        n = len(bs) // 20
        rows = []
        for i in range(n):
            e = bs[i*20:(i+1)*20]
            rows.append(f'    {{ {fxhex(e[0:4])}, {fxhex(e[4:8])}, {fxhex(e[8:12])}, (void *)0x{le(e[12:16]):X}, 0x{le(e[16:20]):X} }}')
        return f'const ov02_A9D8Entry {name}[] = {{\n' + ',\n'.join(rows) + ',\n};'
    if name == 'ov02_022536E8':
        return f'const ov02_BF58Cfg {name} = {{ 0x{le(bs[0:4]):X}, 0x{le(bs[4:8]):X} }};'
    if name == 'ov02_02253A5C':
        v = [f'0x{le(bs[o:o+4]):X}' for o in range(0, 20, 4)]
        return f'const ov02_FieldList5 {name} = {{ {{ ' + ', '.join(v) + ' } };'
    raise SystemExit(f'no strategy for {name}')

if __name__ == '__main__':
    syms, order = parse()
    if len(sys.argv) > 1 and sys.argv[1] == 'emit':
        print('// ==== rodata-only forward externs (referenced only from other rodata) ====')
        for n in RODATA_ONLY:
            print(f'extern ov02_StateMachineFunc const {n}[];')
        print('extern void sub_02068DD0(void);')
        print('extern void sub_02068DD4(void);')
        print()
        # D94/D98 (and DDC/DE0) are disassembler-split mid-array addresses; merge
        # them into the D90 (and DD8) VecFx32[6] arrays.
        MERGE = {
            'ov02_02253D90': ['ov02_02253D90', 'ov02_02253D94', 'ov02_02253D98'],
            'ov02_02253DD8': ['ov02_02253DD8', 'ov02_02253DDC', 'ov02_02253DE0'],
        }
        for n in order:
            if n in SKIP:
                continue
            if n in MERGE:
                bs, rel = [], {}
                for part in MERGE[n]:
                    pb, _ = to_bytes(syms[part]['toks'])
                    bs += pb
            else:
                bs, rel = to_bytes(syms[n]['toks'])
            print(emit_symbol(n, bs, rel))
        sys.exit(0)
    # quick dump
    want = sys.argv[1] if len(sys.argv) > 1 else None
    for n in order:
        bs, rel = to_bytes(syms[n]['toks'])
        if want and want not in n:
            continue
        seg = 'data' if syms[n]['data'] else 'rodata'
        print(f'{n} [{seg}] {len(bs)}B relocs={list(rel.items())}')
