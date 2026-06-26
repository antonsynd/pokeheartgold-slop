#!/usr/bin/env python3
"""Address-sort the top-level function definitions in src/overlay_02_02248728.c
so the src .o lays out .text in retail order (required before flipping to src).

Safety: splits the function region into contiguous units, ASSERTS that
re-joining the units in original order reproduces the file byte-for-byte, then
reorders units by retail address. The sort only permutes units; it never edits
their contents.
"""
import re, sys, subprocess

C = 'src/overlay_02_02248728.c'
S = 'asm/overlay_02_02248728.s'

def name_addr_map():
    """function name -> retail address, from thumb/arm_func_start in the .s"""
    m = {}
    for l in open(S):
        mm = re.match(r'\s*(?:thumb|arm)_func_start\s+(\S+)', l)
        if mm:
            # address from the label line that follows is encoded in name if ov02_;
            # else read the '; 0x...' on the label. Simpler: scan for 'name: ; 0xADDR'
            pass
    # robust: parse "NAME: ; 0xADDR" or derive from ov02_ name
    text = open(S).read().splitlines()
    for i, l in enumerate(text):
        mm = re.match(r'^(\w+): ; 0x([0-9A-Fa-f]+)', l)
        if mm:
            m[mm.group(1)] = int(mm.group(2), 16)
    # also map ov02_ names directly from their hex suffix
    return m

def strip_comments_for_braces(line):
    """remove // comments and char/string contents so brace counting is clean"""
    out = []
    i = 0
    in_s = in_c = False
    while i < len(line):
        ch = line[i]
        nx = line[i+1] if i+1 < len(line) else ''
        if not in_s and not in_c and ch == '/' and nx == '/':
            break
        if not in_c and ch == '"' and not in_s:
            in_s = True; i += 1; continue
        if in_s:
            if ch == '\\': i += 2; continue
            if ch == '"': in_s = False
            i += 1; continue
        if not in_s and ch == "'" and not in_c:
            in_c = True; i += 1; continue
        if in_c:
            if ch == '\\': i += 2; continue
            if ch == "'": in_c = False
            i += 1; continue
        out.append(ch); i += 1
    return ''.join(out)

HEADER = re.compile(r'^(?:WIP_LOCAL\s+|static\s+|asm\s+)?[A-Za-z_].*\)\s*\{?\s*$')

def split_units(region):
    """region: list of lines (the function region). Return list of units, each a
    list of lines, contiguous (concatenation == region)."""
    units = []
    cur = []
    depth = 0
    ifdef = 0
    i = 0
    n = len(region)
    while i < n:
        line = region[i]
        cur.append(line)
        code = strip_comments_for_braces(line)
        st = line.strip()
        if st.startswith('#if'):
            ifdef += 1
        elif st.startswith('#endif'):
            ifdef -= 1
        depth += code.count('{') - code.count('}')
        # a unit closes when we're back to depth 0, not inside any #ifdef, and the
        # next line starts a fresh unit (or trailing clang-format/#endif consumed).
        if depth == 0 and ifdef == 0:
            # consume trailing decoration lines that belong to this unit
            j = i + 1
            while j < n:
                t = region[j].strip()
                if t == '' or t.startswith('// clang-format on') or t.startswith('#endif'):
                    # blank lines: only absorb a single trailing blank as separator
                    if t == '':
                        break
                    cur.append(region[j]); j = i = j
                    j += 1
                else:
                    break
            # only cut if we actually opened a body (avoid splitting stray lines)
            if any('{' in strip_comments_for_braces(x) for x in cur):
                units.append(cur); cur = []
        i += 1
    if cur:
        if units:
            units[-1].extend(cur)
        else:
            units.append(cur)
    return units

def unit_addr(unit, namemap):
    for line in unit:
        # find a function-definition header with a name
        m = re.match(r'^(?:WIP_LOCAL\s+|static\s+|asm\s+)?[\w \*]+?\b([A-Za-z_]\w*)\s*\([^;]*\)\s*\{?\s*$', line)
        if m:
            nm = m.group(1)
            mm = re.match(r'ov02_([0-9A-Fa-f]{8})$', nm)
            if mm:
                return int(mm.group(1), 16), nm
            if nm in namemap:
                return namemap[nm], nm
    return None, None

if __name__ == '__main__':
    lines = open(C).read().split('\n')
    # locate region boundaries
    func_start = next(i for i,l in enumerate(lines) if re.match(r'^WIP_LOCAL int ov02_022493EC\(void\) \{', l))
    rodata_start = next(i for i,l in enumerate(lines) if 'rodata / .data definitions' in l)
    # back up rodata_start to include its leading separator comment + blank line
    rb = rodata_start
    while rb > 0 and (lines[rb-1].startswith('// ==') or lines[rb-1] == ''):
        rb -= 1
    pre = lines[:func_start]
    region = lines[func_start:rb]
    post = lines[rb:]

    units = split_units(region)
    # SAFETY: round-trip identity
    rejoined = [l for u in units for l in u]
    assert rejoined == region, f'ROUND-TRIP FAILED: {len(rejoined)} vs {len(region)} lines'

    namemap = name_addr_map()
    keyed = []
    unknown = []
    for u in units:
        a, nm = unit_addr(u, namemap)
        if a is None:
            unknown.append(u)
        keyed.append((a, nm, u))

    if '--check' in sys.argv:
        print(f'units={len(units)} round-trip OK')
        print(f'unknown-addr units: {sum(1 for a,_,_ in keyed if a is None)}')
        for a,nm,u in keyed:
            if a is None:
                print('  UNKNOWN unit, first line:', u[0][:80])
        # show address order stats
        addrs = [a for a,_,_ in keyed if a is not None]
        print(f'addressed units: {len(addrs)}, sorted={addrs==sorted(addrs)}')
        sys.exit(0)

    # stable sort by address; units with no address keep relative position by
    # attaching to the previous addressed unit (shouldn't happen for real funcs)
    assert all(a is not None for a,_,_ in keyed), 'some units have no address; run --check'
    keyed.sort(key=lambda t: t[0])
    new_region = [l for _,_,u in keyed for l in u]
    out = pre + new_region + post
    open(C, 'w').write('\n'.join(out))
    print(f'sorted {len(units)} units by address; wrote {C}')
