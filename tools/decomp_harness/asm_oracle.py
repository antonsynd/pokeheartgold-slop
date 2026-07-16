#!/usr/bin/env python3
"""asm_oracle.py -- read-only asm-derived type/idiom oracle (sweep-time triage aid).

Scans an asm/*.s file per function and emits machine-checkable constraints that
otherwise each cost a build+objdiff cycle to discover:

  SIGNEDNESS  -- integer cmp followed by a signed (blt/bge/bgt/ble) vs unsigned
                 (blo/bhs/bhi/bls) conditional branch pins operand signedness.
                 Branches that consume a SOFT-FLOAT compare helper's flags
                 (bl _fgr/_fls/... then bls/bhi/...) are ALWAYS unsigned
                 mnemonics regardless of C types and are EXCLUDED
                 (patterns.json: softfloat-compare-helpers-use-unsigned-branch).

  WIDTH       -- lsl #N + lsr #N truncation pairs (=> u8/u16), lsl #N + asr #N
                 (=> s8/s16), and ldrb/ldrh/ldrsb/ldrsh / strb/strh access widths
                 per (base register, offset).

  EXACT TYPES -- runtime helper names pin the C type/cast: _s32_div_f (signed
                 int / or %), _u32_div_f (unsigned), _ffix/_ffixu/_dfix/_dfixu/
                 _fflt/_ffltu/_dflt/_dfltu (the exact int<->fp cast, per
                 softfloat-int-conversion-signedness-glossary), and _ll_mul
                 flanked by asr #0x1f sign-extends + a +0x800/>>12 tail => FX_Mul
                 (softfloat-ll-64bit-arith-helpers).

  NONMATCHING pre-flags -- (a) the param copyprop-cmp entry signature: a param
                 (r0-r3) copied to a callee-saved reg at entry, then the COPY
                 compared with no preceding bl -- MWCC uses the copy, so pure C
                 cannot reproduce it (patterns.json: param-copyprop-cmp).
                 (b) dead-store stack buffers: a value stored to an sp offset
                 that is never read back and is not near a call (conservative).

This is a TRIAGE aid, not a decompiler. Every claim carries the asm evidence
line(s) so a human can audit it. Heuristics are deliberately conservative:
a missed constraint just costs the status quo (a build cycle); a wrong one
wastes attention. Confirm against the patterns DB and a real build+objdiff.

Usage:
  python3 tools/decomp_harness/asm_oracle.py asm/overlay_92.s
  python3 tools/decomp_harness/asm_oracle.py asm/overlay_92.s --func ov92_0225C740
  python3 tools/decomp_harness/asm_oracle.py asm/overlay_92.s --json
  python3 tools/decomp_harness/asm_oracle.py asm/overlay_92.s --update-knowledge
"""
import argparse
import json
import os
import re
import sys
from datetime import datetime, timezone

# ---------------------------------------------------------------------------
# parsing (float_annotate.py conventions: thumb/arm_func_start blocks, regexes)
# ---------------------------------------------------------------------------
FUNC_START_RE = re.compile(r"^\s*(thumb|arm)_func_start\s+(\S+)")
FUNC_END_RE = re.compile(r"^\s*(thumb|arm)_func_end\s+(\S+)")
LABEL_RE = re.compile(r"^([A-Za-z_.$][\w.$]*):\s*(.*)$")
MEM_RE = re.compile(r"\[\s*(\w+)\s*(?:,\s*(#[-\w]+|r\d+))?\s*\]")

