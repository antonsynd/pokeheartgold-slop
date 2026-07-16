#!/usr/bin/env python3
"""Compare ASM and C object files function-by-function.

Usage:
    objdiff.py <asm_obj> <c_obj>              # full comparison report
    objdiff.py <asm_obj> <c_obj> --summary    # one-line-per-function
    objdiff.py <asm_obj> <c_obj> --disasm <fn> # show both disassemblies side-by-side
    objdiff.py <asm_obj> <c_obj> --bytes <fn>  # byte-level diff for one function
    objdiff.py --sections <asm_obj> <c_obj>    # compare section sizes
    objdiff.py <asm_obj> <c_obj> --rodata      # per-symbol .rodata/.data byte diff
    objdiff.py <asm_obj> <c_obj> --rodata --map asm/name.s   # force the symbol map
    objdiff.py <asm_obj> <c_obj> --legacy      # use the old objdump-text extractor

Typical decomp workflow:
    # Save reference ASM object before switching main.lsf to C
    cp build/heartgold.us/asm/foo.o /tmp/foo_asm.o

    # Build C version
    make main COMPARE=0

    # Compare
    objdiff.py /tmp/foo_asm.o build/heartgold.us/src/foo.o

Extraction (default, non-legacy):
    Function bytes are sliced directly out of the raw ELF section that each
    symbol lives in (keyed by the symbol's section index + st_value/st_size from
    the symbol table), NOT by parsing objdump disassembly text. MWCC emits every
    function into its own `.text` section, so slicing is per-section. Relocated
    fields (BL/BLX pairs, ARM BL, ABS32 literal words) are masked using the ELF
    relocation tables so they compare equal regardless of the unresolved encoding
    (asm placeholder `f7ff fffe` vs MWCC `f000 f800`, etc.). Because the function
    size comes from the symbol table, inline jump tables ($d data inside .text)
    are counted correctly and no longer produce false SIZE mismatches.
"""

import argparse
import os
import re
import struct
import subprocess
import sys


