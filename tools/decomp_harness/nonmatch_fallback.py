#!/usr/bin/env python3
"""One-command NONMATCHING inline-asm fallback generator.

Transcribes a function from asm/<file>.s into a complete, paste-ready
`#ifdef NONMATCHING` block: a C-documentation stub under NONMATCHING and the
hand-written `asm <sig> { ... }` variant under #else, wrapped in
`// clang-format off/on`, preceded by the extern decls the inline asm needs to
assemble.

Handles:
  - literal-pool folding      (ldr rN,_lbl + _lbl:.word X  ->  ldr rN,=X)
  - bare offset fixup         ([rN] -> [rN, #0])
  - .balign removal           (unsupported in MWCC inline asm)
  - jump tables -> lsl-encoded instructions read from the assembled .o so the
    bytes are exact; supports MULTIPLE tables per function (each table's data
    directives consume halfwords sequentially from the .o's data region).
  - extern decls for referenced symbols, with real prototypes for the
    compiler-rt runtime helpers (the `_s32_div_f` undefined-label gotcha:
    symbols referenced by the asm must be visible or the inline asm fails to
    assemble).

Signature source priority: include/*.h -> knowledge.json -> --sig.

Usage:
  nonmatch_fallback.py <ASM_S> <ASM_O> <func> [--sig 'void f(int a)']

Prints the complete block to stdout; prints resolved sig/refs to stderr.
"""
import re, sys, os, json, subprocess, argparse

REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))

# compiler-rt / MWCC runtime helpers referenced by name in Thumb asm. These are
# undefined labels to the inline assembler unless a C declaration makes the
# symbol visible, so we always emit a real prototype for them.
RT_PROTOS = {
    '_s32_div_f':  'extern int _s32_div_f(int numer, int denom);',
    '_u32_div_f':  'extern unsigned int _u32_div_f(unsigned int numer, unsigned int denom);',
    '_s32_mod_f':  'extern int _s32_mod_f(int numer, int denom);',
    '_u32_mod_f':  'extern unsigned int _u32_mod_f(unsigned int numer, unsigned int denom);',
    '_ll_mul':     'extern long long _ll_mul(long long a, long long b);',
    '_ll_sdiv':    'extern long long _ll_sdiv(long long numer, long long denom);',
    '_ll_udiv':    'extern unsigned long long _ll_udiv(unsigned long long numer, unsigned long long denom);',
    '_ll_mod':     'extern long long _ll_mod(long long numer, long long denom);',
    '_ll_umod':    'extern unsigned long long _ll_umod(unsigned long long numer, unsigned long long denom);',
    '_ll_shl':     'extern long long _ll_shl(long long v, int n);',
    '_ll_shr':     'extern long long _ll_shr(long long v, int n);',
    '_ll_ushr':    'extern unsigned long long _ll_ushr(unsigned long long v, int n);',
}


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


def is_static(s_path, func):
    """A function is static iff it is NOT declared .public in the .inc."""
    base = os.path.basename(s_path)
    if base.endswith('.s'):
        base = base[:-2]
    inc = os.path.join(os.path.dirname(s_path), 'include', base + '.inc')
    if not os.path.exists(inc):
        inc = os.path.join(REPO_ROOT, 'asm', 'include', base + '.inc')
    if os.path.exists(inc):
        for l in open(inc):
            if re.match(rf'\s*\.public\s+{re.escape(func)}\b', l):
                return False
        return True
    return None  # unknown


def sig_from_headers(func):
    inc_dir = os.path.join(REPO_ROOT, 'include')
    pat = re.compile(rf'^\s*([A-Za-z_][\w\s\*]*?\b{re.escape(func)}\s*\([^;{{]*\))\s*;')
    for root, _, files in os.walk(inc_dir):
        for fn in files:
            if not fn.endswith('.h'):
                continue
            try:
                for l in open(os.path.join(root, fn)):
                    m = pat.match(l)
                    if m:
                        return re.sub(r'\s+', ' ', m.group(1)).strip()
            except OSError:
                pass
    return None


def sig_from_knowledge(func):
    kj = os.path.join(os.path.dirname(__file__), 'knowledge.json')
    if not os.path.exists(kj):
        return None
    try:
        d = json.load(open(kj))
    except (OSError, ValueError):
        return None
    sym = d.get('symbols', {}).get(func)
    if sym and sym.get('known_prototype'):
        return sym['known_prototype'].strip()
    return None


def resolve_sig(func, cli_sig):
    """include/*.h -> knowledge.json -> --sig."""
    for src, val in (('include/*.h', sig_from_headers(func)),
                     ('knowledge.json', sig_from_knowledge(func)),
                     ('--sig', cli_sig)):
        if val:
            return val.strip().rstrip(';').strip(), src
    return None, None


