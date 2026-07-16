#!/usr/bin/env python3
"""float_annotate.py -- read-only soft-float call-sequence annotator (triage aid).

Given an asm/*.s file (and optionally a function name), print the ordered
sequence of MWCC soft-float / 64-bit-int runtime calls in each function,
annotated with:
  - the C-level operation each helper implements (from the helper glossary)
  - any float/double CONSTANT loaded into the argument registers immediately
    before the call (decoded to a decimal value from the literal pool or an
    inline mov/lsl materialization)
  - for compare helpers, the C comparison operator implied by the following
    conditional branch

This is a TRIAGE aid, not a decompiler. It does light, local dataflow
(constants loaded into arg regs just before a bl); it does NOT reconstruct
full expressions across arbitrary register moves. Treat the C hypotheses as
starting points to confirm against the patterns DB and a real build+objdiff.

See patterns.json:
  softfloat-register-marshalling-and-double-word-order
  softfloat-compare-helpers-use-unsigned-branch
  softfloat-constant-materialization
  softfloat-int-conversion-signedness-glossary
  softfloat-float-div-by-unsuffixed-literal-promotes-to-double
  softfloat-ll-64bit-arith-helpers

Usage:
  python3 tools/decomp_harness/float_annotate.py asm/overlay_92.s
  python3 tools/decomp_harness/float_annotate.py asm/overlay_92.s --func ov92_02263218
  python3 tools/decomp_harness/float_annotate.py asm/overlay_92.s --only-with-float
"""
import argparse
import re
import struct
import sys

# helper -> (kind, human description). kind in {conv, arith, cmp, ll}
GLOSSARY = {
    # int <-> float / double conversions (signedness encoded in name)
    "_fflt":    ("conv", "(f32)(s32)   signed int -> float"),
    "_ffltu":   ("conv", "(f32)(u32)   unsigned int -> float"),
    "_dflt":    ("conv", "(double)(s32)  signed int -> double"),
    "_dfltu":   ("conv", "(double)(u32)  unsigned int -> double"),
    "_ffix":    ("conv", "(s32)f32     float -> signed int"),
    "_ffixu":   ("conv", "(u32)f32     float -> unsigned int"),
    "_dfix":    ("conv", "(s32)double  double -> signed int"),
    "_dfixu":   ("conv", "(u32)double  double -> unsigned int"),
    "_f2d":     ("conv", "(double)f32  promote float -> double"),
    "_d2f":     ("conv", "(f32)double  narrow double -> float"),
    "_f_lltof": ("conv", "(f32)(s64)   signed long long -> float"),
    "_f_ulltof":("conv", "(f32)(u64)   unsigned long long -> float"),
    # float arithmetic (single reg args r0,r1 -> r0)
    "_fadd":    ("arith", "a + b   (f32; a=r0,b=r1)"),
    "_fsub":    ("arith", "a - b   (f32; a=r0,b=r1)"),
    "_fmul":    ("arith", "a * b   (f32; a=r0,b=r1)"),
    "_fdiv":    ("arith", "a / b   (f32; a=r0,b=r1)"),
    # double arithmetic (pair args r0:r1, r2:r3 -> r0:r1)
    "_dadd":    ("arith", "a + b   (double; a=r0:r1,b=r2:r3)"),
    "_dsub":    ("arith", "a - b   (double; a=r0:r1,b=r2:r3)"),
    "_dmul":    ("arith", "a * b   (double; a=r0:r1,b=r2:r3)"),
    "_ddiv":    ("arith", "a / b   (double; a=r0:r1,b=r2:r3)"),
    # float compares -> C op / following-branch that SKIPS the true block
    "_fgr":     ("cmp", "a >  b   (float; skip via bls)"),
    "_fls":     ("cmp", "a <  b   (float; skip via bhs)"),
    "_fleq":    ("cmp", "a <= b   (float; skip via bhi)"),
    "_fgeq":    ("cmp", "a >= b   (float; skip via blo)"),
    "_feq":     ("cmp", "a == b   (float; skip via bne)"),
    "_fneq":    ("cmp", "a != b   (float; skip via beq)"),
    # double compares
    "_dgr":     ("cmp", "a >  b   (double; skip via bls)"),
    "_dls":     ("cmp", "a <  b   (double; skip via bhs)"),
    "_dleq":    ("cmp", "a <= b   (double; skip via bhi)"),
    "_dgeq":    ("cmp", "a >= b   (double; skip via blo)"),
    "_deq":     ("cmp", "a == b   (double; skip via bne)"),
    "_dneq":    ("cmp", "a != b   (double; skip via beq)"),
    # 64-bit integer helpers (pair args, same ABI as doubles)
    "_ll_mul":  ("ll", "(s64)a * (s64)b -> s64 (FX_Mul core if flanked by asr#0x1f + +0x800/>>12)"),
    "_ll_sdiv": ("ll", "(s64)a / (s64)b  signed 64-bit divide"),
    "_ll_udiv": ("ll", "(u64)a / (u64)b  unsigned 64-bit divide"),
    "_ll_mod":  ("ll", "(s64)a % (s64)b  signed 64-bit mod"),
    "_ull_mod": ("ll", "(u64)a % (u64)b  unsigned 64-bit mod"),
    # 32-bit division helpers (MWCC lowers int / and %)
    "_s32_div_f": ("arith", "signed 32-bit / or % (a=r0,b=r1; quot r0, rem r1)"),
    "_u32_div_f": ("arith", "unsigned 32-bit / or % (a=r0,b=r1; quot r0, rem r1)"),
}

