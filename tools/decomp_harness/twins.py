#!/usr/bin/env python3
"""Platinum twins and verified non-matching drafts for asm functions.

HeartGold is built on Platinum's engine and pret/pokeplatinum is fully
decompiled, so most asm functions here have a Platinum counterpart ("twin")
whose C is a far better starting point than the raw asm. Two inputs:

  platinum_twins.tsv   — 10,601 HG -> Platinum pairs (issue #1, arvindfroi).
                         Columns: heartgold_function, platinum_function,
                         platinum_file, found_by.
  nonmatching/         — clang-compiled, behaviour-verified (NOT byte-matching)
                         C for 15,756 of 16,654 asm functions (PRs #2, #4).
                         VERIFIED.tsv gives PASS/FAIL per function and its file:
                         <asm>_partNN.c (PR #2), written/<asm>/<fn>.c
                         (model-written) or ghidra/<asm>/<fn>.c (raw Ghidra C);
                         <file>.notes.md records struct layouts and header
                         declarations that disagree with asm. REMAINING.tsv lists
                         the functions with no verified C.

Twin confidence, from found_by:
  high — calls (callee sequence matched), called (callee of a matched pair),
         same (identical name)
  low  — between, order (filled in by link order between matched pairs; often
         shifted inside a file — about half were wrong in parts of overlay 7).
         Confirm a low twin against the asm's callees before trusting it.

Twins are candidates, not proofs: HG's version can add a call or move a field.
Drafts are untrusted starting points; matching still needs mwcc + objdiff.

Platinum source is read from a pokeplatinum checkout: --platinum, else
$POKEPLATINUM, else ../pokeplatinum next to this repo. The TSV names Platinum
functions/files as of a specific revision; every twin was verified to extract
at PLATINUM_REV below, and --show warns when the checkout is elsewhere:
  git clone https://github.com/pret/pokeplatinum.git ../pokeplatinum
  git -C ../pokeplatinum checkout c248fb3f8cc9934ded800e489567c5c0eeee92eb

Usage:
  python3 tools/decomp_harness/twins.py file asm/<name>.s [--show] [--high]
  python3 tools/decomp_harness/twins.py func <hg_function> [--show]
  python3 tools/decomp_harness/twins.py stats [--top N]
  python3 tools/decomp_harness/twins.py prune asm/<name>.s   # after a match
"""

import argparse
import csv
import os
import re
import subprocess
import sys
from pathlib import Path

from asmscan import FUNC_START_RE, parse_lsf

HARNESS = Path(__file__).resolve().parent
ROOT = HARNESS.parent.parent
TWINS_TSV = HARNESS / "platinum_twins.tsv"
NONMATCHING = ROOT / "nonmatching"
PLATINUM_REV = "c248fb3f8cc9934ded800e489567c5c0eeee92eb"
XMAP = ROOT / "build" / "heartgold.us" / "main.elf.xMAP"
XMAP_RE = re.compile(r"^\s+([0-9A-F]{8}) [0-9A-F]{8} \S+\s+([A-Za-z_]\w*)\t")
# Ghidra's declaration of a callee or global it knows only by address
GHIDRA_ALIAS_RE = re.compile(r"\b(\w+)\s*(?:\([^)]*\))?\s*__asm__\(\"sub_([0-9A-Fa-f]{8})\"\)")

HIGH = {"calls", "called", "same"}


def tier(found_by):
    return "high" if found_by in HIGH else "low"


def load_twins():
    with open(TWINS_TSV, newline="") as f:
        return {row["heartgold_function"]: row for row in csv.DictReader(f, delimiter="\t")}


def load_drafts():
    """function -> {file, verdict} from nonmatching/VERIFIED.tsv (empty if absent)."""
    path = NONMATCHING / "VERIFIED.tsv"
    if not path.exists():
        return {}
    with open(path, newline="") as f:
        return {row["function"]: row for row in csv.DictReader(f, delimiter="\t")}


def asm_functions(asm_path):
    path = ROOT / asm_path
    if not path.exists():
        sys.exit(f"{asm_path}: no such file")
    out = []
    for line in path.read_text(errors="replace").splitlines():
        m = FUNC_START_RE.match(line)
        if m:
            out.append(m.group(2))
    return out