# Minimal Thumb halfword decoder for jump-table data. The data halfwords are
# PC-relative case offsets; re-encoding each as the instruction objdump would
# show (typically LSL/ADD in the 0x0000-0x1fff space) makes the inline
# assembler reproduce the exact same bytes. Anything outside the decodable
# space falls back to a named `.hword` directive rather than crashing.
def decode_one(h):
    # MWCC inline asm uses PRE-UAL mnemonics (no 's' suffix); `movs rd,rm` is
    # rejected -> use `lsl rd,rm,#0`.
    # Format 1: 000 op(2) imm5 rm(3) rd(3)  (LSL/LSR/ASR)
    if (h >> 13) == 0b000 and ((h >> 11) & 0b11) != 0b11:
        op = (h >> 11) & 0b11
        imm5 = (h >> 6) & 0x1f
        rm = (h >> 3) & 7
        rd = h & 7
        mn = ['lsl', 'lsr', 'asr'][op]
        return f'{mn} r{rd}, r{rm}, #{imm5}'
    # Format 2: 00011 I op rn/imm3 rm rd (ADD/SUB register or 3-bit imm)
    if (h >> 11) == 0b00011:
        I = (h >> 10) & 1; op = (h >> 9) & 1
        v = (h >> 6) & 7; rm = (h >> 3) & 7; rd = h & 7
        mn = 'sub' if op else 'add'
        if I:
            return f'{mn} r{rd}, r{rm}, #{v}'
        return f'{mn} r{rd}, r{rm}, r{v}'
    # Format 3: 001 op(2) rd(3) imm8 (MOV/CMP/ADD/SUB immediate)
    if (h >> 13) == 0b001:
        op = (h >> 11) & 0b11
        rd = (h >> 8) & 7
        imm8 = h & 0xff
        mn = ['mov', 'cmp', 'add', 'sub'][op]
        return f'{mn} r{rd}, #{imm8}'
    # Named-halfword fallback: emit the raw halfword so generation never aborts;
    # the operator must confirm the assembler accepts it (or hand-encode an
    # equivalent instruction).
    sys.stderr.write(f'WARN: jump-table halfword 0x{h:04x} not decodable as an '
                     f'instruction; emitted `.hword 0x{h:04x}` — verify.\n')
    return f'.hword 0x{h:04x}'


def transcribe(s_path, o_path, func):
    body = func_body(s_path, func)
    # 1. map literal labels -> value:  "_LBL: .word VALUE"
    litmap = {}
    for l in body:
        m = re.match(r'\s*(_\w+):\s*\.word\s+(.+?)\s*$', l)
        if m:
            litmap[m.group(1)] = m.group(2).strip()
    # 2. Build the flat, address-ordered halfword list of this func's data
    #    region from the assembled .o, excluding literal-pool words (those are
    #    folded into `ldr rN,=X`). Jump-table entries remain, in order, and are
    #    consumed sequentially by the data directives in the .s body — this is
    #    what makes multiple tables per function work.
    odis = objdump_func(o_path, func)
    pool_addrs = set()
    for l in odis:
        cm = re.search(r'ldr\s+\w+,\s*\[pc.*?;\s*\(([0-9a-f]+)\s*<', l)
        if cm:
            pool_addrs.add(int(cm.group(1), 16))
    table_hws = []  # 16-bit ints in memory order, pools excluded
    for l in odis:
        m = re.match(r'\s*([0-9a-f]+):\s+[0-9a-f ]+\t\.(short|word)\t0x([0-9a-f]+)', l)
        if m:
            addr = int(m.group(1), 16)
            kind, val = m.group(2), int(m.group(3), 16)
            if addr in pool_addrs:
                continue
            if kind == 'short':
                table_hws.append(val & 0xffff)
            else:  # .word -> little-endian halfword order: low then high
                table_hws.append(val & 0xffff)
                table_hws.append((val >> 16) & 0xffff)

    refs = set()
    asm_lines = []
    ti = 0  # running index into table_hws (sequential across all tables)
    for l in body:
        s = l.strip()
        if not s or s.startswith(';'):
            continue
        # drop the function label + address-comment line
        if re.match(rf'{re.escape(func)}:', s):
            continue
        # drop literal pool definitions (folded into =VALUE)
        if re.match(r'_\w+:\s*\.word', s):
            continue
        # drop .balign (unsupported in inline asm)
        if s.startswith('.balign'):
            continue
        # strip trailing "; comment"
        s = re.sub(r'\s*;.*$', '', s).strip()
        if not s:
            continue
        # standalone label (e.g. _0224XXXX: or a jump-table base label)
        if re.match(r'^_\w+:$', s):
            asm_lines.append(s)
            continue
        # jump-table data directive -> consume halfword(s) and decode to instrs
        dm = re.match(r'^\.(short|word)\b', s)
        if dm:
            n = 1 if dm.group(1) == 'short' else 2
            for _ in range(n):
                if ti < len(table_hws):
                    asm_lines.append('    ' + decode_one(table_hws[ti]))
                    ti += 1
                else:
                    sys.stderr.write('WARN: ran out of .o data halfwords for a '
                                     'jump-table directive; check the .o.\n')
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
        # collect bl/blx targets (skip register-indirect `blx rN`, not a symbol)
        bm = re.match(r'(?:bl|blx)\s+([A-Za-z_]\w*)', s)
        if bm and not re.fullmatch(r'r\d+|sp|lr|pc', bm.group(1)):
            refs.add(bm.group(1))
        asm_lines.append('    ' + s)
    # A trailing `nop` before a folded literal pool is only there to 4-align the
    # pool; MWCC re-inserts that padding when it places the `ldr rN,=X` pool, so
    # emitting it explicitly would add 2 stray bytes. Drop it (pool folded ==>
    # litmap non-empty).
    if litmap:
        while asm_lines and asm_lines[-1].strip() == 'nop':
            asm_lines.pop()
    return asm_lines, sorted(refs)


