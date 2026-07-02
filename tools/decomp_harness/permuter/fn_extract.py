#!/usr/bin/env python3
"""
fn_extract.py — locate and extract a single top-level C function DEFINITION.

Shared by make_base.py (build the permuter seed) and the compile wrapper (splice a
mutated candidate back into the real TU). Brace-matched, comment/string aware enough
for this codebase's style. Not a full C parser — it finds `<ret> name(<args>) {...}`
at file scope and returns its exact source span.
"""

import re
from typing import Optional, Tuple


def _skip_ws(s, i):
    while i < len(s) and s[i] in " \t\r\n":
        i += 1
    return i


def find_def(source: str, func: str) -> Optional[Tuple[int, int, str]]:
    """Return (start, end, text) of the definition of `func`, or None.

    start..end is a half-open span over `source`; text == source[start:end]."""
    for m in re.finditer(r"\b" + re.escape(func) + r"\s*\(", source):
        # Walk back to the start of the declaration line (previous ';', '}',
        # '#'-directive end, or start of file). This captures the return type
        # and any qualifiers (static, asm, inline...).
        p = m.start()
        b = p
        while b > 0 and source[b - 1] not in ";}":
            # stop if we back into a preprocessor line
            if source[b - 1] == "\n":
                ls = source.rfind("\n", 0, b - 1) + 1
                if source[ls:b - 1].lstrip().startswith("#"):
                    b = b  # keep; directive belongs above, break the walk
                    break
            b -= 1
        start = _skip_ws(source, b)
        # find the matching ')' of the arg list
        i = m.end() - 1  # at '('
        depth = 0
        while i < len(source):
            c = source[i]
            if c == "(":
                depth += 1
            elif c == ")":
                depth -= 1
                if depth == 0:
                    break
            i += 1
        i = _skip_ws(source, i + 1)
        # a definition has a '{' here (declarations have ';')
        if i >= len(source) or source[i] != "{":
            continue
        # brace-match the body
        depth = 0
        j = i
        while j < len(source):
            c = source[j]
            if c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0:
                    j += 1
                    break
            j += 1
        return start, j, source[start:j]
    return None


def splice(target_source: str, func: str, new_def: str) -> str:
    """Replace the definition of `func` in target_source with new_def."""
    loc = find_def(target_source, func)
    if loc is None:
        raise ValueError(f"fn_extract.splice: '{func}' not defined in target")
    start, end, _ = loc
    return target_source[:start] + new_def + target_source[end:]


if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        sys.exit("usage: fn_extract.py <file.c> <func>")
    txt = open(sys.argv[1]).read()
    loc = find_def(txt, sys.argv[2])
    if loc is None:
        sys.exit(f"not found: {sys.argv[2]}")
    sys.stdout.write(loc[2] + "\n")