def pending_asm_files():
    """asm files still linked as asm in main.lsf, in link order."""
    out = []
    for obj in parse_lsf(ROOT):
        path = f"asm/{obj['name']}.s"
        if obj["kind"] == "asm" and (ROOT / path).exists() and path not in out:
            out.append(path)
    return out


def platinum_root(arg):
    if arg:
        if not (Path(arg) / "src").is_dir():
            sys.exit(f"--platinum {arg}: not a pokeplatinum checkout (no src/)")
        root = Path(arg)
    else:
        root = next((Path(c) for c in (os.environ.get("POKEPLATINUM"), ROOT.parent / "pokeplatinum")
                     if c and (Path(c) / "src").is_dir()), None)
    if root is not None:
        head = subprocess.run(["git", "-C", str(root), "rev-parse", "HEAD"],
                              capture_output=True, text=True).stdout.strip()
        if head != PLATINUM_REV:
            print(f"warning: {root} is at {head[:9] or '?'}, twins were verified at {PLATINUM_REV[:9]};"
                  " renamed/moved functions may not be found", file=sys.stderr)
    return root


def strip_code(text):
    """C text with comments and string/char literals blanked; line breaks and line lengths are kept."""
    out, i, n = [], 0, len(text)
    while i < n:
        if text.startswith("//", i):
            j = text.find("\n", i)
            j = n if j < 0 else j
        elif text.startswith("/*", i):
            j = text.find("*/", i + 2)
            j = n if j < 0 else j + 2
        elif text[i] in "\"'":
            j = i + 1
            while j < n and text[j] not in (text[i], "\n"):
                j += 2 if text[j] == "\\" else 1
            j = min(j + 1, n)
        else:
            out.append(text[i])
            i += 1
            continue
        out.append(re.sub(r"[^\n]", " ", text[i:j]))
        i = j
    return "".join(out)


def counted_lines(code_lines):
    """Whether each line's braces count: not a preprocessor line, and not in an #else/#elif branch,
    so that branches which each open a brace are counted once."""
    counted, skipping, continued = [], [], False
    for line in code_lines:
        directive = re.match(r"\s*#\s*(\w+)", line)
        if continued or directive:
            if directive and not continued:
                word = directive.group(1)
                if word in ("if", "ifdef", "ifndef"):
                    skipping.append(False)
                elif word.startswith(("else", "elif")) and skipping:
                    skipping[-1] = True
                elif word == "endif" and skipping:
                    skipping.pop()
            continued = line.rstrip().endswith("\\")
            counted.append(False)
            continue
        counted.append(not any(skipping))
    return counted


def platinum_source(root, rel_file, func):
    """Extract one function definition from a Platinum C file, or None.

    Braces are counted with comments and literals removed and only in the first branch of #if/#else,
    and a match counts only where the name is declared (nothing but specifiers before it) and its
    parameter list is followed by a body."""
    path = root / rel_file
    if not path.exists():
        return None
    lines = path.read_text(errors="replace").splitlines()
    code = strip_code("\n".join(lines)).splitlines()
    counted = counted_lines(code)
    # Specifiers then the name; Ghidra may put the return type on the line above and the
    # parameter list on the line below.
    head = re.compile(r"^((?:[A-Za-z_][^=(),;]*?\b)?)" + re.escape(func) + r"\s*(\(|$)")
    for i, line in enumerate(code):
        match = head.match(line)
        if not counted[i] or not match:
            continue
        # Walk the parameter list to its close, then to the first character after it.
        opened = match.group(2) == "("
        depth, j, at, after = int(opened), i, match.end(), None
        while j < len(code) and after is None:
            text = code[j] if counted[j] else ""
            for k in range(at, len(text)):
                if not opened:
                    if text[k] == "(":
                        opened, depth = True, 1
                    elif not text[k].isspace():
                        after = (j, k, text[k])
                        break
                elif depth:
                    depth += {"(": 1, ")": -1}.get(text[k], 0)
                elif not text[k].isspace():
                    after = (j, k, text[k])
                    break
            j, at = (j + 1, 0) if after is None else (j, at)
        if after is None or after[2] != "{":
            continue  # a prototype, a call or a macro invocation, not a definition
        depth = 0
        for j in range(after[0], len(code)):
            if not counted[j]:
                continue
            text = code[j][after[1]:] if j == after[0] else code[j]
            depth += text.count("{") - text.count("}")
            if depth == 0:
                start = i
                if not match.group(1) and i and counted[i - 1] and re.fullmatch(r"[A-Za-z_][\w \t*]*", code[i - 1].strip()):
                    start = i - 1  # return type on its own line
                return "\n".join(lines[start:j + 1])
    return None