# soft-float compare helpers: the branch after these is unsigned by construction
SOFTFLOAT_CMP = {
    "_fgr", "_fls", "_fleq", "_fgeq", "_feq", "_fneq",
    "_dgr", "_dls", "_dleq", "_dgeq", "_deq", "_dneq",
}
# int<->fp conversion helpers -> exact C cast (signedness pinned by the name)
CONV_HELPERS = {
    "_fflt":    "(f32)(s32)   signed int -> float   (operand is signed)",
    "_ffltu":   "(f32)(u32)   unsigned int -> float (operand is unsigned)",
    "_dflt":    "(double)(s32) signed int -> double (operand is signed)",
    "_dfltu":   "(double)(u32) unsigned int -> double (operand is unsigned)",
    "_ffix":    "(s32)f32     float -> signed int",
    "_ffixu":   "(u32)f32     float -> unsigned int",
    "_dfix":    "(s32)double  double -> signed int",
    "_dfixu":   "(u32)double  double -> unsigned int",
    "_f2d":     "(double)f32  promote float -> double",
    "_d2f":     "(f32)double  narrow double -> float",
    "_f_lltof": "(f32)(s64)   signed long long -> float",
    "_f_ulltof": "(f32)(u64)  unsigned long long -> float",
}
DIV_HELPERS = {
    "_s32_div_f": "signed 32-bit int / or %  (both operands signed int)",
    "_u32_div_f": "unsigned 32-bit int / or %  (both operands unsigned int)",
}
LL_HELPERS = {
    "_ll_mul":  "(s64)a * (s64)b -> s64  (64-bit multiply)",
    "_ll_sdiv": "(s64)a / (s64)b  signed 64-bit divide",
    "_ll_udiv": "(u64)a / (u64)b  unsigned 64-bit divide",
    "_ll_mod":  "(s64)a % (s64)b  signed 64-bit modulo",
    "_ull_mod": "(u64)a % (u64)b  unsigned 64-bit modulo",
}

SIGNED_BR = {"blt": "signed", "bge": "signed", "bgt": "signed", "ble": "signed"}
UNSIGNED_BR = {"bhi": "unsigned", "bls": "unsigned", "bhs": "unsigned",
               "blo": "unsigned", "bcc": "unsigned", "bcs": "unsigned"}
# integer flag setters: a signed/unsigned branch reading these encodes signedness
INT_CMP_HI = {"cmp", "cmn"}                       # a direct compare (high conf)
INT_CMP_LO = {"tst", "teq", "subs", "adds", "rsbs", "sbcs", "adcs", "negs"}
# unconditional control-flow / returns that terminate a backward basic-block scan
STOP_BACK = {"b", "bx", "bkpt"}


def parse_int(tok):
    tok = tok.strip().rstrip(",").lstrip("#")
    try:
        return int(tok, 0)
    except (ValueError, TypeError):
        return None


def strip_comment(s):
    for c in (";", "@"):
        i = s.find(c)
        if i != -1:
            s = s[:i]
    return s.rstrip()


def parse_line(raw):
    """-> dict(label, mnem, ops). mnem is None for pure labels / blank lines.
    Directive mnemonics (starting with '.') are kept but ignored by detectors."""
    line = strip_comment(raw)
    label = None
    if line[:1] and not line[0].isspace():
        m = LABEL_RE.match(line)
        if m:
            label = m.group(1)
            line = m.group(2)
    rest = line.strip()
    if not rest:
        return {"label": label, "mnem": None, "ops": ""}
    parts = rest.split(None, 1)
    return {"label": label, "mnem": parts[0],
            "ops": parts[1].strip() if len(parts) > 1 else ""}


def first_operand(ops):
    return ops.split(",", 1)[0].strip() if ops else ""


def reg_of(tok):
    """Normalize a register token (strips commas/brackets). -> 'r7' | 'sp' | None."""
    tok = tok.strip().strip("{}[]!").rstrip(",")
    if re.fullmatch(r"r\d+", tok) or tok in ("sp", "lr", "pc"):
        return tok
    return None


def parse_shift(ops):
    """'rD, rS, #N' or 'rD, #N' -> (dst, src, n) or None."""
    parts = [p.strip() for p in ops.split(",") if p.strip()]
    if len(parts) == 3:
        dst, src, amt = parts
    elif len(parts) == 2:
        dst, amt = parts
        src = dst
    else:
        return None
    if not amt.startswith("#"):
        return None
    n = parse_int(amt)
    if n is None:
        return None
    return (reg_of(dst), reg_of(src), n)


def parse_mem(ops):
    """Return (base_reg, offset_str) for a '[rB, #off]' operand, else (None, None).
    offset_str is like '#0x8' (or '(reg)' for register-indexed, '#0' for bare)."""
    m = MEM_RE.search(ops)
    if not m:
        return (None, None)
    base = m.group(1)
    idx = m.group(2)
    if idx is None:
        return (base, "#0")
    if idx.startswith("#"):
        return (base, idx)
    return (base, "(%s)" % idx)  # register-indexed


