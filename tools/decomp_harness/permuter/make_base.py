#!/usr/bin/env python3
"""
make_base.py — build a permuter-parseable base.c for one function (ROADMAP T1.4).

The decomp-permuter parses base.c with pycparser, mutates the target function's
AST, and unparses candidates. base.c is NEVER compiled by MWCC — the real compile
happens in the job's compile.sh, which splices the candidate's function back into
the real seed TU (full SDK headers) before invoking MWCC. So base.c only has to
(1) PARSE in pycparser and (2) preserve the function text verbatim (real type and
symbol names) so the spliced result compiles identically.

pycparser parses base.c, and the permuter's TYPE-AWARE randomization passes need
to resolve member accesses (`self->phase`) — so structs the function reads via
`->` / `.` must be DEFINED with typed members, not just forward-declared. We emit:

    * a fixed prelude of this project's scalar typedefs (u8..u64, s8..s64, fx*, BOOL),
    * the REAL `typedef struct X {...} X;` definition (auto-scanned from include/ and
      the seed's own header) for every struct type the function references, pulled in
      transitively for nested struct-typed members,
    * an opaque `typedef struct X X;` for any remaining type name used only as a
      pointer or whose definition wasn't found,
    * then the extracted function definition verbatim.

base.c is NEVER MWCC-compiled — the job's compile.sh splices the candidate's
function back into the real seed TU (full SDK headers) before compiling, so the
scored bytes stay IPA-faithful. The full-SDK preprocessing path (decomp-permuter's
import.py) fails on this tree's headers (pycparser chokes on SDK function-pointer
typedefs), so this minimal, always-parseable context is the supported route.
Types the scan misses can be forced defined via --struct-source, or forced opaque
via --extra-typedef NAME (repeatable).

    make_base.py <seed.c> <func> [-o base.c] [--extra-typedef NAME ...]
                 [--struct-source DIR_OR_FILE ...]
"""

import argparse
import os
import re
import sys

from fn_extract import find_def

# Project scalar typedefs — always safe to predeclare (unused ones are harmless).
SCALAR_PRELUDE = """\
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef signed long long s64;
typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned int vu32;
typedef signed int fx32;
typedef signed short fx16;
typedef int BOOL;
typedef unsigned int size_t;
typedef signed short fx16x2;
#define NULL 0
"""

SCALAR_NAMES = {
    "u8", "u16", "u32", "u64", "s8", "s16", "s32", "s64",
    "vu8", "vu16", "vu32", "fx32", "fx16", "BOOL", "size_t", "fx16x2",
}

C_KEYWORDS = {
    "void", "char", "short", "int", "long", "float", "double", "signed",
    "unsigned", "const", "volatile", "struct", "union", "enum", "static",
    "extern", "register", "auto", "return", "if", "else", "for", "while", "do",
    "switch", "case", "default", "break", "continue", "goto", "sizeof",
    "typedef", "asm", "inline", "restrict", "_Bool",
}


DEFAULT_STRUCT_SOURCES = ["include", "src"]


def _iter_source_files(roots):
    for root in roots:
        if os.path.isfile(root):
            yield root
        elif os.path.isdir(root):
            for dp, _, fns in os.walk(root):
                for fn in fns:
                    if fn.endswith((".h", ".c")):
                        yield os.path.join(dp, fn)


def find_struct_def(name, roots):
    """Return the source text of `typedef struct name {...} name;` if found."""
    pat = re.compile(
        r"typedef\s+struct\s+" + re.escape(name) +
        r"?\s*\{", re.S)
    # be precise: match `typedef struct <name> {` OR `typedef struct {` closed by `} name;`
    open_pat = re.compile(r"typedef\s+struct\s+(\w+)?\s*\{")
    for path in _iter_source_files(roots):
        try:
            text = open(path, encoding="utf-8", errors="ignore").read()
        except OSError:
            continue
        for m in open_pat.finditer(text):
            # brace-match
            i = text.index("{", m.start())
            depth = 0
            j = i
            while j < len(text):
                if text[j] == "{":
                    depth += 1
                elif text[j] == "}":
                    depth -= 1
                    if depth == 0:
                        break
                j += 1
            # after `}` comes the typedef alias(es) up to ';'
            semi = text.index(";", j)
            alias = text[j + 1:semi].strip()
            tag = m.group(1)
            if alias == name or tag == name:
                return text[m.start():semi + 1]
    return None