def run(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout


# ---------------------------------------------------------------------------
# Raw ELF parsing (stdlib only) — the extraction core.
# ---------------------------------------------------------------------------

# Section header types we care about.
SHT_SYMTAB = 2
SHT_RELA = 4
SHT_REL = 9

# Section flags.
SHF_EXECINSTR = 0x4

# Symbol types (st_info & 0xf).
STT_FUNC = 2

# Reserved section indices.
SHN_UNDEF = 0
SHN_LORESERVE = 0xFF00

# ARM relocation types -> width in bytes of the field to mask.
# Any relocated field is a "don't care" for byte comparison because it resolves
# to the same value in both objects regardless of the unresolved encoding.
RELOC_WIDTH = {
    1: 4,    # R_ARM_PC24   (ARM BL, a.k.a. R_ARM_PC22)
    2: 4,    # R_ARM_ABS32  (literal-pool words, data pointers)
    3: 4,    # R_ARM_REL32
    5: 2,    # R_ARM_ABS16
    8: 1,    # R_ARM_ABS8
    10: 4,   # R_ARM_THM_CALL (Thumb BL/BLX pair)
    25: 4,   # R_ARM_BASE_PREL
    26: 4,   # R_ARM_GOT_BREL
    28: 4,   # R_ARM_CALL   (EABI ARM BL)
    29: 4,   # R_ARM_JUMP24
    30: 4,   # R_ARM_THM_JUMP24
    102: 2,  # R_ARM_THM_JUMP11
    103: 2,  # R_ARM_THM_JUMP8
}
# Fallback width for a relocation type we do not explicitly know: mask a full
# 32-bit word. Recorded so the caller can surface it.
RELOC_WIDTH_DEFAULT = 4


class Elf:
    """Minimal ELF32 little-endian reader for object files."""

    def __init__(self, path):
        with open(path, "rb") as f:
            self.data = f.read()
        d = self.data
        if d[:4] != b"\x7fELF":
            raise ValueError(f"{path}: not an ELF file")
        if d[4] != 1 or d[5] != 1:
            raise ValueError(f"{path}: only ELF32 little-endian is supported")
        (_, _, _, _, _, _, e_shoff, _, _, _, _, e_shentsize, e_shnum,
         e_shstrndx) = struct.unpack_from("<16sHHIIIIIHHHHHH", d, 0)

        self.sections = []
        for i in range(e_shnum):
            off = e_shoff + i * e_shentsize
            (sh_name, sh_type, sh_flags, sh_addr, sh_offset, sh_size,
             sh_link, sh_info, sh_addralign, sh_entsize) = struct.unpack_from(
                "<10I", d, off)
            self.sections.append({
                "name_off": sh_name, "type": sh_type, "flags": sh_flags,
                "addr": sh_addr, "offset": sh_offset, "size": sh_size,
                "link": sh_link, "info": sh_info, "entsize": sh_entsize,
            })

        # Resolve section names from the section-header string table.
        shstr = self.sections[e_shstrndx]
        strtab = d[shstr["offset"]:shstr["offset"] + shstr["size"]]
        for s in self.sections:
            s["name"] = self._cstr(strtab, s["name_off"])

    @staticmethod
    def _cstr(buf, off):
        end = buf.find(b"\x00", off)
        return buf[off:end].decode("latin-1")

    def section_bytes(self, idx):
        s = self.sections[idx]
        if s["type"] == 8:  # SHT_NOBITS (.bss) has no file content
            return b"\x00" * s["size"]
        return self.data[s["offset"]:s["offset"] + s["size"]]

    def symbols(self):
        """Yield (name, value, size, shndx, stype) for every symbol."""
        for s in self.sections:
            if s["type"] != SHT_SYMTAB:
                continue
            strsec = self.sections[s["link"]]
            strtab = self.data[strsec["offset"]:strsec["offset"] + strsec["size"]]
            count = s["size"] // 16
            for i in range(count):
                off = s["offset"] + i * 16
                st_name, st_value, st_size, st_info, st_other, st_shndx = \
                    struct.unpack_from("<IIIBBH", self.data, off)
                name = self._cstr(strtab, st_name)
                yield name, st_value, st_size, st_shndx, (st_info & 0xF)

    def relocs_by_section(self):
        """Map target-section-index -> list of (offset, type)."""
        out = {}
        for s in self.sections:
            if s["type"] not in (SHT_REL, SHT_RELA):
                continue
            target = s["info"]
            entsize = 8 if s["type"] == SHT_REL else 12
            count = s["size"] // entsize
            lst = out.setdefault(target, [])
            for i in range(count):
                off = s["offset"] + i * entsize
                r_offset, r_info = struct.unpack_from("<II", self.data, off)
                lst.append((r_offset, r_info & 0xFF))
        return out


def get_functions(objfile):
    """Extract per-function raw bytes and the set of reloc-masked byte offsets.

    Returns (funcs, masks, sizes, unknown, modes):
      funcs[name]  -> bytes of the function (raw, sliced from its ELF section)
      masks[name]  -> set of byte offsets within the function that are relocated
      sizes[name]  -> symbol size in bytes
      unknown      -> set of reloc-type numbers seen but not in the width table
                      (masked at the default width; surfaced so a caller can warn)
      modes[name]  -> sorted list of (rel_offset, kind) ARM/Thumb/data mapping
                      symbols ($a/$t/$d) inside the function, so the lightweight
                      decoder in the --score/--classify path knows how to read
                      each region. Always begins with a (0, kind) entry.
    """
    elf = Elf(objfile)
    relocs = elf.relocs_by_section()
    unknown = set()

    # Collect ARM/Thumb/data mapping symbols per section index. Names are "$a",
    # "$t", "$d" (optionally "$a.0" etc); the second char is the kind.
    mapsyms = {}
    for name, value, size, shndx, stype in elf.symbols():
        if len(name) >= 2 and name[0] == "$" and name[1] in "atd":
            if shndx < SHN_LORESERVE:
                mapsyms.setdefault(shndx, []).append((value, name[1]))

    funcs = {}
    masks = {}
    sizes = {}
    modes = {}

    for name, value, size, shndx, stype in elf.symbols():
        if not name or name.startswith("$"):
            continue
        if size == 0:
            continue
        if shndx == SHN_UNDEF or shndx >= SHN_LORESERVE:
            continue
        sec = elf.sections[shndx]
        if not (sec["flags"] & SHF_EXECINSTR):
            continue
        if stype not in (STT_FUNC, 0):  # FUNC, or NOTYPE in a code section
            continue

        secbytes = elf.section_bytes(shndx)
        start = value - sec["addr"]
        body = bytearray(secbytes[start:start + size])
        if len(body) != size:
            # Truncated / bogus — skip; caller will notice via missing entry.
            continue

        mask = set()
        for r_offset, r_type in relocs.get(shndx, ()):
            if r_offset < value or r_offset >= value + size:
                continue
            width = RELOC_WIDTH.get(r_type)
            if width is None:
                width = RELOC_WIDTH_DEFAULT
                unknown.add(r_type)
            rel = r_offset - value
            for b in range(rel, min(rel + width, size)):
                mask.add(b)

        fmodes = sorted(
            (v - value, k) for v, k in mapsyms.get(shndx, ())
            if value <= v < value + size)
        if not fmodes or fmodes[0][0] != 0:
            # Default to Thumb at the function start (DS ARM9 code is ~99.5%
            # Thumb; a leading $a/$t would already have supplied the real kind).
            fmodes = [(0, "t")] + fmodes

        funcs[name] = bytes(body)
        masks[name] = mask
        sizes[name] = size
        modes[name] = fmodes

    return funcs, masks, sizes, unknown, modes


def trailing_pad_ok(a, b):
    """True if a and b differ only by a trailing `.balign 4, 0` pad.

    A hand-written asm function whose body is 2-mod-4 bytes carries a trailing
    `.balign 4, 0` pad, so its symbol size is the body rounded up to 4. MWCC
    emits the same body into its own per-function `.text` section without that
    pad (the section's alignment supplies it at link time), so the C symbol is
    up to 3 bytes shorter. Bodies are byte-identical; the only difference is the
    zero pad. (Benign for middle functions; the last function in a TU can still
    fail the linked ROM — see pattern objdiff-match-but-compare-fails-trailing-pad.)
    """
    if len(a) == len(b):
        return False
    short, long = (a, b) if len(a) < len(b) else (b, a)
    pad = len(long) - len(short)
    if pad >= 4:
        return False
    if len(long) % 4 != 0 or len(short) % 4 == 0:
        return False
    return all(x == 0 for x in long[len(short):])


def compare_func(asm_bytes, asm_mask, c_bytes, c_mask, verbose=False):
    """Compare two function byte arrays with reloc masking.

    A byte offset masked in EITHER object is treated as don't-care (a relocated
    field resolves to the same value regardless of the unresolved encoding).
    A trailing `.balign 4, 0` pad difference (see trailing_pad_ok) is tolerated:
    the common body is compared and the zero pad ignored.
    Returns (match, real_diffs, masked_diffs) where real_diffs is a list of
    (halfword_index, asm_hw, c_hw) for reporting.
    """
    real_diffs = []
    masked_diffs = 0

    min_len = min(len(asm_bytes), len(c_bytes))
    diff_offsets = []
    for i in range(min_len):
        if asm_bytes[i] == c_bytes[i]:
            continue
        if i in asm_mask or i in c_mask:
            masked_diffs += 1
        else:
            diff_offsets.append(i)

    # Group differing byte offsets into halfwords for report continuity.
    seen_hw = set()
    for off in diff_offsets:
        hw = off // 2
        if hw in seen_hw:
            continue
        seen_hw.add(hw)
        lo = hw * 2
        a = (asm_bytes[lo + 1] << 8) | asm_bytes[lo] if lo + 1 < len(asm_bytes) else asm_bytes[lo]
        c = (c_bytes[lo + 1] << 8) | c_bytes[lo] if lo + 1 < len(c_bytes) else c_bytes[lo]
        real_diffs.append((hw, a, c))

    size_match = len(asm_bytes) == len(c_bytes) or trailing_pad_ok(asm_bytes, c_bytes)
    match = size_match and len(real_diffs) == 0

    if verbose and real_diffs:
        print(f"  {len(real_diffs)} real diffs, {masked_diffs} reloc-masked bytes:")
        for hw_idx, a, c in real_diffs[:20]:
            print(f"    hw {hw_idx}: asm=0x{a:04x} c=0x{c:04x}")
        if len(real_diffs) > 20:
            print(f"    ... and {len(real_diffs) - 20} more")

    return match, real_diffs, masked_diffs


# ---------------------------------------------------------------------------
# Scoring — per-function matched-halfword ratio (permuter fitness, T1.4).
# ---------------------------------------------------------------------------

def func_score(asm_bytes, asm_mask, c_bytes, c_mask):
    """Per-function match score derived from the same masking as compare_func.

    Returns a dict:
      status            match | mismatch | size
      score             matched_halfwords / total_halfwords, 1.0 == byte-identical
                        (size differences drag the ratio down via total_halfwords)
      matched_halfwords number of halfwords that compare equal (masked = equal)
      total_halfwords   max(len_asm, len_c) // 2 (so a longer/shorter side is penalized)
      diff_halfwords    real (non-masked) differing halfwords in the common region
      masked_halfwords  halfwords fully inside a reloc mask (don't-care)
      asm_bytes/c_bytes symbol sizes

    Permuter fitness (T1.4): minimize diff_halfwords (raw, integer, deterministic);
    or equivalently maximize score. diff_halfwords == 0 AND matched==total is a match.
    """
    pad = (len(asm_bytes) != len(c_bytes)) and trailing_pad_ok(asm_bytes, c_bytes)
    match, real_diffs, masked_bytes_n = compare_func(
        asm_bytes, asm_mask, c_bytes, c_mask)

    min_len = min(len(asm_bytes), len(c_bytes))
    max_len = max(len(asm_bytes), len(c_bytes))
    total_hw = max_len // 2 if max_len >= 2 else (1 if max_len else 0)
    diff_hw = len(real_diffs)

    # masked halfwords in the common region (both bytes of a hw touched by a mask
    # count once; approximate by counting hw with any masked byte).
    masked_hw = 0
    for hw in range(min_len // 2):
        lo = hw * 2
        if lo in asm_mask or lo in c_mask or (lo + 1) in asm_mask or (lo + 1) in c_mask:
            masked_hw += 1

    matched_hw = (max_len // 2) - diff_hw - max(0, (max_len - min_len) // 2)
    if pad:
        # benign trailing .balign pad: the missing tail halfwords are matches.
        matched_hw = (min_len // 2) - diff_hw
        total_hw = min_len // 2
    if matched_hw < 0:
        matched_hw = 0
    score = 1.0 if total_hw == 0 else matched_hw / total_hw

    if match:
        status = "match"
    elif (len(asm_bytes) != len(c_bytes)) and not pad:
        status = "size"
    else:
        status = "mismatch"

    return {
        "status": status,
        "score": round(score, 6),
        "matched_halfwords": matched_hw,
        "total_halfwords": total_hw,
        "diff_halfwords": diff_hw,
        "masked_halfwords": masked_hw,
        "asm_bytes": len(asm_bytes),
        "c_bytes": len(c_bytes),
    }


# ---------------------------------------------------------------------------
# Lightweight Thumb / ARM / data decoder for --classify (stdlib only).
#
# We decode into a flat list of "tokens", one per machine instruction (or data
# word). Each token carries enough to answer the classifier's questions:
#   key      raw bytes tuple (reloc-masked to zero) — instruction identity for
#            order/rename-tolerant alignment and multiset comparison
#   kind     't' (Thumb16), 't32' (Thumb BL/BLX pair), 'a' (ARM), 'd' (data)
#   For Thumb16 only, register/immediate decomposition:
#     fmt      encoding-format id
#     regs     tuple of register-field values
#     imm      immediate field value (or None)
#     is_sp    True for SP-relative loads/stores and SP adjusts (spill slots)
#     op       halfword with register fields zeroed, immediate KEPT
#              (op-equal + hw-differ => difference is purely register fields)
#     op_noimm halfword with register AND immediate fields zeroed (the "shape")
# ---------------------------------------------------------------------------

def thumb16_layout(hw):
    """(fmt, reg_fields[(shift,width)...], imm_field(shift,width)|None, is_sp)."""
    if (hw >> 11) in (0b00000, 0b00001, 0b00010):   # LSL/LSR/ASR by imm5
        return ("shift_imm", [(3, 3), (0, 3)], (6, 5), False)
    if (hw >> 11) == 0b00011:                        # ADD/SUB reg or imm3
        op = (hw >> 9) & 0b11
        if op in (0b00, 0b01):
            return ("addsub_reg", [(6, 3), (3, 3), (0, 3)], None, False)
        return ("addsub_imm3", [(3, 3), (0, 3)], (6, 3), False)
    if (hw >> 13) == 0b001:                          # MOV/CMP/ADD/SUB imm8
        return ("alu_imm8", [(8, 3)], (0, 8), False)
    if (hw >> 10) == 0b010000:                       # data-processing reg
        return ("alu_reg", [(3, 3), (0, 3)], None, False)
    if (hw >> 10) == 0b010001:                       # hi-reg ops / BX
        return ("hi_reg", [(3, 4), (0, 3)], None, False)
    if (hw >> 11) == 0b01001:                         # LDR Rd,[PC,#imm]
        return ("ldr_pc", [(8, 3)], (0, 8), False)
    if (hw >> 12) == 0b0101:                          # load/store register offset
        return ("ldst_reg", [(6, 3), (3, 3), (0, 3)], None, False)
    if (hw >> 13) == 0b011:                           # load/store word/byte imm5
        return ("ldst_imm5", [(3, 3), (0, 3)], (6, 5), False)
    if (hw >> 12) == 0b1000:                          # load/store halfword imm5
        return ("ldst_h", [(3, 3), (0, 3)], (6, 5), False)
    if (hw >> 12) == 0b1001:                          # SP-relative load/store
        return ("ldst_sp", [(8, 3)], (0, 8), True)
    if (hw >> 12) == 0b1010:                          # ADD Rd,PC/SP,#imm
        return ("add_pcsp", [(8, 3)], (0, 8), bool((hw >> 11) & 1))
    if (hw >> 8) == 0b10110000:                       # ADD/SUB SP,#imm7
        return ("add_sp", [], (0, 7), True)
    if (hw >> 12) == 0b1011:                          # push/pop + misc
        return ("pushpop", [], (0, 9), False)
    if (hw >> 12) == 0b1100:                          # LDMIA/STMIA
        return ("ldstm", [(8, 3)], (0, 8), False)
    if (hw >> 12) == 0b1101:                           # cond branch / SWI
        if (hw >> 8) == 0b11011111:
            return ("swi", [], (0, 8), False)
        return ("b_cond", [], (0, 8), False)
    if (hw >> 11) == 0b11100:                          # unconditional branch
        return ("b", [], (0, 11), False)
    if (hw >> 11) in (0b11110, 0b11111, 0b11101):      # BL/BLX halfword
        return ("bl_hw", [], (0, 11), False)
    return ("unknown", [], None, False)


def decode_thumb16(hw):
    fmt, regfields, immfield, is_sp = thumb16_layout(hw)
    reg_mask = 0
    regs = []
    for shift, width in regfields:
        m = ((1 << width) - 1) << shift
        reg_mask |= m
        regs.append((hw >> shift) & ((1 << width) - 1))
    imm = None
    imm_mask = 0
    if immfield:
        shift, width = immfield
        imm_mask = ((1 << width) - 1) << shift
        imm = (hw >> shift) & ((1 << width) - 1)
    return {
        "kind": "t", "fmt": fmt, "regs": tuple(regs), "imm": imm,
        "is_sp": is_sp,
        "op": hw & 0xFFFF & ~reg_mask,
        "op_noimm": hw & 0xFFFF & ~reg_mask & ~imm_mask,
        "hw": hw,
    }


def decode_function(data, modes):
    """Decode masked function bytes into a flat token list using mapping symbols.

    `data` must already have reloc-masked byte offsets zeroed so that relocated
    fields (BL targets, ABS32 words) compare equal between the two objects.
    """
    n = len(data)
    segs = []
    for i, (off, kind) in enumerate(modes):
        end = modes[i + 1][0] if i + 1 < len(modes) else n
        if off >= n:
            continue
        segs.append((off, min(end, n), kind))
    if not segs:
        segs = [(0, n, "t")]

    tokens = []
    for start, end, kind in segs:
        p = start
        while p < end:
            if kind == "t":
                if p + 2 > end:  # stray trailing byte
                    tokens.append({"kind": "d", "key": (data[p],)})
                    p += 1
                    continue
                hw = data[p] | (data[p + 1] << 8)
                if (hw >> 11) == 0b11110 and p + 4 <= end:
                    # Thumb BL/BLX: two-halfword instruction.
                    key = tuple(data[p:p + 4])
                    tokens.append({"kind": "t32", "key": key})
                    p += 4
                    continue
                tok = decode_thumb16(hw)
                tok["key"] = (data[p], data[p + 1])
                tokens.append(tok)
                p += 2
            elif kind == "a":
                w = data[p:p + 4]
                tokens.append({"kind": "a", "key": tuple(w)})
                p += 4
            else:  # 'd' data
                w = data[p:p + 4]
                tokens.append({"kind": "d", "key": tuple(w)})
                p += len(w) if len(w) < 4 else 4
    return tokens


def _mask_bytes(b, mask):
    a = bytearray(b)
    for i in mask:
        if i < len(a):
            a[i] = 0
    return bytes(a)


def _align(seq_a, seq_c):
    """Levenshtein alignment over token keys. Returns (ops, distance).

    ops is a list of ('match'|'sub', i, j) / ('del', i, None) / ('ins', None, j).
    """
    na, nc = len(seq_a), len(seq_c)
    dp = [[0] * (nc + 1) for _ in range(na + 1)]
    for i in range(1, na + 1):
        dp[i][0] = i
    for j in range(1, nc + 1):
        dp[0][j] = j
    for i in range(1, na + 1):
        ai = seq_a[i - 1]
        for j in range(1, nc + 1):
            if ai == seq_c[j - 1]:
                dp[i][j] = dp[i - 1][j - 1]
            else:
                dp[i][j] = 1 + min(dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1])
    i, j = na, nc
    ops = []
    while i > 0 or j > 0:
        if i > 0 and j > 0 and seq_a[i - 1] == seq_c[j - 1] and dp[i][j] == dp[i - 1][j - 1]:
            ops.append(("match", i - 1, j - 1))
            i -= 1
            j -= 1
        elif i > 0 and j > 0 and dp[i][j] == dp[i - 1][j - 1] + 1:
            ops.append(("sub", i - 1, j - 1))
            i -= 1
            j -= 1
        elif i > 0 and dp[i][j] == dp[i - 1][j] + 1:
            ops.append(("del", i - 1, None))
            i -= 1
        else:
            ops.append(("ins", None, j - 1))
            j -= 1
    ops.reverse()
    return ops, dp[na][nc]


def _categorize_sub(ta, tc):
    """Classify a single aligned substitution of Thumb16 tokens."""
    if ta.get("kind") != "t" or tc.get("kind") != "t":
        return "other"
    if ta["fmt"] != tc["fmt"]:
        return "other"
    if ta["op"] == tc["op"] and ta["hw"] != tc["hw"]:
        return "rename"          # same opcode + same immediate, register fields differ
    if ta["op_noimm"] == tc["op_noimm"] and ta["regs"] == tc["regs"]:
        if ta["is_sp"]:
            return "spill"       # same shape + same regs, SP-relative immediate differs
        return "imm"             # non-SP immediate change
    return "other"


CLASSIFY_LABELS = (
    "register-rename-equivalent", "schedule-equivalent", "spill-slot-shift",
    "extra/missing-instructions", "size-diff", "logic-diff",
)


def classify_func(asm_bytes, asm_mask, c_bytes, c_mask, asm_modes, c_modes):
    """Label a mismatched function. Order/rename-tolerant.

    Priority: a pure reordering (transposition) is detected before substitution
    analysis so a 2-instruction swap ranks as distance-1; pure register renaming
    reports distance 0 (near-match). Returns a dict with label/distance/details.
    """
    a = _mask_bytes(asm_bytes, asm_mask)
    c = _mask_bytes(c_bytes, c_mask)
    ta = decode_function(a, asm_modes)
    tc = decode_function(c, c_modes)
    ka = [t["key"] for t in ta]
    kc = [t["key"] for t in tc]

    size_diff = (len(asm_bytes) != len(c_bytes)) and not trailing_pad_ok(asm_bytes, c_bytes)

    if ka == kc and not size_diff:
        return {"label": "match", "distance": 0, "n_sub": 0, "n_indel": 0,
                "detail": "byte-identical after masking"}

    # Reordering: identical instruction multiset, different order.
    if not size_diff and sorted(ka) == sorted(kc) and ka != kc:
        moved = sum(1 for x, y in zip(ka, kc) if x != y)
        return {"label": "schedule-equivalent", "distance": max(1, moved // 2),
                "n_sub": 0, "n_indel": 0, "n_moved": moved,
                "detail": f"{moved} instructions reordered (multiset identical)"}

    ops, dist = _align(ka, kc)
    subs = [(i, j) for kind, i, j in ops if kind == "sub"]
    n_ins = sum(1 for o in ops if o[0] == "ins")
    n_del = sum(1 for o in ops if o[0] == "del")
    n_indel = n_ins + n_del
    n_sub = len(subs)

    # An indel is "interior" if aligned instructions match both before and after
    # it — the signature of a hoist / CSE (extra/missing-instructions). Indels
    # only at an end are a plain grow/shrink of the body (size-diff).
    match_idx = [k for k, o in enumerate(ops) if o[0] == "match"]
    interior_indel = False
    if match_idx:
        first_m, last_m = match_idx[0], match_idx[-1]
        interior_indel = any(o[0] in ("ins", "del") and first_m < k < last_m
                             for k, o in enumerate(ops))

    if n_indel > 0 and n_sub == 0 and interior_indel:
        return {"label": "extra/missing-instructions", "distance": n_indel,
                "n_sub": 0, "n_indel": n_indel,
                "detail": f"{n_ins} inserted / {n_del} deleted instructions "
                          f"(interior; common instructions identical)"}

    if size_diff:
        return {"label": "size-diff", "distance": dist, "n_sub": n_sub, "n_indel": n_indel,
                "detail": f"size {len(asm_bytes)} vs {len(c_bytes)} bytes, "
                          f"{n_sub} sub / {n_indel} indel"}

    if n_indel > 0:
        return {"label": "logic-diff", "distance": dist, "n_sub": n_sub, "n_indel": n_indel,
                "detail": f"{n_sub} substitutions + {n_indel} indels"}

    cats = [_categorize_sub(ta[i], tc[j]) for i, j in subs]
    if cats and all(x == "rename" for x in cats):
        return {"label": "register-rename-equivalent", "distance": 0,
                "n_sub": n_sub, "n_indel": 0,
                "detail": f"{n_sub} instructions differ only in register fields"}
    if cats and all(x == "spill" for x in cats):
        return {"label": "spill-slot-shift", "distance": 0,
                "n_sub": n_sub, "n_indel": 0,
                "detail": f"{n_sub} SP-relative immediates shifted"}
    return {"label": "logic-diff", "distance": n_sub, "n_sub": n_sub, "n_indel": 0,
            "detail": f"{n_sub} substitutions ({', '.join(sorted(set(cats)))})"}


# Map a classifier label onto an attempts_log outcome enum value.
CLASSIFY_TO_OUTCOME = {
    "register-rename-equivalent": "regalloc_diff",
    "schedule-equivalent": "instruction_diff",
    "spill-slot-shift": "regalloc_diff",
    "extra/missing-instructions": "instruction_diff",
    "size-diff": "size_mismatch",
    "logic-diff": "instruction_diff",
    "match": "matched",
}


# ---------------------------------------------------------------------------
# Legacy objdump-text extractor (kept behind --legacy for regression parity).
# ---------------------------------------------------------------------------

def get_functions_legacy(objfile):
    """Extract function names, sizes, and raw bytes by parsing objdump text."""
    disasm = run(f"arm-none-eabi-objdump -d {objfile} 2>/dev/null")
    syms = run(f"arm-none-eabi-nm -S {objfile} 2>/dev/null")

    sizes = {}
    for line in syms.strip().split("\n"):
        parts = line.split()
        if len(parts) >= 4 and parts[2].upper() == "T":
            sizes[parts[3]] = int(parts[1], 16)

    funcs = {}
    current_fn = None
    current_bytes = []

    for line in disasm.split("\n"):
        fn_match = re.match(r"^[0-9a-f]+ <(\w+)>:", line)
        if fn_match:
            if current_fn:
                funcs[current_fn] = current_bytes
            current_fn = fn_match.group(1)
            current_bytes = []
            continue

        instr_match = re.match(r"^\s+[0-9a-f]+:\s+((?:[0-9a-f]{2} )+)", line)
        if not instr_match:
            instr_match = re.match(r"^\s+[0-9a-f]+:\s+([0-9a-f]{4}(?:\s+[0-9a-f]{4})*)\s+\t", line)
            if instr_match and current_fn:
                hex_str = instr_match.group(1).strip()
                for word in hex_str.split():
                    current_bytes.extend(int(word[i:i+2], 16) for i in range(0, len(word), 2))
                continue
        if instr_match and current_fn:
            hex_str = instr_match.group(1).strip()
            current_bytes.extend(int(b, 16) for b in hex_str.split())

    if current_fn:
        funcs[current_fn] = current_bytes

    return funcs, sizes


def is_bl_halfword(hw_idx, data):
    """Check if a halfword is part of a BL instruction (Thumb BL is two halfwords)."""
    def hw_at(idx):
        return (data[idx * 2] << 8) | data[idx * 2 + 1]

    if hw_idx + 1 < len(data) // 2:
        hw = hw_at(hw_idx)
        next_hw = hw_at(hw_idx + 1)
        if (hw & 0xF800) == 0xF000 and (next_hw & 0xF800) in (0xF800, 0xE800):
            return True
    if hw_idx > 0:
        prev_hw = hw_at(hw_idx - 1)
        hw = hw_at(hw_idx)
        if (prev_hw & 0xF800) == 0xF000 and (hw & 0xF800) in (0xF800, 0xE800):
            return True
    return False


def compare_bytes_legacy(asm_bytes, c_bytes, name, verbose=False):
    """Legacy comparison: filter BL relocations via the halfword heuristic."""
    real_diffs = []
    bl_diffs = 0

    min_len = min(len(asm_bytes), len(c_bytes))
    num_hw = min_len // 2

    for i in range(num_hw):
        a = (asm_bytes[i * 2 + 1] << 8) | asm_bytes[i * 2]
        c = (c_bytes[i * 2 + 1] << 8) | c_bytes[i * 2]
        if a != c:
            if is_bl_halfword(i, asm_bytes) or is_bl_halfword(i, c_bytes):
                bl_diffs += 1
            else:
                real_diffs.append((i, a, c))

    size_match = len(asm_bytes) == len(c_bytes)
    match = size_match and len(real_diffs) == 0

    if verbose and real_diffs:
        print(f"  {len(real_diffs)} real diffs, {bl_diffs} BL reloc diffs:")
        for hw_idx, a, c in real_diffs[:20]:
            print(f"    hw {hw_idx}: asm=0x{a:04x} c=0x{c:04x}")
        if len(real_diffs) > 20:
            print(f"    ... and {len(real_diffs) - 20} more")

    return match, real_diffs, bl_diffs


# ---------------------------------------------------------------------------
# Section helpers (unchanged).
# ---------------------------------------------------------------------------

def get_sections(objfile):
    """Get section names and sizes from an object file."""
    output = run(f"arm-none-eabi-objdump -h {objfile} 2>/dev/null")
    sections = {}
    for line in output.split("\n"):
        m = re.match(r"\s+\d+\s+(\.[\w.]+)\s+([0-9a-f]+)", line)
        if m:
            name = m.group(1)
            size = int(m.group(2), 16)
            if name in sections:
                sections[name] += size
            else:
                sections[name] = size
    return sections


def get_section_bytes(objfile, section):
    """Extract raw bytes from a named section."""
    raw = subprocess.run(
        ["arm-none-eabi-objcopy", "-O", "binary", "-j", section, objfile, "/dev/stdout"],
        capture_output=True,
    )
    return raw.stdout


def elf_data_section(objfile, secname):
    """Concatenate same-named sections (file order) with an ABS32 reloc mask.

    Returns (bytes, maskset) where maskset holds byte offsets covered by a
    relocation (ABS32 pointer words in .rodata/.data resolve to the same value
    at link time regardless of the placeholder here, so they are don't-care).
    Byte layout mirrors `objcopy -O binary -j <secname>` for the common single-
    section case; multi-section objects concatenate in file order.
    """
    elf = Elf(objfile)
    relocs = elf.relocs_by_section()
    buf = bytearray()
    mask = set()
    for idx, s in enumerate(elf.sections):
        if s["name"] != secname:
            continue
        base = len(buf)
        b = elf.section_bytes(idx)
        buf.extend(b)
        for r_offset, r_type in relocs.get(idx, ()):
            w = RELOC_WIDTH.get(r_type, RELOC_WIDTH_DEFAULT)
            for k in range(r_offset, min(r_offset + w, len(b))):
                mask.add(base + k)
    return bytes(buf), mask


# Section-name prefixes MWCC/GCC place read-only / initialized data in. A .rodata
# TU can be split into `.rodata`, `.rodata.str1.4`, etc.; consolidated data files
# use the plain names. We treat both `.rodata*` and `.data*` families.
def _is_data_secname(name, kind):
    """kind in ('rodata','data'). True for that section family."""
    if kind == "rodata":
        return name == ".rodata" or name.startswith(".rodata.")
    return name == ".data" or name.startswith(".data.")


def elf_data_symbols(objfile):
    """Per-object rodata/data layout for symbol-addressed comparison.

    Returns (secs, syms):
      secs[shndx] -> (masked_bytes, maskset, kind)  every .rodata*/.data* section
      syms[name]  -> {shndx, value, size, kind}  for OBJECT/NOTYPE symbols that
                     live in a .rodata*/.data* section and have nonzero size
    A "masked byte" is one covered by a relocation (a don't-care pointer word).
    """
    elf = Elf(objfile)
    relocs = elf.relocs_by_section()
    secs = {}
    for idx, s in enumerate(elf.sections):
        for kind in ("rodata", "data"):
            if _is_data_secname(s["name"], kind):
                b = elf.section_bytes(idx)
                mask = set()
                for r_offset, r_type in relocs.get(idx, ()):
                    w = RELOC_WIDTH.get(r_type, RELOC_WIDTH_DEFAULT)
                    for k in range(r_offset, min(r_offset + w, len(b))):
                        mask.add(k)
                secs[idx] = (b, mask, kind)
    syms = {}
    for name, value, size, shndx, stype in elf.symbols():
        if not name or name.startswith("$") or name.startswith("."):
            continue
        if size == 0 or shndx not in secs:
            continue
        if stype not in (STT_FUNC, 0, 1):  # NOTYPE, OBJECT, or (defensively) FUNC
            continue
        # Prefer the largest symbol at a given name so a consolidated container
        # (sRodata) wins over a zero-alias / dwarf shadow.
        prev = syms.get(name)
        if prev and prev["size"] >= size:
            continue
        syms[name] = {"shndx": shndx, "value": value, "size": size,
                      "kind": secs[shndx][2]}
    return secs, syms


def _kind_blob(secs, kind):
    """Concatenate all sections of a kind (shndx order) -> (bytes, maskset)."""
    buf = bytearray()
    mask = set()
    for idx in sorted(secs):
        b, m, k = secs[idx]
        if k != kind:
            continue
        base = len(buf)
        buf.extend(b)
        for off in m:
            mask.add(base + off)
    return bytes(buf), mask


def _diff_slice(a_bytes, a_mask, c_bytes, c_mask):
    """Compare two equal-region byte slices with union masking.

    Returns (ok, size_mismatch, diff_offsets) where diff_offsets are the
    non-masked differing byte offsets (relative to the slice start).
    """
    if len(a_bytes) != len(c_bytes):
        return False, True, []
    diffs = []
    for i in range(len(a_bytes)):
        if a_bytes[i] == c_bytes[i]:
            continue
        if i in a_mask or i in c_mask:
            continue
        diffs.append(i)
    return (len(diffs) == 0), False, diffs


# ---------------------------------------------------------------------------
# Extraction dispatch shared by the comparison commands.
# ---------------------------------------------------------------------------

def _load(objfile, legacy):
    """Return (funcs, masks) where masks is {} in legacy mode."""
    if legacy:
        funcs, _ = get_functions_legacy(objfile)
        return funcs, {}
    funcs, masks, _, unknown, _ = get_functions(objfile)
    if unknown:
        names = ", ".join(f"0x{t:x}" for t in sorted(unknown))
        print(f"warning: {objfile}: unknown reloc type(s) {names} masked at "
              f"{RELOC_WIDTH_DEFAULT} bytes", file=sys.stderr)
    return funcs, masks


def _compare(name, asm_funcs, asm_masks, c_funcs, c_masks, legacy, verbose=False):
    asm_b = asm_funcs[name]
    c_b = c_funcs[name]
    if legacy:
        return compare_bytes_legacy(asm_b, c_b, name, verbose=verbose)
    return compare_func(asm_b, asm_masks.get(name, set()), c_b,
                        c_masks.get(name, set()), verbose=verbose)


# ---------------------------------------------------------------------------
# Commands.
# ---------------------------------------------------------------------------

def cmd_compare(args):
    asm_funcs, asm_masks = _load(args.asm_obj, args.legacy)
    c_funcs, c_masks = _load(args.c_obj, args.legacy)

    all_names = list(asm_funcs.keys())
    c_only = [n for n in c_funcs if n not in asm_funcs]

    matched = 0
    mismatched = []
    total = len(all_names)

    for name in all_names:
        if name not in c_funcs:
            mismatched.append((name, "MISSING in C"))
            continue

        asm_b = asm_funcs[name]
        c_b = c_funcs[name]

        if len(asm_b) != len(c_b):
            if args.legacy or not trailing_pad_ok(asm_b, c_b):
                mismatched.append((name, f"SIZE {len(asm_b)} vs {len(c_b)} bytes"))
                continue
            # Benign trailing .balign pad — fall through and compare the body.

        match, real_diffs, _ = _compare(name, asm_funcs, asm_masks, c_funcs, c_masks, args.legacy)
        if match:
            matched += 1
        else:
            mismatched.append((name, f"{len(real_diffs)} real byte diffs"))

    print(f"\n{'=' * 60}")
    print(f"  {matched}/{total} functions MATCH")
    print(f"{'=' * 60}")

    if mismatched:
        print(f"\nMismatched ({len(mismatched)}):")
        for name, reason in mismatched:
            print(f"  {name}: {reason}")

    if c_only:
        print(f"\nC-only functions ({len(c_only)}): {', '.join(c_only)}")

    # Section comparison
    asm_sec = get_sections(args.asm_obj)
    c_sec = get_sections(args.c_obj)
    sec_issues = []
    for sec in [".text", ".rodata", ".data", ".bss"]:
        a = asm_sec.get(sec, 0)
        c = c_sec.get(sec, 0)
        if a != c:
            sec_issues.append(f"  {sec}: asm=0x{a:x} c=0x{c:x} (diff={c - a:+d})")
    if sec_issues:
        print(f"\nSection size differences:")
        for s in sec_issues:
            print(s)
        if not mismatched:
            # Every function reports MATCH but a section size differs. With raw
            # nm-sized extraction the jump-table false SIZE class is gone, but a
            # real 2-mod-4 trailing-.balign shortfall still fails the linked ROM
            # SHA1 (see unk_0203A3B0). Only `chiri pkg -- compare` is authoritative.
            print(
                "\n  !!  All functions MATCH but a section size differs — NOT conclusive.\n"
                "      Likely a real trailing-pad shortfall on a 2-mod-4 function;\n"
                "      only `chiri pkg -- compare` is authoritative.\n"
                "      See patterns objdiff-match-but-compare-fails-trailing-pad /\n"
                "      trailing-pad-fix-inline-asm-lsl-r0."
            )

    return 0 if not mismatched else 1


def cmd_summary(args):
    asm_funcs, asm_masks = _load(args.asm_obj, args.legacy)
    c_funcs, c_masks = _load(args.c_obj, args.legacy)

    ok_count = 0
    fail_count = 0

    for name in asm_funcs:
        if name not in c_funcs:
            print(f"MISS  {name}")
            fail_count += 1
            continue
        asm_b = asm_funcs[name]
        c_b = c_funcs[name]
        pad = False
        if len(asm_b) != len(c_b):
            if args.legacy or not trailing_pad_ok(asm_b, c_b):
                print(f"SIZE  {name} ({len(asm_b)} vs {len(c_b)})")
                fail_count += 1
                continue
            pad = True
        match, real_diffs, _ = _compare(name, asm_funcs, asm_masks, c_funcs, c_masks, args.legacy)
        if match:
            if pad:
                print(f" PAD  {name} (body match, +{abs(len(asm_b) - len(c_b))}b .balign)")
            else:
                print(f"  OK  {name}")
            ok_count += 1
        else:
            print(f"DIFF  {name} ({len(real_diffs)} diffs)")
            fail_count += 1

    # Also verify data sections match. .rodata/.data may hold ABS32 pointer
    # words that are relocated (a data pointer resolves to the same value at link
    # time regardless of the placeholder here), so mask those before comparing —
    # the same don't-care treatment compare_func applies to .text reloc fields.
    #
    # Bytes come from the raw ELF (elf_data_section), not `objcopy -O binary
    # /dev/stdout`: on macOS the latter returns empty under subprocess capture,
    # which silently disabled this whole check. The legacy path keeps objcopy so
    # the --legacy verdict is byte-for-byte the historical one.
    sec_ok = True
    for sec in [".rodata", ".data", ".bss"]:
        if args.legacy:
            asm_b = get_section_bytes(args.asm_obj, sec)
            c_b = get_section_bytes(args.c_obj, sec)
            mask = set()
        else:
            asm_b, amask = elf_data_section(args.asm_obj, sec)
            c_b, cmask = elf_data_section(args.c_obj, sec)
            mask = amask | cmask
        if asm_b == c_b:
            continue
        if len(asm_b) != len(c_b):
            print(f"SECT  {sec}: size mismatch (asm={len(asm_b)}, c={len(c_b)})")
            sec_ok = False
            continue
        real = sum(1 for i, (a, c) in enumerate(zip(asm_b, c_b))
                   if a != c and i not in mask)
        if real == 0:
            continue  # every differing byte is a relocated (don't-care) word
        note = " after reloc masking" if mask else ""
        print(f"SECT  {sec}: {real} byte diffs{note} (size={len(asm_b)})")
        sec_ok = False

    total = ok_count + fail_count
    if sec_ok and fail_count == 0:
        print(f"\n{ok_count}/{total} functions + data sections MATCH")
        return 0
    if not sec_ok:
        print(f"\n{ok_count}/{total} functions OK, DATA SECTIONS MISMATCH")
    else:
        print(f"\n{ok_count}/{total} functions OK, {fail_count} mismatched")
    return 1


def _autodetect_s(*objfiles):
    """Infer asm/<name>.s from a built object path (build/.../<name>.o)."""
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    root = os.path.dirname(root)  # repo root (tools/decomp_harness -> repo)
    for o in objfiles:
        stem = os.path.splitext(os.path.basename(o))[0]
        cand = os.path.join(root, "asm", stem + ".s")
        if os.path.exists(cand):
            return cand
    return None


def cmd_rodata(args):
    """Symbol-by-symbol .rodata/.data comparison (folds in verify_rodata.py).

    Two modes, auto-selected:
      per-symbol  both objects expose the same named data symbols (the ext-const
                  / flat-symbol case) — slice each symbol from its own object by
                  the symbol table and compare, reloc-masked.
      map-driven  the layout is taken from a `.s` file (the one-struct /
                  consolidated case, where the src collapsed to sRodata/sData) —
                  slice each `.s` symbol from the concatenated section blob at
                  (retail_addr - section_base) on both sides.
    """
    asm_secs, asm_syms = elf_data_symbols(args.asm_obj)
    c_secs, c_syms = elf_data_symbols(args.c_obj)

    shared = sorted(n for n in asm_syms if n in c_syms
                    and asm_syms[n]["kind"] == c_syms[n]["kind"])
    records = []  # (name, kind, addr_or_off, size, ok, size_mismatch, diffs)

    if len(shared) >= 2:
        mode = "per-symbol (shared symbol tables)"
        for n in shared:
            a = asm_syms[n]
            c = c_syms[n]
            ab, am, _ = asm_secs[a["shndx"]]
            cb, cm, _ = c_secs[c["shndx"]]
            asl = ab[a["value"]:a["value"] + a["size"]]
            aslm = {i - a["value"] for i in am
                    if a["value"] <= i < a["value"] + a["size"]}
            csl = cb[c["value"]:c["value"] + c["size"]]
            cslm = {i - c["value"] for i in cm
                    if c["value"] <= i < c["value"] + c["size"]}
            ok, sz, diffs = _diff_slice(asl, aslm, csl, cslm)
            records.append((n, a["kind"], a["value"], a["size"], ok, sz, diffs,
                            len(csl)))
    else:
        map_path = args.map or _autodetect_s(args.asm_obj, args.c_obj)
        if not map_path or not os.path.exists(map_path):
            print("error: --rodata needs shared data symbols or a --map <asm/x.s> "
                  f"(auto-detect failed for {args.asm_obj} / {args.c_obj})",
                  file=sys.stderr)
            return 2
        sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
        import gen_rodata_pass
        layout = gen_rodata_pass.symbol_layout(map_path)
        mode = f"map-driven ({os.path.relpath(map_path)})"
        blobs = {}
        for kind in ("rodata", "data"):
            ab, am = _kind_blob(asm_secs, kind)
            cb, cm = _kind_blob(c_secs, kind)
            blobs[kind] = (ab, am, cb, cm)
            if kind in layout["bases"] and len(ab) != len(cb):
                print(f"SECT  .{kind}: size mismatch asm={len(ab)} c={len(cb)} "
                      "(layout diverged before per-symbol check)")
        for s in layout["symbols"]:
            kind = s["kind"]
            ab, am, cb, cm = blobs[kind]
            off = s["offset"]
            asl = ab[off:off + s["size"]]
            aslm = {i - off for i in am if off <= i < off + s["size"]}
            csl = cb[off:off + s["size"]]
            cslm = {i - off for i in cm if off <= i < off + s["size"]}
            ok, sz, diffs = _diff_slice(asl, aslm, csl, cslm)
            records.append((s["name"], kind, s["addr"], s["size"], ok, sz, diffs,
                            len(csl)))

    ok_n = sum(1 for r in records if r[4])
    bad = [r for r in records if not r[4]]
    print(f"rodata/.data symbol comparison: {mode}")
    print(f"  asm: {args.asm_obj}")
    print(f"  c:   {args.c_obj}\n")
    if args.verbose:
        for name, kind, addr, size, ok, sz, diffs, csize in records:
            tag = " OK " if ok else "DIFF"
            print(f"  {tag}  {name:<28} .{kind:<6} @0x{addr:08X} [{size}B]")
    for name, kind, addr, size, ok, sz, diffs, csize in bad:
        if sz:
            print(f"DIFF  {name} @0x{addr:08X}: SIZE asm={size} c={csize}")
        else:
            head = ", ".join(f"+0x{d:X}" for d in diffs[:12])
            more = f" (+{len(diffs)-12} more)" if len(diffs) > 12 else ""
            print(f"DIFF  {name} @0x{addr:08X}: {len(diffs)} byte diff(s) at {head}{more}")
    print(f"\n{'=' * 60}")
    print(f"  {ok_n}/{len(records)} rodata/.data symbols MATCH"
          + (f", {len(bad)} DIFF" if bad else ""))
    print(f"{'=' * 60}")
    return 0 if not bad else 1


def _load_full(objfile):
    """Non-legacy load returning (funcs, masks, modes) for score/classify."""
    funcs, masks, _, unknown, modes = get_functions(objfile)
    if unknown:
        names = ", ".join(f"0x{t:x}" for t in sorted(unknown))
        print(f"warning: {objfile}: unknown reloc type(s) {names} masked at "
              f"{RELOC_WIDTH_DEFAULT} bytes", file=sys.stderr)
    return funcs, masks, modes


def cmd_score(args):
    """Per-function matched-halfword ratio. --json emits the permuter schema."""
    asm_funcs, asm_masks, _ = _load_full(args.asm_obj)
    c_funcs, c_masks, _ = _load_full(args.c_obj)

    results = {}
    for name in asm_funcs:
        if name not in c_funcs:
            results[name] = {"status": "missing", "score": 0.0,
                             "matched_halfwords": 0,
                             "total_halfwords": len(asm_funcs[name]) // 2,
                             "diff_halfwords": len(asm_funcs[name]) // 2,
                             "masked_halfwords": 0,
                             "asm_bytes": len(asm_funcs[name]), "c_bytes": 0}
            continue
        results[name] = func_score(asm_funcs[name], asm_masks.get(name, set()),
                                   c_funcs[name], c_masks.get(name, set()))

    scores = [r["score"] for r in results.values()]
    matched = sum(1 for r in results.values() if r["status"] == "match")
    overall = {
        "functions": len(results),
        "matched": matched,
        "mean_score": round(sum(scores) / len(scores), 6) if scores else 1.0,
        "min_score": round(min(scores), 6) if scores else 1.0,
    }

    if args.json:
        import json
        print(json.dumps({"asm_obj": args.asm_obj, "c_obj": args.c_obj,
                          "functions": results, "overall": overall}, indent=2))
        return 0 if matched == len(results) else 1

    print(f"{'Function':<44} {'Score':>7} {'Matched/Total':>16} {'Status':>9}")
    print("-" * 80)
    for name, r in sorted(results.items(), key=lambda kv: kv[1]["score"]):
        print(f"{name:<44} {r['score']*100:6.2f}% "
              f"{r['matched_halfwords']:>7}/{r['total_halfwords']:<8} {r['status']:>9}")
    print("-" * 80)
    print(f"{matched}/{overall['functions']} match | mean "
          f"{overall['mean_score']*100:.2f}% | min {overall['min_score']*100:.2f}%")
    return 0 if matched == len(results) else 1


def cmd_classify(args):
    """Label mismatched functions with a distance metric. --json for machine use."""
    asm_funcs, asm_masks, asm_modes = _load_full(args.asm_obj)
    c_funcs, c_masks, c_modes = _load_full(args.c_obj)

    names = [args.function] if args.function else list(asm_funcs)
    results = {}
    for name in names:
        if name not in asm_funcs or name not in c_funcs:
            results[name] = {"label": "size-diff" if name in asm_funcs else "missing",
                             "distance": -1, "n_sub": 0, "n_indel": 0,
                             "detail": "function missing in one object"}
            continue
        asm_b, c_b = asm_funcs[name], c_funcs[name]
        # Only classify actual mismatches; a matching function is labelled "match".
        match, _, _ = compare_func(asm_b, asm_masks.get(name, set()), c_b,
                                   c_masks.get(name, set()))
        size_ok = len(asm_b) == len(c_b) or trailing_pad_ok(asm_b, c_b)
        if match and size_ok:
            results[name] = {"label": "match", "distance": 0, "n_sub": 0,
                             "n_indel": 0, "detail": "byte-identical"}
            continue
        results[name] = classify_func(asm_b, asm_masks.get(name, set()), c_b,
                                      c_masks.get(name, set()),
                                      asm_modes.get(name, [(0, "t")]),
                                      c_modes.get(name, [(0, "t")]))

    if args.attempts_json:
        import json
        # Emit attempts_log-ready records (one JSON object per line) for the
        # mismatched functions, ready to pipe into `attempts_log.py add --json -`.
        for name, r in results.items():
            if r["label"] == "match":
                continue
            print(json.dumps({
                "file": args.attempts_file or "",
                "function": name,
                "approach": args.approach or "(auto: from objdiff --classify)",
                "outcome": CLASSIFY_TO_OUTCOME.get(r["label"], "instruction_diff"),
                "classify_label": r["label"],
                "diff_signature": r["detail"],
            }))
        return 0

    if args.json:
        import json
        print(json.dumps({"asm_obj": args.asm_obj, "c_obj": args.c_obj,
                          "functions": results}, indent=2))
        return 0

    print(f"{'Function':<40} {'Label':<28} {'Dist':>4}  Detail")
    print("-" * 100)
    for name, r in sorted(results.items(), key=lambda kv: kv[1].get("distance", 0)):
        if r["label"] == "match":
            continue
        print(f"{name:<40} {r['label']:<28} {r['distance']:>4}  {r['detail']}")
    return 0


def cmd_disasm(args):
    asm_funcs, _ = _load(args.asm_obj, args.legacy)
    c_funcs, _ = _load(args.c_obj, args.legacy)
    fn = args.function

    if fn not in asm_funcs:
        print(f"Function {fn} not found in ASM object")
        return 1
    if fn not in c_funcs:
        print(f"Function {fn} not found in C object")
        return 1

    for label, objfile in [("ASM", args.asm_obj), ("C", args.c_obj)]:
        disasm = run(f"arm-none-eabi-objdump -d {objfile} 2>/dev/null")
        in_fn = False
        print(f"\n=== {label}: {fn} ===")
        for line in disasm.split("\n"):
            if re.match(rf"^[0-9a-f]+ <{re.escape(fn)}>:", line):
                in_fn = True
                print(line)
                continue
            if in_fn:
                if re.match(r"^[0-9a-f]+ <\w+>:", line):
                    break
                if line.strip():
                    print(line)

    return 0


def cmd_bytes(args):
    asm_funcs, asm_masks = _load(args.asm_obj, args.legacy)
    c_funcs, c_masks = _load(args.c_obj, args.legacy)
    fn = args.function

    if fn not in asm_funcs or fn not in c_funcs:
        print(f"Function {fn} not found in both objects")
        return 1

    asm_b = asm_funcs[fn]
    c_b = c_funcs[fn]
    if len(asm_b) != len(c_b):
        if args.legacy or not trailing_pad_ok(asm_b, c_b):
            print(f"{fn}: SIZE mismatch (asm={len(asm_b)}, c={len(c_b)})")
            return 1
        print(f"{fn}: +{abs(len(asm_b) - len(c_b))}b trailing .balign pad (body compared)")

    match, real_diffs, _ = _compare(fn, asm_funcs, asm_masks, c_funcs, c_masks, args.legacy, verbose=True)
    if match and not real_diffs:
        pass  # silent = match (used in scripted loops)
    return 0 if match else 1


def cmd_sections(args):
    asm_sec = get_sections(args.asm_obj)
    c_sec = get_sections(args.c_obj)

    all_secs = sorted(set(list(asm_sec.keys()) + list(c_sec.keys())))
    print(f"{'Section':<20} {'ASM':>10} {'C':>10} {'Diff':>10}")
    print("-" * 52)
    for sec in all_secs:
        a = asm_sec.get(sec, 0)
        c = c_sec.get(sec, 0)
        marker = " *" if a != c else ""
        print(f"{sec:<20} {a:>10} {c:>10} {c - a:>+10}{marker}")


def main():
    parser = argparse.ArgumentParser(description="Compare ASM and C object files function-by-function")
    parser.add_argument("asm_obj", help="Path to ASM .o file")
    parser.add_argument("c_obj", help="Path to C .o file")
    parser.add_argument("--legacy", action="store_true",
                        help="Use the old objdump-text extractor + BL heuristic")

    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--summary", action="store_true", help="One-line-per-function output")
    mode.add_argument("--disasm", metavar="FN", dest="disasm_fn", help="Show disassembly for a specific function")
    mode.add_argument("--bytes", metavar="FN", dest="bytes_fn", help="Byte-level diff for a specific function")
    mode.add_argument("--sections", action="store_true", help="Compare section sizes only")
    mode.add_argument("--score", action="store_true",
                      help="Per-function matched-halfword ratio (permuter fitness)")
    mode.add_argument("--classify", nargs="?", const="", metavar="FN", dest="classify_fn",
                      help="Label mismatched functions; optional FN restricts to one")
    mode.add_argument("--rodata", action="store_true",
                      help="Per-symbol .rodata/.data byte comparison (reloc-masked)")

    parser.add_argument("--map", dest="map", metavar="ASM_S",
                        help="With --rodata: asm/<name>.s giving the symbol layout "
                             "(auto-detected from the object path if omitted)")
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="With --rodata: list every symbol (OK and DIFF)")
    parser.add_argument("--json", action="store_true",
                        help="Machine-readable JSON for --score / --classify")
    parser.add_argument("--attempts-json", action="store_true",
                        help="With --classify: emit attempts_log records (one JSON/line) "
                             "ready for `attempts_log.py add --json -`")
    parser.add_argument("--attempts-file", help="asm/<name>.s to stamp into --attempts-json records")
    parser.add_argument("--approach", help="approach string for --attempts-json records")

    args = parser.parse_args()

    for path in (args.asm_obj, args.c_obj):
        if not os.path.exists(path):
            print(f"error: no such object file: {path}", file=sys.stderr)
            return 2

    if args.summary:
        return cmd_summary(args)
    elif args.disasm_fn:
        args.function = args.disasm_fn
        return cmd_disasm(args)
    elif args.bytes_fn:
        args.function = args.bytes_fn
        return cmd_bytes(args)
    elif args.sections:
        return cmd_sections(args)
    elif args.rodata:
        return cmd_rodata(args)
    elif args.score:
        return cmd_score(args)
    elif args.classify_fn is not None:
        args.function = args.classify_fn or None
        return cmd_classify(args)
    else:
        return cmd_compare(args)


if __name__ == "__main__":
    sys.exit(main() or 0)