def split_functions(lines):
    """Yield (name, mode, start_idx, end_idx) for each thumb/arm func block.
    State is carried in a single `pending` tuple so name/mode/start are provably
    bound (and non-None) whenever a block is emitted."""
    pending = None   # (name, mode, start_idx) once a func_start has been seen
    for i, ln in enumerate(lines):
        ms = FUNC_START_RE.match(ln)
        if ms:
            pending = (ms.group(2), ms.group(1), i)
            continue
        me = FUNC_END_RE.match(ln)
        if me and pending is not None:
            name, mode, start = pending
            yield (name, mode, start, i)
            pending = None


# ---------------------------------------------------------------------------
# detectors -- each returns a list of evidence-bearing constraint dicts
# ---------------------------------------------------------------------------
def detect_signedness(toks, base_ln):
    """cmp + signed/unsigned branch => operand signedness. Soft-float compare
    branches are excluded (their unsigned mnemonic is not a C-type signal)."""
    out = []
    for i, t in enumerate(toks):
        mnem = t["mnem"]
        if mnem is None:
            continue
        verdict = SIGNED_BR.get(mnem) or UNSIGNED_BR.get(mnem)
        if verdict is None:
            continue
        # walk back to the nearest flag-affecting instruction
        setter = None
        j = i - 1
        steps = 0
        while j >= 0 and steps < 24:
            u = toks[j]
            if u["label"] is not None:      # basic-block join: cannot attribute
                break
            m = u["mnem"]
            if m is None:
                j -= 1
                continue
            steps += 1
            if m == "bl" or m == "blx":
                tgt = first_operand(u["ops"])
                if tgt in SOFTFLOAT_CMP:
                    setter = ("softfloat", u, j)
                else:
                    setter = ("call", u, j)   # call clobbers flags: ambiguous
                break
            if m in INT_CMP_HI:
                setter = ("int_hi", u, j)
                break
            if m in INT_CMP_LO:
                setter = ("int_lo", u, j)
                break
            if m in STOP_BACK or m.startswith("pop"):
                break
            j -= 1
        if setter is None or setter[0] in ("softfloat", "call"):
            continue  # excluded (soft-float) or unattributable (call/none)
        kind, u, jidx = setter
        ctx = first_operand(u["ops"]) or "?"
        conf = "high" if kind == "int_hi" else "medium"
        out.append({
            "register": ctx,
            "verdict": verdict,
            "branch": mnem,
            "confidence": conf,
            "evidence": "L%d: %s %s  =>  L%d: %s %s" % (
                base_ln + jidx, u["mnem"], u["ops"],
                base_ln + i, mnem, t["ops"]),
        })
    return out


def detect_widths(toks, base_ln):
    out = []
    seen_ldst = set()
    # truncation pairs: lsl #N then lsr/asr #N on the same reg (within 2 instrs)
    for i, t in enumerate(toks):
        if t["mnem"] not in ("lsl", "lsls"):
            continue
        left = parse_shift(t["ops"])
        if not left or left[2] not in (8, 16, 24):
            continue
        ldst, lsrc, ln = left
        # the next 1-2 instructions, carrying their real indices
        nxt = [(j, toks[j]) for j in range(i + 1, min(i + 4, len(toks)))
               if toks[j]["mnem"] is not None][:2]
        for ri, u in nxt:
            if u["mnem"] not in ("lsr", "lsrs", "asr", "asrs"):
                continue
            right = parse_shift(u["ops"])
            if not right or right[2] != ln or right[1] != ldst:
                continue
            signed = u["mnem"].startswith("asr")
            bits = 32 - ln
            verdict = {(8, False): "u24", (8, True): "s24",
                       (16, False): "u16", (16, True): "s16",
                       (24, False): "u8", (24, True): "s8"}[(ln, signed)]
            out.append({
                "kind": "truncation-pair",
                "register": ldst,
                "verdict": verdict,
                "confidence": "high" if bits in (8, 16) else "medium",
                "evidence": "L%d: %s %s ; L%d: %s %s" % (
                    base_ln + i, t["mnem"], t["ops"],
                    base_ln + ri, u["mnem"], u["ops"]),
            })
            break
    # narrow loads/stores: width per (base, offset)
    LDST = {"ldrb": ("u8", "load"), "ldrh": ("u16", "load"),
            "ldrsb": ("s8", "load"), "ldrsh": ("s16", "load"),
            "strb": ("u8", "store"), "strh": ("u16", "store")}
    for i, t in enumerate(toks):
        info = LDST.get(t["mnem"])
        if info is None:
            continue
        width, kind = info
        base, off = parse_mem(t["ops"])
        if base is None:
            continue
        key = (t["mnem"], base, off)
        if key in seen_ldst:
            continue
        seen_ldst.add(key)
        out.append({
            "kind": "%s-width" % kind,
            "verdict": width,
            "base": base,
            "offset": off,
            "confidence": "high",
            "evidence": "L%d: %s %s" % (base_ln + i, t["mnem"], t["ops"]),
        })
    return out


