#!/usr/bin/env python3
"""Regression harness for the objdiff.py raw-section rewrite (ROADMAP T1.2).

Compares the OLD (--legacy objdump-text) verdict against the NEW (raw-section +
reloc-masking) verdict for every comparison pair that exists on disk, without
building anything. Produces a parity table.

Verdict per pair = the sorted list of (function -> {MATCH,SIZE,DIFF,MISS}) plus a
section-mismatch flag, reduced to a single label:
    ALLMATCH  every function MATCH and data sections equal
    <detail>  otherwise (counts of SIZE/DIFF/MISS)

Pairs enumerated:
  1. self-compares: every build/heartgold.us/asm/*.o vs itself (extraction smoke
     test; must be ALLMATCH under both paths).
  2. reference pairs: scratchpad *_asm.o vs the matching build src .o.
"""

import glob
import os
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
OBJDIFF = os.path.join(ROOT, "tools", "decomp_harness", "objdiff.py")
SCRATCH = ("/private/tmp/claude-501/-Users-anton-Documents-github-pokeheartgold-slop/"
           "4044610c-6b31-4e6a-9a08-4809f54fa392/scratchpad")


def verdict(asm_o, c_o, legacy):
    """Run objdiff --summary and reduce to a compact verdict string."""
    cmd = [sys.executable, OBJDIFF, asm_o, c_o, "--summary"]
    if legacy:
        cmd.append("--legacy")
    out = subprocess.run(cmd, capture_output=True, text=True).stdout
    n_ok = n_size = n_diff = n_miss = n_sect = 0
    for line in out.splitlines():
        s = line.strip()
        if s.startswith("OK ") or s.startswith("PAD "):
            n_ok += 1  # PAD = body match with only a benign trailing .balign pad
        elif s.startswith("SIZE "):
            n_size += 1
        elif s.startswith("DIFF "):
            n_diff += 1
        elif s.startswith("MISS "):
            n_miss += 1
        elif s.startswith("SECT "):
            n_sect += 1
    # ALLMATCH = no mismatches of any kind. n_ok may be 0 for a data-only object
    # (no sized text symbols) — that is still a trivially-matching self-compare.
    if n_size == n_diff == n_miss == n_sect == 0:
        return "ALLMATCH", (n_ok, n_size, n_diff, n_miss, n_sect)
    return (f"ok={n_ok} size={n_size} diff={n_diff} miss={n_miss} sect={n_sect}",
            (n_ok, n_size, n_diff, n_miss, n_sect))


def main():
    pairs = []  # (label, asm_o, c_o)

    # 1. self-compares of every pending asm object.
    for o in sorted(glob.glob(os.path.join(ROOT, "build/heartgold.us/asm/**/*.o"),
                              recursive=True)):
        pairs.append(("self:" + os.path.relpath(o, ROOT), o, o))

    # 2. reference pairs from scratchpad.
    refs = {
        "unk_0200B150": "build/heartgold.us/src/unk_0200B150.o",
        "bagbd": None,   # resolved below
        "unk_02005D10": "build/heartgold.us/src/unk_02005D10.o",
        "unk_0202FBCC": "build/heartgold.us/src/unk_0202FBCC.o",
    }
    for stem, rel in refs.items():
        for suffix in ("_asm.o", "_noipa.o"):
            asm_o = os.path.join(SCRATCH, stem + suffix)
            if not os.path.exists(asm_o):
                continue
            if rel is None:
                cand = glob.glob(os.path.join(ROOT, f"build/heartgold.us/**/{stem}.o"),
                                 recursive=True)
                rel_path = cand[0] if cand else None
            else:
                rel_path = os.path.join(ROOT, rel)
            if rel_path and os.path.exists(rel_path):
                pairs.append((f"ref:{stem}{suffix}", asm_o, rel_path))

    print(f"Enumerated {len(pairs)} pairs\n")

    identical = 0
    flips = []          # verdict changed
    self_fail = []      # self-compare not ALLMATCH under new path
    for label, asm_o, c_o in pairs:
        old, _ = verdict(asm_o, c_o, legacy=True)
        new, _ = verdict(asm_o, c_o, legacy=False)
        is_self = label.startswith("self:")
        if is_self and new != "ALLMATCH":
            self_fail.append((label, new))
        if old == new:
            identical += 1
        else:
            flips.append((label, old, new))

    print(f"Verdict-identical: {identical}/{len(pairs)}")
    print(f"Flipped:           {len(flips)}")
    print(f"Self-compare fails under NEW path: {len(self_fail)}\n")

    if flips:
        print("=== FLIPS (old -> new) ===")
        for label, old, new in flips:
            flag = ""
            # A flip TO all-match (or fewer SIZE) on the new path is the expected
            # jump-table class; anything else is worth flagging.
            if "ALLMATCH" in new or ("size=0" in new and "size=" in old and "size=0" not in old):
                flag = "  [jump-table? size->match]"
            print(f"  {label}\n     old: {old}\n     new: {new}{flag}")

    if self_fail:
        print("\n=== SELF-COMPARE FAILURES UNDER NEW PATH (BLOCKERS) ===")
        for label, new in self_fail:
            print(f"  {label}: {new}")

    return 0 if not self_fail else 1


if __name__ == "__main__":
    sys.exit(main())
