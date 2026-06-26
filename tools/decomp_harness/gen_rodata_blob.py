#!/usr/bin/env python3
"""Emit the overlay_02_02248728 rodata/.data as ONE const aggregate each, to beat
MWCC's -O4 .rodata size-sort (separate const objects get bucketed by size; a
single struct keeps fields in declaration = address order). Individual symbol
names are restored via #define macros so no function body changes.

Emits:
  - struct ov02_Rodata { ... } in address order  + `static const ov02_Rodata ov02_rodata = {...};`
  - struct ov02_Data   { ... }                    + `static ov02_Data ov02_data = {...};`
  - #define ov02_0225XXXX (ov02_rodata.fXXXX) / (ov02_data.fXXXX)
"""
import sys
sys.path.insert(0, 'tools/decomp_harness')
import gen_rodata as G
from gen_rodata import (parse, to_bytes, le, fxhex,
    VEC_SCALARS, SMFUNC, SMFUNC_PTR, FIELDTASK, F3DTT, MOVEMENT, U16, FX32, U8,
    ANIMDISP, LAUNCH)

ROBASE = 0x022532F8
# rodata symbols that live in .data (separate non-const aggregate)
DATA_SYMS = ['ov02_02253D90', 'ov02_02253DD8']
# disassembler-split / merged-away addresses (not their own fields)
MERGED = {'ov02_02253D90': ['ov02_02253D90','ov02_02253D94','ov02_02253D98'],
          'ov02_02253DD8': ['ov02_02253DD8','ov02_02253DDC','ov02_02253DE0']}
SKIP_FIELDS = ['ov02_02253D94','ov02_02253D98','ov02_02253DDC','ov02_02253DE0','_02253E20']

def fld(name):  # field identifier from symbol name
    return 'f' + name.split('_')[-1]

def is_rodata_sym(sym):
    s = sym.split('_')[-1]
    try:
        return sym.startswith('ov02_0225') and int(s, 16) >= ROBASE
    except ValueError:
        return False

# asm-referenced rodata fields: NOT macro'd (inline asm uses =sRodata+offset)
ASM_REF = ['ov02_022538EC', 'ov02_02253A4C']

def ref(sym):
    """how to reference another symbol from inside an initializer"""
    a = int(sym.split('_')[-1], 16)
    if sym in DATA_SYMS or a >= 0x02253D90:
        return f'sData.{fld(sym)}'
    if is_rodata_sym(sym):
        return f'sRodata.{fld(sym)}'
    return sym  # a function or extern (e.g. ov02_0224xxxx, sub_xxx)

def words(bs, rel, etype):
    out = []
    for o in range(0, len(bs), 4):
        if o in rel:
            out.append(f'({etype}){ref(rel[o])}')
        else:
            out.append(f'({etype})0x{le(bs[o:o+4]):X}')
    return out