def detect_exact_types(toks, base_ln):
    out = []
    for i, t in enumerate(toks):
        if t["mnem"] not in ("bl", "blx"):
            continue
        helper = first_operand(t["ops"])
        ev = "L%d: bl %s" % (base_ln + i, helper)
        if helper in DIV_HELPERS:
            out.append({"helper": helper, "verdict": DIV_HELPERS[helper],
                        "confidence": "high", "evidence": ev})
        elif helper in CONV_HELPERS:
            out.append({"helper": helper, "verdict": CONV_HELPERS[helper],
                        "confidence": "high", "evidence": ev})
        elif helper in LL_HELPERS:
            verdict = LL_HELPERS[helper]
            conf = "high"
            if helper == "_ll_mul" and _is_fx_mul(toks, i):
                verdict = ("FX_Mul(a,b) fixed-point idiom: "
                           "((s64)a * b + 0x800) >> 12  (fx32)")
            out.append({"helper": helper, "verdict": verdict,
                        "confidence": conf, "evidence": ev})
    return out


def _is_fx_mul(toks, i):
    """_ll_mul flanked by asr #0x1f sign-extends and a >>12 (#0xc) tail."""
    pre = False
    for u in toks[max(0, i - 8):i]:
        if u["mnem"] in ("asr", "asrs"):
            sh = parse_shift(u["ops"])
            if sh and sh[2] == 0x1f:
                pre = True
    tail = False
    for u in toks[i + 1:i + 10]:
        if u["mnem"] in ("asr", "asrs", "lsr", "lsrs"):
            sh = parse_shift(u["ops"])
            if sh and sh[2] == 0xc:
                tail = True
    return pre and tail


def detect_nonmatching(toks, base_ln):
    out = []
    out.extend(_detect_copyprop(toks, base_ln))
    out.extend(_detect_dead_store(toks, base_ln))
    return out


# instructions whose destination register is their first operand (used to tell
# when a copied param's SOURCE register is clobbered, which makes a later
# cmp-on-copy legitimate rather than a copyprop anomaly)
WRITE_DST0 = {
    "mov", "movs", "add", "adds", "sub", "subs", "ldr", "ldrb", "ldrh",
    "ldrsb", "ldrsh", "lsl", "lsls", "lsr", "lsrs", "asr", "asrs", "and",
    "ands", "orr", "orrs", "eor", "eors", "mul", "muls", "neg", "negs",
    "bic", "bics", "mvn", "mvns", "ror", "rors", "adc", "adcs", "sbc",
    "sbcs", "rsb", "rsbs",
}