def split_struct_def(name, struct_text):
    """Split `typedef struct [tag] {...} name;` into a forward typedef and a
    tagged body definition.

    Returns (forward, body) where forward is `typedef struct name name;` and
    body is `struct name {...};`. Emitting every forward declaration before any
    body lets structs reference each other through pointers in any order --
    including cycles -- which a dependency sort over by-value members alone
    cannot express.
    """
    open_m = re.search(r"typedef\s+struct\s+(\w+)?\s*\{", struct_text)
    if open_m is None:
        return None, struct_text
    brace = struct_text.index("{", open_m.start())
    body = struct_text[brace:struct_text.rindex("}") + 1]
    return f"typedef struct {name} {name};", f"struct {name} {body};"


def struct_member_typenames(struct_text: str, pointers=False):
    """Type identifiers used as struct member types.

    pointers=False -> only NON-pointer members (these need a FULL definition for
    type inference). pointers=True -> also pointer members (these only need a
    forward declaration so pycparser can parse the member)."""
    names = set()
    body = struct_text[struct_text.index("{") + 1: struct_text.rindex("}")]
    for line in body.split(";"):
        line = line.strip()
        if not line:
            continue
        m = re.match(
            r"(?:struct\s+)?([A-Za-z_]\w*)\s+(\**)\s*([A-Za-z_]\w*)(\[[^\]]*\])?$",
            line)
        if not m:
            continue
        is_ptr = bool(m.group(2))
        if is_ptr and not pointers:
            continue
        names.add(m.group(1))
    return names


CALL_NONFUNC = C_KEYWORDS | {"sizeof"}