def extern_block(refs):
    """Emit extern decls. Runtime helpers get real prototypes (required for the
    inline asm to assemble); other refs are listed as prune-if-declared hints
    with a knowledge.json prototype when one is known."""
    required, hints = [], []
    for r in refs:
        if r in RT_PROTOS:
            required.append(RT_PROTOS[r])
        elif r.startswith('_') and len(r) > 1 and r[1].islower():
            # unknown compiler-rt-style helper — still needs to be visible
            required.append(f'extern int {r}();  // runtime helper — verify prototype')
        else:
            proto = sig_from_knowledge(r)
            if proto:
                hints.append(f'// extern {proto.rstrip(";")};  // {r} — remove if already declared')
            else:
                hints.append(f'// extern void {r}(void);  // {r} — remove if already declared elsewhere')
    return required, hints


def rettype_of(sig):
    # everything before the function name/'(' — used to pick a return stub
    head = sig.split('(', 1)[0].strip()
    parts = head.rsplit(None, 1)
    return parts[0].strip() if len(parts) == 2 else 'void'


def build_block(func, sig, static, asm_lines, refs):
    required, hints = extern_block(refs)
    rt = rettype_of(sig) if sig else 'void'
    ret_stub = '' if rt == 'void' else ('    return NULL;' if '*' in rt else '    return 0;')
    asm_sig = ('static ' if static else '') + 'asm ' + (sig or f'void {func}(void)')
    c_sig = ('static ' if static else '') + (sig or f'void {func}(void)')

    out = []
    if required or hints:
        out.append('// --- extern decls (place near the top of the TU) ---')
        out += required
        out += hints
        out.append('')
    out.append('#ifdef NONMATCHING')
    out.append('// TODO(nonmatching): document the intended C shape here. Kept as the')
    out.append('// hand-written asm below because MWCC could not be coerced to emit')
    out.append('// matching bytes (record the blocker in blockers.json).')
    out.append(c_sig + ' {')
    if ret_stub:
        out.append(ret_stub)
    out.append('}')
    out.append('#else')
    out.append('// clang-format off')
    out.append(asm_sig + ' {')
    out += asm_lines
    out.append('}')
    out.append('// clang-format on')
    out.append('#endif // NONMATCHING')
    return '\n'.join(out)


if __name__ == '__main__':
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('s', help='asm/<file>.s source')
    ap.add_argument('o', help='assembled .o (build/heartgold.us/asm/<file>.o)')
    ap.add_argument('func', help='function symbol name')
    ap.add_argument('--sig', help="explicit signature, e.g. 'void f(int a)' "
                    "(lowest priority; used only if no header/knowledge sig)")
    a = ap.parse_args()

    sig, sig_src = resolve_sig(a.func, a.sig)
    static = is_static(a.s, a.func)
    lines, refs = transcribe(a.s, a.o, a.func)
    print(build_block(a.func, sig, bool(static), lines, refs))

    sys.stderr.write(f'SIG: {sig!r} (source: {sig_src})\n')
    sys.stderr.write(f'STATIC: {static}\n')
    sys.stderr.write('REFS: ' + ' '.join(refs) + '\n')