def _detect_copyprop(toks, base_ln):
    """Param (r0-r3) copied to a callee-saved reg at entry, then the COPY
    compared before any bl WHILE the source reg is still unclobbered -> MWCC
    copyprop would fold the compare back to the original, so pure C cannot
    reproduce the cmp-on-copy. If the source reg is overwritten before the cmp,
    the copy holds the only live value and the cmp-on-copy is legitimate."""
    PARAM = {"r0", "r1", "r2", "r3"}
    SAVED = {"r4", "r5", "r6", "r7"}
    copies = {}   # dst_reg -> (src_reg, idx)  (only while src is unclobbered)
    for i, t in enumerate(toks):
        m = t["mnem"]
        if m in ("bl", "blx"):
            break  # entry region ends at the first call
        if m is None:
            continue
        parts = [p.strip() for p in t["ops"].split(",") if p.strip()]
        # cmp on a live copy target -> the copyprop-cmp signature. This is
        # necessary but NOT sufficient for NONMATCHING: the same asm shape also
        # arises for a mutable local initialized from a param, a switch selector,
        # and the pervasive GF_ASSERT idiom. Downgrade those to low confidence.
        if m == "cmp" and parts and reg_of(parts[0]) in copies:
            d = reg_of(parts[0])
            src, ci = copies[d]
            reasons = []
            # GF_ASSERT(param OP N) idiom -> assert-fail call just past the branch
            for u in toks[i + 1:i + 6]:
                if u["mnem"] in ("bl", "blx"):
                    if re.search(r"assert|fail", first_operand(u["ops"]), re.I):
                        reasons.append("GF_ASSERT idiom")
                    break
            # switch selector: unsigned bound check + a pc-relative jump table
            br = next((u["mnem"] for u in toks[i + 1:i + 3]
                       if u["mnem"] in SIGNED_BR or u["mnem"] in UNSIGNED_BR), None)
            if br in UNSIGNED_BR and any(
                    "pc" in [reg_of(p) for p in u["ops"].split(",")]
                    for u in toks[i + 1:i + 9] if u["mnem"] in ("add", "adds", "mov")):
                reasons.append("switch/jump-table selector")
            # mutable local: the copy register is written again later
            if any(u["mnem"] in WRITE_DST0 and reg_of(first_operand(u["ops"])) == d
                   for u in toks[i + 1:]):
                reasons.append("copy reg reassigned later (mutable local)")
            # motivated copy: the value is used across a LATER call, which is the
            # normal reason a param lives in a callee-saved reg -> plain C
            # reproduces the cmp-on-copy, so this is very likely benign
            fbl = next((k for k in range(i + 1, len(toks))
                        if toks[k]["mnem"] in ("bl", "blx")), None)
            if fbl is not None and any(
                    d in re.split(r"[,\s{}\[\]!]+", u["ops"]) for u in toks[fbl + 1:]):
                reasons.append("value used across a later call (copy motivated)")
            conf = "low" if reasons else "medium"
            detail = ("param %s copied to %s at entry, then %s (the copy) compared "
                      "while %s is live and no bl precedes -- MWCC uses the copy" %
                      (src, d, d, src))
            if reasons:
                detail += " [likely benign: %s -- audit]" % "; ".join(reasons)
            else:
                detail += " (matches the documented copyprop-cmp NONMATCHING case; audit)"
            return [{
                "kind": "copyprop-cmp-entry",
                "verdict": "NONMATCHING-suspect",
                "confidence": conf,
                "detail": detail,
                "evidence": "L%d: %s %s ; L%d: cmp %s" % (
                    base_ln + ci, toks[ci]["mnem"], toks[ci]["ops"],
                    base_ln + i, t["ops"]),
            }]
        # invalidate copies whose src (or dst) is clobbered by this instruction
        if m in ("pop",) or m.startswith("ldm") or m.startswith("stm"):
            copies.clear()
        else:
            w = reg_of(parts[0]) if (m in WRITE_DST0 and parts) else None
            if w is not None:
                for dd in [k for k, v in copies.items() if v[0] == w or k == w]:
                    del copies[dd]
        # record a new param->saved copy
        if m in ("add", "adds") and len(parts) == 3 and parts[2] == "#0":
            d, s = reg_of(parts[0]), reg_of(parts[1])
            if d in SAVED and s in PARAM:
                copies[d] = (s, i)
        elif m in ("mov", "movs") and len(parts) == 2:
            d, s = reg_of(parts[0]), reg_of(parts[1])
            if d in SAVED and s in PARAM:
                copies[d] = (s, i)
    return []


