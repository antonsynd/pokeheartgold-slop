#!/usr/bin/env python3
"""Verify src .o rodata/.data bytes against the asm .o WITHOUT flipping main.lsf.
The asm .o has a single .rodata/.data laid out in retail order; index it by each
src symbol's RETAIL ADDRESS (from its name). The src .o splits .rodata into
multiple instances, so resolve each symbol to its exact section via readelf
section index. Pointer words are 0 in both .o's (relocated at link) -> compared
equal; their targets are correct by construction.
"""
import re, subprocess

ASM = 'build/heartgold.us/asm/overlay_02_02248728.o'
SRC = 'build/heartgold.us/src/overlay_02_02248728.o'
READELF = 'arm-none-eabi-readelf'
OD = 'arm-none-eabi-objdump'
ROBASE = 0x022532F8
DBASE  = 0x02253D90

def asm_blob(o, want):
    out = subprocess.run([OD, '-s', '-j', want, o], capture_output=True, text=True).stdout
    data = {}
    for l in out.splitlines():
        m = re.match(r'^\s*([0-9a-f]+)\s+((?:[0-9a-f]{2,8}\s){1,4})', l)
        if m:
            base = int(m.group(1), 16)
            hexs = m.group(2).replace(' ', '')
            for i in range(0, len(hexs), 2):
                data[base + i//2] = int(hexs[i:i+2], 16)
    return data

def readelf_syms(o):
    out = subprocess.run([READELF, '-sW', o], capture_output=True, text=True).stdout
    syms = {}
    for l in out.splitlines():
        # Num: Value Size Type Bind Vis Ndx Name
        m = re.match(r'\s*\d+:\s+([0-9a-f]+)\s+(\d+)\s+OBJECT\s+\S+\s+\S+\s+(\d+)\s+(\S+)', l)
        if m:
            syms[m.group(4)] = (int(m.group(1),16), int(m.group(2)), int(m.group(3)))
    return syms

def readelf_hex(o, ndx):
    """bytes of section index ndx -> {offset: byte}"""
    out = subprocess.run([READELF, '-x', str(ndx), o], capture_output=True, text=True).stdout
    data = {}
    for l in out.splitlines():
        m = re.match(r'^\s*0x([0-9a-f]+)\s+((?:[0-9a-f]{2,8}\s?){1,4})', l)
        if m:
            base = int(m.group(1), 16)
            hexs = ''.join(m.group(2).split())
            for i in range(0, len(hexs), 2):
                data[base + i//2] = int(hexs[i:i+2], 16)
    return data

if __name__ == '__main__':
    asm_ro = asm_blob(ASM, '.rodata')
    asm_da = asm_blob(ASM, '.data')
    syms = readelf_syms(SRC)
    names = [n for n in syms if n.startswith('ov02_0225') and int(n.split('_')[-1],16) >= ROBASE]
    names.sort(key=lambda n: int(n.split('_')[-1],16))
    seccache = {}
    ok=bad=0
    for n in names:
        val, size, ndx = syms[n]
        if ndx not in seccache:
            seccache[ndx] = readelf_hex(SRC, ndx)
        sb = [seccache[ndx].get(val+i) for i in range(size)]
        addr = int(n.split('_')[-1], 16)
        is_data = (addr >= DBASE)
        base = DBASE if is_data else ROBASE
        blob = asm_da if is_data else asm_ro
        exp = [blob.get(addr - base + i) for i in range(size)]
        diff = [(i, exp[i], sb[i]) for i in range(size)
                if exp[i] != sb[i] and not (sb[i] == 0 and (exp[i] in (0, None)))]
        if not diff:
            ok += 1
        else:
            bad += 1
            print(f'MISMATCH {n} @0x{addr:08X} [{size}B] ndx={ndx}')
            for i,e,s in diff[:10]:
                es = f'0x{e:02X}' if e is not None else 'None'
                ss = f'0x{s:02X}' if s is not None else 'None'
                print(f'    +{i}: asm={es} src={ss}')
    print(f'\n=== {ok}/{len(names)} named rodata/.data symbols byte-match; {bad} BAD ===')