def describe(fn, twins, drafts):
    t = twins.get(fn)
    d = drafts.get(fn)
    twin = f"{t['platinum_function']} ({t['platinum_file']}) [{tier(t['found_by'])}:{t['found_by']}]" if t else "-"
    draft = f"nonmatching/{d['file']} {d['verdict']}" if d else "-"
    return twin, draft


_xmap = None


def xmap_names():
    """address -> symbol names from the last HeartGold link map (empty if never built)."""
    global _xmap
    if _xmap is None:
        _xmap = {}
        if XMAP.exists():
            for line in XMAP.read_text(errors="replace").splitlines():
                m = XMAP_RE.match(line)
                if m:
                    _xmap.setdefault(int(m.group(1), 16), set()).add(m.group(2))
    return _xmap


def asm_body_names(asm_path, fn):
    """Identifiers between fn's func_start and func_end (its callees and literal-pool words)."""
    path = ROOT / asm_path
    if not path.exists():
        return set()
    names, inside = set(), False
    for line in path.read_text(errors="replace").splitlines():
        m = FUNC_START_RE.match(line)
        if m:
            inside = m.group(2) == fn
        elif inside and re.match(r"\s*(?:arm|thumb|non_word_aligned_thumb)_func_end\b", line):
            break
        elif inside:
            names.update(re.findall(r"[A-Za-z_]\w*", line.split(";")[0]))
    return names


def resolve_ghidra_aliases(text, declarations, asm_names):
    """Rename Ghidra's address-named callees and globals (`func_0x020d4994() __asm__("sub_020D4994")`)
    to the HeartGold symbol at that address in the link map. Overlays share addresses, so a name
    the asm itself references wins; an address with several candidates and none referenced is
    left alone."""
    renames = {}
    for ident, addr in GHIDRA_ALIAS_RE.findall(declarations):
        names = xmap_names().get(int(addr, 16), set())
        named = names & asm_names
        pick = named if named else names
        if len(pick) == 1:
            renames[ident] = next(iter(pick))
    for ident, name in renames.items():
        text = re.sub(r"\b" + re.escape(ident) + r"\b", name, text)
    return text


def print_twin(fn, twins, root, high_only=False):
    t = twins.get(fn)
    if not t or (high_only and tier(t["found_by"]) != "high"):
        return
    if root is None:
        print(f"    (no pokeplatinum checkout; set $POKEPLATINUM or clone to {ROOT.parent / 'pokeplatinum'})")
        return
    src = platinum_source(root, t["platinum_file"], t["platinum_function"])
    print(f"    --- twin {t['platinum_file']}: {t['platinum_function']}")
    print("\n".join("    " + l for l in (src or "(definition not found)").splitlines()))


def print_draft(fn, drafts):
    """A function's verified draft: a written/ file whole (its typedefs and externs are part of
    the draft), otherwise just the definition, with Ghidra's address names resolved."""
    d = drafts.get(fn)
    if not d or not (NONMATCHING / d["file"]).exists():
        return
    kind = d["file"].split("/")[0] if "/" in d["file"] else "part"
    if kind == "written":
        src = (NONMATCHING / d["file"]).read_text(errors="replace").rstrip()
    else:
        src = platinum_source(NONMATCHING, d["file"], fn)
        if src and kind == "ghidra":
            whole = (NONMATCHING / d["file"]).read_text(errors="replace")
            src = resolve_ghidra_aliases(src, whole, asm_body_names(d["asm"] + ".s", fn))
    label = {"written": "model-written", "ghidra": "raw Ghidra C", "part": "see the whole file and notes"}[kind]
    print(f"    --- draft nonmatching/{d['file']} [{d['verdict']}; {label}; behaviour only, not matching]")
    print("\n".join("    " + l for l in (src or "(definition not found)").splitlines()))