def _detect_dead_store(toks, base_ln):
    """Stores to sp offsets that are never read back, never have their address
    taken, and sit ABOVE the function's outgoing-argument zone.

    Deliberately conservative (precision >> recall for this advisory flag):
      - the outgoing-argument zone is [sp,#0 .. arg_zone_max], where arg_zone_max
        is the highest offset of any stack store that is followed by a bl within
        ARG_WINDOW instructions (no label crossing). Outgoing stack args are set
        up just before a call and read by the callee, not via ldr here, so they
        must never be flagged. Excluding the whole zone kills that class even
        when the call is many register-setup instructions away.
      - address-taken slots (add rN, sp, #K with K<=off, or mov rN, sp) may be
        read through a pointer / passed to a callee, so they are excluded too."""
    ARG_WINDOW = 16
    read_offs = set()
    taken = []            # offsets whose address is taken (add rN, sp, #K / mov rN, sp)
    stores = []           # (idx, off, mnem, ops)
    instr_idx = [i for i, t in enumerate(toks) if t["mnem"] is not None]
    pos_of = {i: p for p, i in enumerate(instr_idx)}
    for i, t in enumerate(toks):
        m = t["mnem"]
        if m is None:
            continue
        parts = [p.strip() for p in t["ops"].split(",") if p.strip()]
        # address of a stack slot taken into a register
        if m in ("add", "adds") and len(parts) == 3 and reg_of(parts[1]) == "sp":
            k = parse_int(parts[2])
            if k is not None:
                taken.append(k)
            continue
        if m in ("mov",) and len(parts) == 2 and reg_of(parts[1]) == "sp":
            taken.append(0)
            continue
        base, off = parse_mem(t["ops"])
        if base != "sp" or off is None or not off.startswith("#"):
            continue
        offv = parse_int(off)
        if offv is None:
            continue
        if m in ("ldr", "ldrb", "ldrh", "ldrsb", "ldrsh"):
            read_offs.add(offv)
        elif m in ("str", "strb", "strh"):
            stores.append((i, offv, m, t["ops"]))

    # outgoing-argument zone: highest offset of a stack store that precedes a bl
    arg_zone_max = -1
    for i, offv, m, ops in stores:
        p = pos_of[i]
        for q in range(p + 1, min(p + 1 + ARG_WINDOW, len(instr_idx))):
            u = toks[instr_idx[q]]
            if u["label"] is not None:
                break
            if u["mnem"] in ("bl", "blx"):
                arg_zone_max = max(arg_zone_max, offv)
                break

    out = []
    flagged = set()
    for i, offv, m, ops in stores:
        if offv in read_offs or offv in flagged:
            continue
        if offv <= arg_zone_max:            # inside the outgoing-argument zone
            continue
        if any(k <= offv for k in taken):   # address may alias this slot
            continue
        flagged.add(offv)
        out.append({
            "kind": "dead-store-stack",
            "verdict": "NONMATCHING-suspect",
            "confidence": "low",
            "detail": ("store to [sp,#0x%x] never read back, address never taken, "
                       "and above the outgoing-arg zone; may be a dead store / "
                       "uninit or volatile local (advisory -- most "
                       "false-positive-prone signal)" % offv),
            "evidence": "L%d: %s %s" % (base_ln + i, m, ops),
        })
    return out


def analyze_func(name, mode, body, base_ln):
    toks = [parse_line(ln) for ln in body]
    return {
        "name": name,
        "mode": mode,
        "signedness": detect_signedness(toks, base_ln),
        "widths": detect_widths(toks, base_ln),
        "exact_types": detect_exact_types(toks, base_ln),
        "nonmatching_flags": detect_nonmatching(toks, base_ln),
    }


def has_content(fn):
    return bool(fn["signedness"] or fn["widths"] or fn["exact_types"]
               or fn["nonmatching_flags"])


def analyze_file(path):
    with open(path, encoding="utf-8", errors="replace") as f:
        lines = f.read().splitlines()
    results = []
    for name, mode, s, e in split_functions(lines):
        # body[k] is file line s+k; func_start is at line s, body starts s+1
        results.append(analyze_func(name, mode, lines[s:e], base_ln=s + 1))
    return results


# ---------------------------------------------------------------------------
# output
# ---------------------------------------------------------------------------
def print_report(results, only_func=None):
    printed = 0
    empty = 0
    for fn in results:
        if only_func and fn["name"] != only_func:
            continue
        if not has_content(fn):
            empty += 1
            continue
        printed += 1
        print("%s  (%s)" % (fn["name"], fn["mode"]))
        for s in fn["signedness"]:
            print("  SIGNEDNESS  %-8s [%s] %s (%s)" % (
                s["verdict"], s["register"], s["branch"], s["confidence"]))
            print("              %s" % s["evidence"])
        for w in fn["widths"]:
            loc = w.get("register") or ("%s%s" % (w.get("base", "?"), w.get("offset", "")))
            print("  WIDTH       %-6s %-16s (%s)" % (w["verdict"], "%s@%s" % (w["kind"], loc), w["confidence"]))
            print("              %s" % w["evidence"])
        for x in fn["exact_types"]:
            print("  EXACT-TYPE  %-11s %s" % (x["helper"], x["verdict"]))
            print("              %s" % x["evidence"])
        for nf in fn["nonmatching_flags"]:
            print("  NONMATCH    %-10s %s (%s)" % (nf["kind"], nf["verdict"], nf["confidence"]))
            print("              %s" % nf.get("detail", ""))
            print("              %s" % nf["evidence"])
        print()
    if only_func and printed == 0:
        print("function %s not found (or has no constraints)" % only_func, file=sys.stderr)
    elif printed == 0:
        print("(no functions with oracle constraints)", file=sys.stderr)
    else:
        print("%d function(s) with constraints; %d with none." % (printed, empty))