HELPER_RE = re.compile(r"^\s*bl\s+(_[a-z][a-z0-9_]*)\b")
FUNC_START_RE = re.compile(r"^\s*(thumb|arm)_func_start\s+(\S+)")
FUNC_END_RE = re.compile(r"^\s*(thumb|arm)_func_end\s+(\S+)")
# ldr rN, _LABEL ; =VALUE     (pool load with resolved comment)
LDR_POOL_RE = re.compile(r"^\s*ldr\s+(r\d+|sp|lr),\s*(\S+)\s*;\s*=\s*(\S+)")
# _LABEL: .word VALUE
POOL_DEF_RE = re.compile(r"^\s*(\S+):\s*\.word\s+(\S+)")
MOV_RE = re.compile(r"^\s*movs?\s+(r\d+),\s*#(\S+)")
LSL_RE = re.compile(r"^\s*lsls?\s+(r\d+),\s*(?:(r\d+),\s*)?#(\S+)")
COND_BRANCH_RE = re.compile(r"^\s*(b(?:ls|hs|hi|lo|ne|eq|cc|cs|gt|ge|lt|le))\b")

# branch-mnemonic (that skips the true block) -> C comparison it corroborates,
# per compare helper family. Used to confirm/annotate the following branch.
SKIP_BRANCH_MEANING = {
    "bls": ">", "bhs": "<", "bhi": "<=", "blo": ">=", "bne": "==", "beq": "!=",
}


def parse_int(tok):
    """Parse an asm immediate/word token to int, or None."""
    tok = tok.strip().rstrip(",")
    try:
        if tok.lower().startswith("0x"):
            return int(tok, 16)
        return int(tok, 0)
    except ValueError:
        return None


def decode_float_word(w):
    if w is None:
        return None
    try:
        return struct.unpack(">f", struct.pack(">I", w & 0xFFFFFFFF))[0]
    except struct.error:
        return None


def decode_double_words(hi, lo):
    if hi is None or lo is None:
        return None
    try:
        return struct.unpack(">d", struct.pack(">II", hi & 0xFFFFFFFF, lo & 0xFFFFFFFF))[0]
    except struct.error:
        return None


def looks_float(w):
    """Heuristic: does this 32-bit word plausibly denote a normal float?"""
    if w is None:
        return False
    f = decode_float_word(w)
    if f is None:
        return False
    a = abs(f)
    return f == 0.0 or (1e-6 < a < 1e12)


def collect_pool(lines):
    """label -> integer value, for _LABEL: .word VALUE definitions."""
    pool = {}
    for ln in lines:
        m = POOL_DEF_RE.match(ln)
        if m:
            v = parse_int(m.group(2))
            if v is not None:
                pool[m.group(1)] = v
    return pool


def split_functions(lines):
    """Yield (name, start_idx, end_idx) for each func block."""
    cur = None
    start = None
    for i, ln in enumerate(lines):
        ms = FUNC_START_RE.match(ln)
        if ms:
            cur = ms.group(2)
            start = i
            continue
        me = FUNC_END_RE.match(ln)
        if me and cur is not None:
            yield (cur, start, i)
            cur = None
            start = None