def called_functions_in(body: str, exclude):
    """Identifiers called as functions (name followed by '(')."""
    names = set()
    for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\(", body):
        n = m.group(1)
        if n not in CALL_NONFUNC and n not in exclude:
            names.add(n)
    return names


def find_prototype(name, roots):
    """Return a top-level prototype `... name(...);` for `name`, or None.

    Matches a declaration (ends in ';'), not a definition (ends in '{')."""
    pat = re.compile(r"([A-Za-z_][^;{}\n]*?\b" + re.escape(name) + r"\s*\([^;{}]*\))\s*;")
    for path in _iter_source_files(roots):
        try:
            text = open(path, encoding="utf-8", errors="ignore").read()
        except OSError:
            continue
        for m in pat.finditer(text):
            proto = m.group(1).strip()
            # reject if this is actually a definition body follows (handled by ';')
            if proto.startswith(("if", "for", "while", "switch", "return")):
                continue
            # reject a local initialized declaration -- `T *v = name(args);` also
            # ends in ');' but declares v, not name. A real prototype has nothing
            # before the callee except its return type.
            if "=" in proto[:proto.index(name)]:
                continue
            return proto + ";"
    return None


def type_names_in(body: str):
    """Identifiers used in a type position within a function body/signature."""
    names = set()
    # declaration / parameter:  T name  |  T *name  |  T **name  (terminated by ,;=) )
    for m in re.finditer(r"\b([A-Za-z_]\w*)\s+\**\s*[A-Za-z_]\w*\s*[;,=)\[]", body):
        names.add(m.group(1))
    # cast:  (T)  |  (T *)  |  (T **)
    for m in re.finditer(r"\(\s*([A-Za-z_]\w*)\s*\**\s*\)", body):
        names.add(m.group(1))
    # sizeof(T)
    for m in re.finditer(r"\bsizeof\s*\(\s*([A-Za-z_]\w*)\s*\**\s*\)", body):
        names.add(m.group(1))
    return names


def strip_comments(text: str) -> str:
    """Remove /* */ and // comments (pycparser via perm_pycparser rejects them).
    String/char literals are preserved."""
    out = []
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if c in "\"'":
            q = c
            out.append(c)
            i += 1
            while i < n:
                out.append(text[i])
                if text[i] == "\\" and i + 1 < n:
                    out.append(text[i + 1])
                    i += 2
                    continue
                if text[i] == q:
                    i += 1
                    break
                i += 1
            continue
        if c == "/" and i + 1 < n and text[i + 1] == "/":
            while i < n and text[i] != "\n":
                i += 1
            continue
        if c == "/" and i + 1 < n and text[i + 1] == "*":
            i += 2
            while i + 1 < n and not (text[i] == "*" and text[i + 1] == "/"):
                i += 1
            i += 2
            continue
        out.append(c)
        i += 1
    return "".join(out)


def make_base(seed_source: str, func: str, extra=(), struct_roots=None):
    loc = find_def(seed_source, func)
    if loc is None:
        raise ValueError(f"make_base: '{func}' not defined in seed")
    fn_text = strip_comments(loc[2])
    struct_roots = list(struct_roots or DEFAULT_STRUCT_SOURCES)

    referenced = {
        n for n in (type_names_in(fn_text) | set(extra))
        if n not in SCALAR_NAMES and n not in C_KEYWORDS
    }

    # Resolve struct definitions transitively (for member type inference).
    defined = {}   # name -> def text, ordered by dependency
    order = []
    worklist = list(referenced)
    seen = set()
    while worklist:
        name = worklist.pop(0)
        if name in seen:
            continue
        seen.add(name)
        d = find_struct_def(name, struct_roots)
        if d is not None:
            defined[name] = d
            for dep in struct_member_typenames(d):
                if (dep not in SCALAR_NAMES and dep not in C_KEYWORDS
                        and dep not in seen):
                    worklist.append(dep)
    # topological-ish order: define dependencies before dependents
    for name in list(defined):
        for dep in struct_member_typenames(defined[name]):
            if dep in defined and dep not in order:
                order.append(dep)
        if name not in order:
            order.append(name)

    # Any type name referenced inside an embedded struct (including pointer
    # members) must at least be forward-declared so pycparser can parse it.
    for d in defined.values():
        for dep in struct_member_typenames(d, pointers=True):
            if dep not in SCALAR_NAMES and dep not in C_KEYWORDS:
                seen.add(dep)

    # Declare called functions so the permuter's type-aware passes (perm_inline,
    # perm_temp_for_expr) can resolve the callee's return type instead of
    # KeyError-ing on an absent name. Pull the real prototype from headers/src.
    prototypes = []
    for fn in sorted(called_functions_in(fn_text, {func})):
        proto = find_prototype(fn, struct_roots)
        if proto is None:
            continue
        prototypes.append(proto)
        # type names used in the prototype's params/return must be declared too
        for tn in type_names_in(proto):
            if (tn not in SCALAR_NAMES and tn not in C_KEYWORDS
                    and tn not in defined):
                seen.add(tn)

    opaque = sorted(n for n in seen if n not in defined)

    parts = [
        "/* auto-generated permuter base.c — parse-only, never MWCC-compiled. */",
        SCALAR_PRELUDE.rstrip(),
    ]
    if opaque:
        parts.append("")
        parts.append("/* opaque stand-ins (pointer-only / definition not found) */")
        parts.extend(f"typedef struct {n} {n};" for n in opaque)
    if order:
        parts.append("")
        parts.append("/* real struct definitions (for type-aware permuter passes) */")
        bodies = []
        for n in order:
            fwd, body = split_struct_def(n, strip_comments(defined[n]).rstrip())
            if fwd is None:
                bodies.append(body)
                continue
            parts.append(fwd)
            bodies.append(body)
        parts.extend(bodies)
    if prototypes:
        parts.append("")
        parts.append("/* called-function prototypes (callee return types for passes) */")
        parts.extend(strip_comments(p).strip() for p in prototypes)
    parts.append("")
    parts.append(fn_text.rstrip())
    parts.append("")
    return "\n".join(parts), opaque, order


def main():
    ap = argparse.ArgumentParser(description="Build a permuter base.c.")
    ap.add_argument("seed", help="seed C (make_seed.py output)")
    ap.add_argument("func", help="target function name")
    ap.add_argument("-o", "--out", help="output path (default stdout)")
    ap.add_argument("--extra-typedef", action="append", default=[],
                    metavar="NAME", help="extra type name to predeclare (repeatable)")
    ap.add_argument("--struct-source", action="append", default=None,
                    metavar="DIR_OR_FILE",
                    help="where to scan for struct defs (default: include, src)")
    args = ap.parse_args()

    seed = open(args.seed, encoding="utf-8").read()
    try:
        base, opaque, defined = make_base(
            seed, args.func, args.extra_typedef, args.struct_source)
    except ValueError as e:
        sys.exit(str(e))

    if args.out is None:
        sys.stdout.write(base)
    else:
        open(args.out, "w", encoding="utf-8").write(base)
        print(f"make_base: wrote {args.out}; defined structs: "
              f"{', '.join(defined) or '(none)'}; opaque: "
              f"{', '.join(opaque) or '(none)'}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