def build_oracle_block(results):
    funcs = {}
    tally = {"functions": 0, "signed": 0, "unsigned": 0, "widths": 0,
             "exact_types": 0, "copyprop_cmp": 0, "dead_store": 0}
    for fn in results:
        if not has_content(fn):
            continue
        tally["functions"] += 1
        for s in fn["signedness"]:
            tally["signed" if s["verdict"] == "signed" else "unsigned"] += 1
        tally["widths"] += len(fn["widths"])
        tally["exact_types"] += len(fn["exact_types"])
        for nf in fn["nonmatching_flags"]:
            if nf["kind"] == "copyprop-cmp-entry":
                tally["copyprop_cmp"] += 1
            elif nf["kind"] == "dead-store-stack":
                tally["dead_store"] += 1
        funcs[fn["name"]] = {
            k: fn[k] for k in ("signedness", "widths", "exact_types", "nonmatching_flags")
            if fn[k]
        }
    return {
        "tool": "asm_oracle.py",
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "summary": tally,
        "functions": funcs,
    }


def repo_key(path):
    """Normalize an asm path to its 'asm/...' knowledge.json key."""
    here = os.path.dirname(os.path.abspath(__file__))
    root = os.path.abspath(os.path.join(here, "..", ".."))
    ap = os.path.abspath(path)
    rel = os.path.relpath(ap, root).replace(os.sep, "/")
    return rel


def update_knowledge(path, results):
    """Additive, non-destructive write of the oracle block into knowledge.json
    under files[<path>]['oracle']. Never touches sweep-agent keys."""
    here = os.path.dirname(os.path.abspath(__file__))
    kpath = os.path.join(here, "knowledge.json")
    if os.path.exists(kpath):
        with open(kpath, encoding="utf-8") as f:
            knowledge = json.load(f)
    else:
        knowledge = {}
    knowledge.setdefault("files", {})
    key = repo_key(path)
    entry = knowledge["files"].setdefault(key, {})
    entry["oracle"] = build_oracle_block(results)
    with open(kpath, "w", encoding="utf-8") as f:
        json.dump(knowledge, f, indent=1, sort_keys=True)
    return kpath, key


def main():
    ap = argparse.ArgumentParser(description="asm-derived type/idiom oracle (read-only triage aid).")
    ap.add_argument("asm_file", help="path to an asm/*.s file")
    ap.add_argument("--func", help="only report this function")
    ap.add_argument("--json", action="store_true", help="machine-readable output")
    ap.add_argument("--update-knowledge", action="store_true",
                    help="additively write the oracle block into knowledge.json")
    args = ap.parse_args()

    try:
        results = analyze_file(args.asm_file)
    except OSError as e:
        print("error: %s" % e, file=sys.stderr)
        return 2
    if not results:
        print("no thumb/arm_func_start blocks found in %s" % args.asm_file, file=sys.stderr)
        return 1

    if args.func:
        results = [r for r in results if r["name"] == args.func]

    if args.update_knowledge:
        kpath, key = update_knowledge(args.asm_file, results)
        block = build_oracle_block(results)
        print("updated %s -> files[%r]['oracle']" % (kpath, key))
        print("  %s" % json.dumps(block["summary"], sort_keys=True))
        return 0

    if args.json:
        # faithful per-function shape: {name, mode, signedness, widths,
        # exact_types, nonmatching_flags} for every function with >=1 constraint
        payload = {
            "file": repo_key(args.asm_file),
            "summary": build_oracle_block(results)["summary"],
            "functions": [fn for fn in results if has_content(fn)],
        }
        print(json.dumps(payload, indent=2))
        return 0

    print_report(results, only_func=args.func)
    return 0


if __name__ == "__main__":
    sys.exit(main())
