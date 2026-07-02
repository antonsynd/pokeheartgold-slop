#!/usr/bin/env python3
"""
make_seed.py — promote one function's #ifdef NONMATCHING C body to live (ROADMAP T1.4).

A NONMATCHING function ships as:

    #ifdef NONMATCHING
    static void f(...) { ...C reconstruction... }   # <- the search target
    #else
    // note
    static asm void f(...) { ...handwritten asm... } # <- the retail match
    #endif

The default build (no -DNONMATCHING) compiles the #else asm, so the committed TU
trivially matches — that is the correct BASELINE but not what the permuter optimizes.

The permuter seed must have the TARGET function's C body ACTIVE while every OTHER
NONMATCHING block in the TU stays on its #else asm (so those siblings keep matching
and the sibling guard stays green). This script rewrites exactly the block that
defines <func>: the whole `#ifdef NONMATCHING ... #else ... #endif` is replaced by
just the C (ifdef) branch, unconditionally. All other blocks are byte-for-byte
untouched.

    make_seed.py src/<name>.c <func> [-o seed.c]     # -o omitted -> stdout

Exit codes: 0 ok · 2 usage · 3 no NONMATCHING block defines <func>.
"""

import argparse
import re
import sys


def _defines_func(text, func):
    # A C function definition of `func` at top level: `... func ( ... ) {`
    # (declarations end in `;`, definitions in `{`). Match the opening.
    pat = re.compile(r"(^|\n)[^\n#][^\n]*?\b" + re.escape(func) + r"\s*\(", re.S)
    for m in pat.finditer(text):
        # ensure this is a definition (a `{` before the next `;` after the `)`)
        tail = text[m.end():]
        depth = 0
        for ch in tail:
            if ch == "(":
                depth += 1
            elif ch == ")":
                if depth == 0:
                    # found matching close of the arg list
                    rest = tail[tail.index(ch) + 1:]
                    break
                depth -= 1
        # simpler: just require a `{` appears before a `;` in the near tail
        seg = tail[:400]
        if "{" in seg and (";" not in seg or seg.index("{") < seg.index(";")):
            return True
    return False


def promote(source, func):
    """Return source with the NONMATCHING block defining `func` collapsed to its
    #ifdef (C) branch. Raises ValueError if no such block is found."""
    lines = source.splitlines(keepends=True)
    out = []
    i = 0
    n = len(lines)
    promoted = False
    while i < n:
        line = lines[i]
        if re.match(r"\s*#\s*ifdef\s+NONMATCHING\b", line):
            # collect the full block: ifdef .. (else) .. endif, tracking nesting
            start = i
            depth = 1
            else_idx = None
            j = i + 1
            while j < n and depth > 0:
                lj = lines[j]
                if re.match(r"\s*#\s*if(def|ndef)?\b", lj):
                    depth += 1
                elif re.match(r"\s*#\s*endif\b", lj):
                    depth -= 1
                    if depth == 0:
                        break
                elif depth == 1 and re.match(r"\s*#\s*else\b", lj):
                    else_idx = j
                j += 1
            endif_idx = j  # index of the matching #endif
            if_branch = lines[start + 1:(else_idx if else_idx is not None else endif_idx)]
            if_text = "".join(if_branch)
            if _defines_func(if_text, func):
                # Emit ONLY the C branch, unconditionally (no #ifdef/#else/#endif).
                out.extend(if_branch)
                promoted = True
            else:
                # untouched block
                out.extend(lines[start:endif_idx + 1])
            i = endif_idx + 1
            continue
        out.append(line)
        i += 1
    if not promoted:
        raise ValueError(
            f"make_seed: no `#ifdef NONMATCHING` block defining '{func}' found")
    return "".join(out)


def main():
    ap = argparse.ArgumentParser(description="Promote a NONMATCHING C body to live.")
    ap.add_argument("tu", help="src/<name>.c")
    ap.add_argument("func", help="target function name")
    ap.add_argument("-o", "--out", help="output path (default: stdout)")
    args = ap.parse_args()

    if not (args.tu.startswith("src/") or args.tu.endswith(".c")):
        sys.exit(f"make_seed: '{args.tu}' does not look like a src/*.c path")
    try:
        with open(args.tu, encoding="utf-8") as f:
            source = f.read()
    except OSError as e:
        sys.exit(f"make_seed: cannot read {args.tu}: {e}")

    try:
        seed = promote(source, args.func)
    except ValueError as e:
        sys.exit(str(e))
    if args.out is None:
        sys.stdout.write(seed)
    else:
        with open(args.out, "w", encoding="utf-8") as f:
            f.write(seed)
        print(f"make_seed: wrote {args.out} ({args.func} promoted to live C)",
              file=sys.stderr)
    return 3 if False else 0


if __name__ == "__main__":
    sys.exit(main())
