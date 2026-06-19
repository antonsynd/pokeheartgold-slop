#!/usr/bin/env python3
"""Compare ASM and C object files function-by-function.

Usage:
    objdiff.py <asm_obj> <c_obj>              # full comparison report
    objdiff.py <asm_obj> <c_obj> --summary    # one-line-per-function
    objdiff.py <asm_obj> <c_obj> --disasm <fn> # show both disassemblies side-by-side
    objdiff.py <asm_obj> <c_obj> --bytes <fn>  # byte-level diff for one function
    objdiff.py --sections <asm_obj> <c_obj>    # compare section sizes

Typical decomp workflow:
    # Save reference ASM object before switching main.lsf to C
    cp build/heartgold.us/asm/foo.o /tmp/foo_asm.o

    # Build C version
    make main COMPARE=0

    # Compare
    objdiff.py /tmp/foo_asm.o build/heartgold.us/src/foo.o
"""

import argparse
import re
import subprocess
import sys


def run(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout


def get_functions(objfile):
    """Extract function names, sizes, and raw bytes from an object file."""
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
    """Check if a halfword is part of a BL instruction (Thumb BL is two halfwords).

    get_functions() stores each instruction's bytes in objdump *display* order
    (high byte first, e.g. "f7ff" -> [0xf7, 0xff]), so the true instruction
    halfword value is recovered big-endian: (data[2i] << 8) | data[2i+1].
    Reading it little-endian here would byte-swap the value (0xf7ff -> 0xfff7)
    and the BL masks below would never match, misclassifying every unrelocated
    BL placeholder (asm "f7ff fffe" vs MWCC "f000 f800") as a real diff.
    """
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


def compare_bytes(asm_bytes, c_bytes, name, verbose=False):
    """Compare two byte arrays, filtering BL relocations. Returns (match, real_diffs, bl_diffs)."""
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


def cmd_compare(args):
    asm_funcs, asm_sizes = get_functions(args.asm_obj)
    c_funcs, c_sizes = get_functions(args.c_obj)

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
            mismatched.append((name, f"SIZE {len(asm_b)} vs {len(c_b)} bytes"))
            continue

        match, real_diffs, bl_diffs = compare_bytes(asm_b, c_b, name)
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
            # The trap: every function reports MATCH, but a section size differs.
            # objdiff masks trailing function padding and mis-sizes inline jump
            # tables, so this is INCONCLUSIVE either way — it may be a benign
            # jump-table disasm artifact, OR a real 2-mod-4 trailing-.balign
            # shortfall that still fails the linked ROM SHA1 (see unk_0203A3B0).
            print(
                "\n  !!  All functions MATCH but a section size differs — NOT conclusive.\n"
                "      objdiff cannot tell a benign jump-table artifact from a real\n"
                "      trailing-pad shortfall. Only `chiri pkg -- compare` is authoritative.\n"
                "      If .text is short on a 2-mod-4 function, see patterns\n"
                "      objdiff-match-but-compare-fails-trailing-pad / trailing-pad-fix-inline-asm-lsl-r0."
            )

    return 0 if not mismatched else 1


def get_section_bytes(objfile, section):
    """Extract raw bytes from a named section."""
    raw = subprocess.run(
        ["arm-none-eabi-objcopy", "-O", "binary", "-j", section, objfile, "/dev/stdout"],
        capture_output=True,
    )
    return raw.stdout


def cmd_summary(args):
    asm_funcs, _ = get_functions(args.asm_obj)
    c_funcs, _ = get_functions(args.c_obj)

    ok_count = 0
    fail_count = 0

    for name in asm_funcs:
        if name not in c_funcs:
            print(f"MISS  {name}")
            fail_count += 1
            continue
        asm_b = asm_funcs[name]
        c_b = c_funcs[name]
        if len(asm_b) != len(c_b):
            print(f"SIZE  {name} ({len(asm_b)} vs {len(c_b)})")
            fail_count += 1
            continue
        match, real_diffs, _ = compare_bytes(asm_b, c_b, name)
        if match:
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
    else:
        if not sec_ok:
            print(f"\n{ok_count}/{total} functions OK, DATA SECTIONS MISMATCH")
        else:
            print(f"\n{ok_count}/{total} functions OK, {fail_count} mismatched")


def cmd_disasm(args):
    asm_funcs, _ = get_functions(args.asm_obj)
    c_funcs, _ = get_functions(args.c_obj)
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
    asm_funcs, _ = get_functions(args.asm_obj)
    c_funcs, _ = get_functions(args.c_obj)
    fn = args.function

    if fn not in asm_funcs or fn not in c_funcs:
        print(f"Function {fn} not found in both objects")
        return 1

    asm_b = asm_funcs[fn]
    c_b = c_funcs[fn]
    if len(asm_b) != len(c_b):
        print(f"{fn}: SIZE mismatch (asm={len(asm_b)}, c={len(c_b)})")
        return 1

    match, real_diffs, bl_diffs = compare_bytes(asm_b, c_b, fn, verbose=True)
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

    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--summary", action="store_true", help="One-line-per-function output")
    mode.add_argument("--disasm", metavar="FN", dest="disasm_fn", help="Show disassembly for a specific function")
    mode.add_argument("--bytes", metavar="FN", dest="bytes_fn", help="Byte-level diff for a specific function")
    mode.add_argument("--sections", action="store_true", help="Compare section sizes only")

    args = parser.parse_args()

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