def print_show(fn, twins, drafts, root, high_only=False):
    print_twin(fn, twins, root, high_only)
    print_draft(fn, drafts)


def cmd_file(args, twins, drafts):
    funcs = asm_functions(args.path)
    root = platinum_root(args.platinum) if args.show else None
    n_high = sum(1 for f in funcs if f in twins and tier(twins[f]["found_by"]) == "high")
    n_low = sum(1 for f in funcs if f in twins and tier(twins[f]["found_by"]) == "low")
    n_draft = sum(1 for f in funcs if f in drafts)
    print(f"{args.path}: {len(funcs)} functions, twins {n_high} high / {n_low} low, drafts {n_draft}")
    for fn in funcs:
        t = twins.get(fn)
        # --high filters twins only; a function with a verified draft is always listed
        if args.high and not (t and tier(t["found_by"]) == "high") and fn not in drafts:
            continue
        twin, draft = describe(fn, twins, drafts)
        print(f"  {fn:<40} twin={twin}  draft={draft}")
        if args.show:
            print_show(fn, twins, drafts, root, high_only=args.high)
    draft_files = sorted({drafts[f]["file"] for f in funcs if f in drafts})
    for c_file in draft_files:
        notes = c_file[:-len(".c")] + ".notes.md"
        if (NONMATCHING / notes).exists():
            print(f"  notes: nonmatching/{notes}")


def cmd_func(args, twins, drafts):
    twin, draft = describe(args.name, twins, drafts)
    print(f"{args.name}: twin={twin}  draft={draft}")
    if args.show:
        print_show(args.name, twins, drafts, platinum_root(args.platinum))


def cmd_stats(args, twins, drafts):
    counts = {"high": 0, "low": 0}
    for t in twins.values():
        counts[tier(t["found_by"])] += 1
    print(f"twins: {len(twins)} ({counts['high']} high, {counts['low']} low); drafts: {len(drafts)}"
          f" ({sum(1 for d in drafts.values() if d['verdict'] == 'PASS')} PASS)")
    rows = []
    for path in pending_asm_files():
        funcs = asm_functions(path)
        if not funcs:
            continue
        high = sum(1 for f in funcs if f in twins and tier(twins[f]["found_by"]) == "high")
        low = sum(1 for f in funcs if f in twins and tier(twins[f]["found_by"]) == "low")
        draft = sum(1 for f in funcs if f in drafts)
        rows.append((high / len(funcs), path, len(funcs), high, low, draft))
    rows.sort(key=lambda r: (-r[0], r[2]))
    print(f"\npending asm files by high-confidence twin coverage (top {args.top}):")
    print(f"  {'file':<48} {'funcs':>5} {'high':>5} {'low':>5} {'draft':>5}")
    for _, path, n, high, low, draft in rows[:args.top]:
        print(f"  {path:<48} {n:>5} {high:>5} {low:>5} {draft:>5}")


def c_file_for(asm_path):
    """The C file that replaced asm_path: src/<name>.c, or src/<dir>/<name>.c when main.lsf links
    src/<dir>/<name>.o (e.g. src/frontier/frontier_map.c for asm/frontier_map.s)."""
    stem = Path(asm_path).stem
    flat = ROOT / "src" / (stem + ".c")
    if flat.exists():
        return flat
    lsf = (ROOT / "main.lsf").read_text(errors="replace") if (ROOT / "main.lsf").exists() else ""
    for c in sorted((ROOT / "src").rglob(stem + ".c")):
        obj = c.relative_to(ROOT).with_suffix(".o").as_posix()
        if re.search(r"^\s*Object\s+" + re.escape(obj) + r"\s*$", lsf, re.M):
            return c
    return None