def decl_and_init(name, bs, rel):
    """return (field_decl_without_semicolon, initializer_expr)"""
    n = fld(name)
    if name in VEC_SCALARS or name == 'ov02_02253B24' or name == 'ov02_02253B30':
        return f'VecFx32 {n}', f'{{ {fxhex(bs[0:4])}, {fxhex(bs[4:8])}, {fxhex(bs[8:12])} }}'
    if name in U16:
        v = ', '.join(f'0x{le(bs[i:i+2]):04X}' for i in range(0,len(bs),2))
        return f'u16 {n}[{len(bs)//2}]', f'{{ {v} }}'
    if name == 'ov02_02253AC0':
        v = ', '.join(f'0x{le(bs[i:i+4]):08X}' for i in range(0,len(bs),4))
        return f'u32 {n}[{len(bs)//4}]', f'{{ {v} }}'
    if name in FX32:
        v = ', '.join(fxhex(bs[i:i+4]) for i in range(0,len(bs),4))
        return f'fx32 {n}[{len(bs)//4}]', f'{{ {v} }}'
    if name in U8 or name == 'ov02_02253A54':
        v = ', '.join(f'0x{b:02X}' for b in bs)
        return f'u8 {n}[{len(bs)}]', f'{{ {v} }}'
    if name in SMFUNC:
        return f'ov02_StateMachineFunc {n}[{len(bs)//4}]', '{ ' + ', '.join(words(bs,rel,'ov02_StateMachineFunc')) + ' }'
    if name in SMFUNC_PTR:
        return f'ov02_StateMachineFunc *{n}[{len(bs)//4}]', '{ ' + ', '.join(words(bs,rel,'ov02_StateMachineFunc *')) + ' }'
    if name in FIELDTASK:
        return f'ov02_FieldTaskFunc {n}[{len(bs)//4}]', '{ ' + ', '.join(words(bs,rel,'ov02_FieldTaskFunc')) + ' }'
    if name in ANIMDISP:
        return f'ov02_AnimDispatchFunc {n}[{len(bs)//4}]', '{ ' + ', '.join(words(bs,rel,'ov02_AnimDispatchFunc')) + ' }'
    if name == 'ov02_02253A1C':
        return f'ov02_CreateDispatchFunc {n}[{len(bs)//4}]', '{ ' + ', '.join(words(bs,rel,'ov02_CreateDispatchFunc')) + ' }'
    if name in LAUNCH:
        prio = le(bs[0:4])
        f = [(f'(void *){ref(rel[o])}' if o in rel else f'(void *)0x{le(bs[o:o+4]):X}') for o in (4,8,12,16)]
        return f'ov02_LaunchTemplate {n}', f'{{ 0x{prio:X}, {f[0]}, {f[1]}, {f[2]}, {f[3]} }}'
    if name in F3DTT:
        prio = le(bs[0:4]); dsize = le(bs[4:6])
        f = [f'(Field3dObjectTaskFunc){ref(rel[o])}' for o in (8,12,16,20)]
        return f'Field3dObjectTaskTemplate {n}', f'{{ 0x{prio:X}, 0x{dsize:X}, {f[0]}, {f[1]}, {f[2]}, {f[3]} }}'
    if name in MOVEMENT:
        c = ', '.join(f'{{ 0x{le(bs[o:o+2]):X}, 0x{le(bs[o+2:o+4]):X} }}' for o in range(0,len(bs),4))
        return f'MovementScriptCommand {n}[{len(bs)//4}]', f'{{ {c} }}'
    if name == 'ov02_02253A70':
        rows = []
        for r in range(4):
            b = r*20
            c = ', '.join(f'{{ 0x{le(bs[b+o:b+o+2]):X}, 0x{le(bs[b+o+2:b+o+4]):X} }}' for o in range(0,20,4))
            rows.append(f'{{ {c} }}')
        return f'MovementScriptCommand {n}[4][5]', '{ ' + ', '.join(rows) + ' }'
    if name == 'ov02_022535E4':
        ne = len(bs)//20; rows=[]
        for i in range(ne):
            e=bs[i*20:(i+1)*20]
            rows.append(f'{{ {fxhex(e[0:4])}, {fxhex(e[4:8])}, {fxhex(e[8:12])}, (void *)0x{le(e[12:16]):X}, 0x{le(e[16:20]):X} }}')
        return f'ov02_A9D8Entry {n}[{ne}]', '{ ' + ', '.join(rows) + ' }'
    if name == 'ov02_022536E8':
        return f'ov02_BF58Cfg {n}', f'{{ 0x{le(bs[0:4]):X}, 0x{le(bs[4:8]):X} }}'
    if name == 'ov02_02253A5C':
        v = ', '.join(f'0x{le(bs[o:o+4]):X}' for o in range(0,20,4))
        return f'ov02_FieldList5 {n}', f'{{ {{ {v} }} }}'
    raise SystemExit(f'no field strategy for {name}')

if __name__ == '__main__':
    syms, order = parse()
    # build the address-ordered field list for .rodata (exclude data + merged)
    rod = [n for n in order if n not in DATA_SYMS and n not in SKIP_FIELDS]
    # ensure A54 present (it's a real named rodata symbol; was SKIP in flat mode)
    rod.sort(key=lambda n: int(n.split('_')[-1], 16))

    # ---- the .rodata aggregate (single const object; fields in address order) ----
    print('// Consolidated rodata: ONE const object so MWCC -O4 cannot size-sort it')
    print('// (separate const objects get bucketed by size). Field order = address')
    print('// order. Individual symbol names restored via #define below. The two')
    print('// asm-referenced fields (f022538EC, f02253A4C) are reached from inline')
    print('// asm via `=sRodata+offset` instead of a macro.')
    print('static const struct {')
    for n in rod:
        bs, rel = to_bytes(syms[n]['toks'])
        d, _ = decl_and_init(n, bs, rel)
        print(f'    {d};')
    print('} sRodata = {')
    for n in rod:
        bs, rel = to_bytes(syms[n]['toks'])
        _, init = decl_and_init(n, bs, rel)
        print(f'    {init},  // {n}')
    print('};\n')

    # ---- the .data aggregate (non-const) ----
    print('static struct {')
    for n in DATA_SYMS:
        print(f'    VecFx32 {fld(n)}[6];')
    print('} sData = {')
    for n in DATA_SYMS:
        bs = []
        for part in MERGED[n]:
            pb,_ = to_bytes(syms[part]['toks']); bs += pb
        elems = [f'{{ {fxhex(bs[i*12:i*12+4])}, {fxhex(bs[i*12+4:i*12+8])}, {fxhex(bs[i*12+8:i*12+12])} }}' for i in range(6)]
        print(f'    {{ ' + ', '.join(elems) + f' }},  // {n}')
    print('};\n')

    # ---- macros restoring the individual symbol names (skip asm-referenced) ----
    for n in rod:
        if n in ASM_REF:
            off = int(n.split('_')[-1],16) - ROBASE
            print(f'// {n} -> sRodata+0x{off:X} (referenced from inline asm)')
            continue
        print(f'#define {n} (sRodata.{fld(n)})')
    for n in DATA_SYMS:
        print(f'#define {n} (sData.{fld(n)})')
