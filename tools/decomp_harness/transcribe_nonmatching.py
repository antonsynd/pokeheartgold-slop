#!/usr/bin/env python3
"""Transcribe a function from asm/<file>.s into a NONMATCHING inline-asm block
(`asm <rettype> name(args) { ... }`) for finalization flip-to-src.

Handles: literal-pool folding (ldr rN,_lbl + _lbl:.word X  ->  ldr rN,=X),
bare [rN] -> [rN, #0], .balign removal, jump-table data -> lsl-encoded
instructions (read from the assembled .o so bytes are exact).

Usage: transcribe_nonmatching.py <ASM_S> <ASM_O> <func> [--sig 'asm void f(int a)']
Prints the inline-asm block to stdout; prints referenced extern symbols to stderr.
"""
import re, sys, subprocess, argparse

def func_body(s_path, func):
    lines = open(s_path).read().splitlines()
    out, grab = [], False
    for l in lines:
        if re.match(rf'\s*(?:thumb|arm)_func_start {re.escape(func)}\b', l):
            grab = True; continue
        if grab and re.match(r'\s*(?:thumb|arm)_func_end', l):
            break
        if grab:
            out.append(l)
    return out

def objdump_func(o_path, func):
    out = subprocess.run(['arm-none-eabi-objdump', '-d', o_path],
                         capture_output=True, text=True).stdout.splitlines()
    body, grab = [], False
    for l in out:
        m = re.match(r'^[0-9a-f]+ <([A-Za-z_]\w*)>:', l)
        if m:
            grab = (m.group(1) == func); continue
        if grab:
            if re.match(r'^[0-9a-f]+ <', l): break
            body.append(l)
    return body

def hw_to_instr(o_body, addr):
    """Find the objdump instruction-disassembly for the 2 bytes at file addr by
    re-disassembling. We instead pull the mnemonic objdump already produced when
    the bytes decode as code; for $d data we synthesize via a fresh disasm."""
    return None

def transcribe(s_path, o_path, func):
    body = func_body(s_path, func)
    # 1. map literal labels -> value:  "_LBL: .word VALUE"
    litmap = {}
    for l in body:
        m = re.match(r'\s*(_\w+):\s*\.word\s+(.+?)\s*$', l)
        if m:
            litmap[m.group(1)] = m.group(2).strip()
    # 2. collect jump-table label sets (lines after "; jump table")
    # We will replace any ".short/.word" data lines with lsl-encoded instrs from the .o.
    # Build address->halfword map from objdump data lines of this func.
    odis = objdump_func(o_path, func)
    # map of (data value lines) by reading objdump ".short"/".word" entries -> raw halfwords
    table_hws = []  # list of 16-bit ints, in order, for the data region
    for l in odis:
        m = re.match(r'\s*[0-9a-f]+:\s+([0-9a-f ]+?)\s+\.(short|word)\s', l)
        if m:
            hexs = m.group(1).split()
            # bytes are little-endian per halfword; objdump groups as 2 or 4 byte
            b = [int(x, 16) for x in hexs]
            for i in range(0, len(b), 2):
                if i+1 < len(b):
                    table_hws.append(b[i] | (b[i+1] << 8))
                else:
                    table_hws.append(b[i])
    # disassemble those halfwords as Thumb instructions for the inline encoding
    tbl_instr = thumb_decode(table_hws) if table_hws else []

    refs = set()
    asm_lines = []
    ti = 0
    for l in body:
        s = l.strip()
        if not s or s.startswith(';'):
            continue
        # drop the function label and address-comment line
        if re.match(rf'{re.escape(func)}:', s):
            continue
        # drop literal pool definitions (folded into =VALUE)
        if re.match(r'_\w+:\s*\.word', s):
            continue
        # drop .balign
        if s.startswith('.balign'):
            continue
        # jump-table marker + its .short/.word entries -> replace with decoded instrs once
        if '; jump table' in l or re.match(r'\s*\.(short|word)\b', l):
            if tbl_instr:
                for ins in tbl_instr:
                    asm_lines.append('    ' + ins)
                tbl_instr = []  # only emit once at the first table; multi-table funcs need care
            continue
        # strip trailing "; comment"
        s = re.sub(r'\s*;.*$', '', s).strip()
        if not s:
            continue
        # label line (e.g. _0224XXXX:)
        if re.match(r'^_\w+:$', s):
            asm_lines.append(s)
            continue
        # fold literal load:  ldr rN, _LBL   ->  ldr rN, =VALUE
        m = re.match(r'(ldr\s+\w+,\s*)(_\w+)$', s)
        if m and m.group(2) in litmap:
            val = litmap[m.group(2)]
            s = f'{m.group(1)}={val}'
            if re.match(r'^[A-Za-z_]\w*$', val):
                refs.add(val)
        # bare [rN] -> [rN, #0]
        s = re.sub(r'\[(\w+)\]', r'[\1, #0]', s)
        # collect bl targets
        bm = re.match(r'(?:bl|blx)\s+([A-Za-z_]\w*)', s)
        if bm:
            refs.add(bm.group(1))
        asm_lines.append('    ' + s)
    return asm_lines, sorted(refs)

# Minimal Thumb halfword decoder for the jump-table data region.
# These data halfwords almost always fall in the LSL/MOV(reg) encoding space
# (0x0000-0x1fff). Decode to the exact instruction objdump would show.
def thumb_decode(hws):
    out = []
    for h in hws:
        out.append(decode_one(h))
    return out

def decode_one(h):
    # Format 1: 000 op(2) imm5 rm(3) rd(3)  (LSL/LSR/ASR)
    top = (h >> 11) & 0x1f
    if (h >> 13) == 0b000 and ((h >> 11) & 0b11) != 0b11:
        op = (h >> 11) & 0b11
        imm5 = (h >> 6) & 0x1f
        rm = (h >> 3) & 7
        rd = h & 7
        mn = ['lsls', 'lsrs', 'asrs'][op]
        if op == 0 and imm5 == 0:
            return f'movs r{rd}, r{rm}'  # lsls rd,rm,#0 == movs
        return f'{mn} r{rd}, r{rm}, #{imm5}'
    # Format 2: 00011 I op rn/imm3 rm rd (ADD/SUB)
    if (h >> 11) == 0b00011:
        I = (h >> 10) & 1; op = (h >> 9) & 1
        v = (h >> 6) & 7; rm = (h >> 3) & 7; rd = h & 7
        mn = 'subs' if op else 'adds'
        if I:
            return f'{mn} r{rd}, r{rm}, #{v}'
        return f'{mn} r{rd}, r{rm}, r{v}'
    # Fallback: emit a .word-equivalent via two movs is unsafe; raise.
    raise SystemExit(f'decode_one: unhandled halfword 0x{h:04x} — extend decoder')

if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('s'); ap.add_argument('o'); ap.add_argument('func')
    a = ap.parse_args()
    lines, refs = transcribe(a.s, a.o, a.func)
    print('\n'.join(lines))
    sys.stderr.write('REFS: ' + ' '.join(refs) + '\n')