def matched_in_src(asm_path, funcs):
    """Functions of asm_path defined as real C in its C file (c_file_for). A function
    defined inside an #ifdef NONMATCHING ... #else ... #endif block (either
    branch) or as an `asm` function is a fallback, still unmatched."""
    src = c_file_for(asm_path)
    if src is None:
        return set()
    matched, fallback, stack = set(), set(), []  # stack: is each open #if a NONMATCHING block?
    defn = re.compile(r"^[A-Za-z_][^;]*?\b(\w+)\s*\(")
    for line in src.read_text(errors="replace").splitlines():
        d = line.strip()
        if d.startswith("#if"):
            stack.append("NONMATCHING" in d)
        elif d.startswith("#endif") and stack:
            stack.pop()
        elif not line.rstrip().endswith(";"):
            m = defn.match(line)
            if m and m.group(1) in funcs:
                if any(stack) or re.search(r"\basm\b", line):
                    fallback.add(m.group(1))
                else:
                    matched.add(m.group(1))
    return matched - fallback


def cmd_prune(args, twins, drafts):
    """Drop drafts for functions of a just-matched asm file that are now real C
    in src/: their VERIFIED.tsv rows, and any nonmatching/<file>.c (+ .notes.md, .arities.json)
    left with no rows. Functions kept as NONMATCHING asm fallbacks keep theirs."""
    all_funcs = set(asm_functions(args.path))
    funcs = matched_in_src(args.path, all_funcs)
    kept = sorted((all_funcs - funcs) & set(drafts))
    if not funcs:
        print(f"{args.path}: no functions defined as C in src/ yet; nothing to prune")
        return
    if kept:
        print(f"{args.path}: keeping drafts for {len(kept)} function(s) not matched in src/: {', '.join(kept)}")
    verified = NONMATCHING / "VERIFIED.tsv"
    if not verified.exists() or not funcs & set(drafts):
        print(f"{args.path}: no drafts to prune")
        return
    with open(verified, newline="") as f:
        reader = csv.DictReader(f, delimiter="\t")
        fields, rows = reader.fieldnames or ["function", "file", "asm", "verdict"], list(reader)
    keep = [r for r in rows if r["function"] not in funcs]
    removed = [r for r in rows if r["function"] in funcs]
    with open(verified, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fields, delimiter="\t", lineterminator="\n")
        w.writeheader()
        w.writerows(keep)
    print(f"{args.path}: dropped {len(removed)} VERIFIED.tsv rows")
    still_used = {r["file"] for r in keep}
    for c_file in sorted({r["file"] for r in removed} - still_used):
        for name in (c_file, c_file[:-len(".c")] + ".notes.md", c_file[:-len(".c")] + ".arities.json"):
            if (NONMATCHING / name).exists():
                (NONMATCHING / name).unlink()
                print(f"  deleted nonmatching/{name}")
        folder = (NONMATCHING / c_file).parent
        if folder != NONMATCHING and folder.is_dir() and not any(folder.iterdir()):
            folder.rmdir()  # ghidra/<asm>/ or written/<asm>/ with its last draft gone
            print(f"  deleted nonmatching/{folder.relative_to(NONMATCHING)}/")
    for c_file in sorted({r["file"] for r in removed} & still_used):
        print(f"  nonmatching/{c_file} still holds unmatched functions; remove the matched ones by hand")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--platinum", help="pokeplatinum checkout (default: $POKEPLATINUM or ../pokeplatinum)")
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("file", help="twins + drafts for every function in an asm file")
    p.add_argument("path")
    p.add_argument("--show", action="store_true", help="print each twin's Platinum C and each draft's C")
    p.add_argument("--high", action="store_true", help="only high-confidence twins (functions with drafts still listed)")
    p = sub.add_parser("func", help="twin + draft for one function")
    p.add_argument("name")
    p.add_argument("--show", action="store_true", help="print the twin's Platinum C and the draft's C")
    p = sub.add_parser("stats", help="totals + pending files ranked by twin coverage")
    p.add_argument("--top", type=int, default=25)
    p = sub.add_parser("prune", help="remove nonmatching/ drafts for a matched asm file")
    p.add_argument("path")
    args = ap.parse_args()

    twins, drafts = load_twins(), load_drafts()
    {"file": cmd_file, "func": cmd_func, "stats": cmd_stats, "prune": cmd_prune}[args.cmd](args, twins, drafts)


if __name__ == "__main__":
    sys.exit(main())