def track_reg_consts(body, pool):
    """Return list per line index: {reg: (int_value, source_str)} snapshot of
    known register constants at that line (best-effort, resets are not modeled
    beyond overwrite). Only constants from ldr-pool and mov(+lsl) are tracked."""
    regs = {}
    snap = []
    for ln in body:
        # ldr rN, _LABEL ; =VALUE  or  ldr rN, =VALUE
        m = LDR_POOL_RE.match(ln)
        if m:
            reg, label, valtok = m.group(1), m.group(2), m.group(3)
            v = parse_int(valtok)
            if v is None and label in pool:
                v = pool[label]
            if v is not None:
                regs[reg] = (v, valtok)
            snap.append(dict(regs))
            continue
        m = MOV_RE.match(ln)
        if m:
            reg = m.group(1)
            v = parse_int(m.group(2))
            if v is not None:
                regs[reg] = (v, "#" + m.group(2))
            else:
                regs.pop(reg, None)
            snap.append(dict(regs))
            continue
        m = LSL_RE.match(ln)
        if m:
            dst = m.group(1)
            src = m.group(2) or dst
            sh = parse_int(m.group(3))
            if src in regs and sh is not None:
                base = regs[src][0]
                regs[dst] = ((base << sh) & 0xFFFFFFFF, "(%s<<%d)" % (regs[src][1], sh))
            else:
                regs.pop(dst, None)
            snap.append(dict(regs))
            continue
        # any other instruction: conservatively, we keep prior known consts.
        # (We do not model clobbers precisely; that is acceptable for a triage
        # aid that only reports constants observed immediately before a bl.)
        snap.append(dict(regs))
    return snap


def process_func(name, body_lines, pool, only_with_float):
    """Return a list of annotation lines for one function, or None if it has no
    soft-float/ll calls and only_with_float is set."""
    snap = track_reg_consts(body_lines, pool)
    out = []
    n_calls = 0
    for i, ln in enumerate(body_lines):
        m = HELPER_RE.match(ln)
        if not m:
            continue
        helper = m.group(1)
        if helper not in GLOSSARY:
            continue
        n_calls += 1
        kind, desc = GLOSSARY[helper]
        regs = snap[i - 1] if i > 0 else {}
        line = "    %-11s %s" % (helper, desc)
        out.append(line)
        # constant argument annotation
        consts = []
        if kind == "arith" or kind == "cmp":
            if helper[0] == "_d" or helper in ("_ddiv", "_dmul", "_dadd", "_dsub"):
                # double: check r0:r1 and r2:r3
                for lo, hi, lbl in (("r0", "r1", "arg1"), ("r2", "r3", "arg2")):
                    l = regs.get(lo)
                    h = regs.get(hi)
                    if l is not None and h is not None:
                        d = decode_double_words(h[0], l[0])
                        if d is not None:
                            consts.append("%s=%g" % (lbl, d))
            else:
                # single float: r0, r1
                for reg, lbl in (("r0", "arg1"), ("r1", "arg2")):
                    r = regs.get(reg)
                    if r is not None and looks_float(r[0]):
                        consts.append("%s=%g" % (lbl, decode_float_word(r[0])))
        if consts:
            out.append("                  const: " + ", ".join(consts))
        # for compare helpers, report the following conditional branch
        if kind == "cmp":
            for j in range(i + 1, min(i + 4, len(body_lines))):
                bm = COND_BRANCH_RE.match(body_lines[j])
                if bm:
                    br = bm.group(1)
                    meaning = SKIP_BRANCH_MEANING.get(br)
                    if meaning:
                        out.append("                  -> next branch %s skips: true-block is (a %s b)" % (br, meaning))
                    else:
                        out.append("                  -> next branch %s" % br)
                    break
    if n_calls == 0 and only_with_float:
        return None
    header = "%s  (%d soft-float/ll call%s)" % (name, n_calls, "" if n_calls == 1 else "s")
    return [header] + out


def main():
    ap = argparse.ArgumentParser(description="Soft-float call-sequence annotator (read-only triage aid).")
    ap.add_argument("asm_file", help="path to an asm/*.s file")
    ap.add_argument("--func", help="only annotate this function (thumb/arm_func name)")
    ap.add_argument("--only-with-float", action="store_true",
                    help="skip functions that contain no soft-float/ll calls")
    args = ap.parse_args()

    try:
        with open(args.asm_file, encoding="utf-8", errors="replace") as f:
            lines = f.read().splitlines()
    except OSError as e:
        print("error: %s" % e, file=sys.stderr)
        return 2

    pool = collect_pool(lines)
    funcs = list(split_functions(lines))
    if not funcs:
        print("no thumb/arm_func_start blocks found in %s" % args.asm_file, file=sys.stderr)
        return 1

    printed = False
    for name, s, e in funcs:
        if args.func and name != args.func:
            continue
        body = lines[s:e]
        block = process_func(name, body, pool, args.only_with_float and not args.func)
        if block is None:
            continue
        print("\n".join(block))
        print()
        printed = True

    if not printed:
        if args.func:
            print("function %s not found (or has no float calls)" % args.func, file=sys.stderr)
            return 1
        print("(no functions with soft-float calls)", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
