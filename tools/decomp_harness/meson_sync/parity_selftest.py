#!/usr/bin/env python3
"""Mutation tests for parity.py: cosmetic changes must pass, real ones must fail.
Usage: parity_selftest.py OBJ.o   (a C object with anonymous @locals and relocs)"""
import os, re, struct, subprocess, sys, tempfile
here = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, here)
import parity

src = sys.argv[1]
base = open(src, 'rb').read()
o = parity.Obj(src)
sh = o.sh
symtab = next(s for s in sh if s[1] == parity.SHT_SYMTAB)
strtab = sh[symtab[6]]
syms = o.symbols()
text_i = next(i for i, n in enumerate(o.names) if n == '.text')
rela = next(s for s in sh if s[1] in (parity.SHT_RELA, parity.SHT_REL) and o.alloc(s[7]))
anon = [(k, s) for k, s in enumerate(syms) if re.fullmatch(r'@\d+', s[0]) and s[3] == 0]
und = [(k, s) for k, s in enumerate(syms) if s[5] == 0 and s[3] == 1 and len(s[0]) > 3]
assert anon and und, 'need an object with anonymous locals and undefined globals'

def sym_off(k):          # file offset of symbol k's entry
    return symtab[4] + k * 16

def name_off(k):
    return strtab[4] + struct.unpack_from('<I', base, sym_off(k))[0]

def mutate(fn):
    d = bytearray(base); fn(d); return bytes(d)

def rename(d, k, new):
    off = name_off(k); old = syms[k][0]
    assert len(new) == len(old) and new != old
    d[off:off + len(old)] = new.encode()

k_a, s_a = anon[0]
k_u, s_u = und[0]
renamed_u = s_u[0][:-1] + ('Z' if s_u[0][-1] != 'Z' else 'Y')
cases = [
    # (label, mutated bytes, sym_map, expect_equal)
    ('anonymous local renumbered', mutate(lambda d: rename(d, k_a, '@' + str(int(s_a[0][1:]) + 1).zfill(len(s_a[0]) - 1)[-(len(s_a[0]) - 1):])), {}, True),
    ('debug section byte changed', mutate(lambda d: d.__setitem__(sh[o.names.index('.debug_line')][4] + 8, d[sh[o.names.index('.debug_line')][4] + 8] ^ 1)), {}, True),
    ('.text byte flipped', mutate(lambda d: d.__setitem__(sh[text_i][4], d[sh[text_i][4]] ^ 0xFF)), {}, False),
    ('reloc offset moved', mutate(lambda d: struct.pack_into('<I', d, rela[4], struct.unpack_from('<I', d, rela[4])[0] + 2)), {}, False),
    ('anonymous local value moved', mutate(lambda d: struct.pack_into('<I', d, sym_off(k_a) + 4, s_a[1] + 4)), {}, False),
    ('global renamed, no sym_map', mutate(lambda d: rename(d, k_u, renamed_u)), {}, False),
    ('global renamed, with sym_map', mutate(lambda d: rename(d, k_u, renamed_u)), {s_u[0]: renamed_u}, True),
]
fails = 0
with tempfile.TemporaryDirectory() as t:
    for label, data, smap, want in cases:
        p = os.path.join(t, 'm.o'); open(p, 'wb').write(data)
        assert data != base, label
        hard, _ = parity.compare(src, p, smap)
        ok = (not hard) == want
        fails += not ok
        print(f'{"ok  " if ok else "FAIL"} {label}: {"equal" if not hard else "DIFF " + hard[0]}')
print(f'{len(cases) - fails}/{len(cases)} passed')
sys.exit(1 if fails else 0)
