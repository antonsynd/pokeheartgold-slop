#!/usr/bin/env python3
"""Compare ASM and C object files function-by-function.

Usage:
    objdiff.py <asm_obj> <c_obj>              # full comparison report
    objdiff.py <asm_obj> <c_obj> --summary    # one-line-per-function
    objdiff.py <asm_obj> <c_obj> --disasm <fn> # show both disassemblies side-by-side
    objdiff.py <asm_obj> <c_obj> --bytes <fn>  # byte-level diff for one function
    objdiff.py --sections <asm_obj> <c_obj>    # compare section sizes
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

    Returns (funcs, masks, sizes, unknown):
      funcs[name]  -> bytes of the function (raw, sliced from its ELF section)
      masks[name]  -> set of byte offsets within the function that are relocated
      sizes[name]  -> symbol size in bytes
      unknown      -> set of reloc-type numbers seen but not in the width table
                      (masked at the default width; surfaced so a caller can warn)
    """
    elf = Elf(objfile)
    relocs = elf.relocs_by_section()
    unknown = set()

    funcs = {}
    masks = {}
    sizes = {}

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

        funcs[name] = bytes(body)
        masks[name] = mask
        sizes[name] = size

    return funcs, masks, sizes, unknown


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


# ---------------------------------------------------------------------------
# Extraction dispatch shared by the comparison commands.
# ---------------------------------------------------------------------------

def _load(objfile, legacy):
    """Return (funcs, masks) where masks is {} in legacy mode."""
    if legacy:
        funcs, _ = get_functions_legacy(objfile)
        return funcs, {}
    funcs, masks, _, unknown = get_functions(objfile)
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

    # Also verify data sections match
    sec_ok = True
    for sec in [".rodata", ".data", ".bss"]:
        asm_b = get_section_bytes(args.asm_obj, sec)
        c_b = get_section_bytes(args.c_obj, sec)
        if asm_b != c_b:
            if len(asm_b) != len(c_b):
                print(f"SECT  {sec}: size mismatch (asm={len(asm_b)}, c={len(c_b)})")
            else:
                diffs = sum(1 for a, c in zip(asm_b, c_b) if a != c)
                print(f"SECT  {sec}: {diffs} byte diffs (size={len(asm_b)})")
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
    else:
        return cmd_compare(args)


if __name__ == "__main__":
    sys.exit(main() or 0)
