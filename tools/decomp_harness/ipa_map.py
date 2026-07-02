#!/usr/bin/env python3
"""ipa_map.py — header -> consumer index for IPA-cascade reasoning.

MWCC `-ipa file` recompiles a whole TU whenever any header it includes
changes (see CLAUDE.md 'IPA header discipline'). Before touching a shared
header you want to know exactly which translation units pull it in, and in
particular which of those are already *matched* (and therefore at risk of
silently regressing). This tool builds that index from the compiler's own
dependency output.

Source of truth: the `*.d` files make/MWCC emit under build/ (and sub/,
lib/dsprot). Each is a Makefile fragment:

    build/heartgold.us/src/foo.o: src/foo.c \
        include/global.h \
        include/pokemon.h \
        ...

We invert it into  header -> {consumer TUs}  and cross-reference the
consumers against main.lsf's `Object src/*.o` lines (the matched set).

IMPORTANT COVERAGE CAVEAT: `.d` files are periodically purged by the build
recovery flow (`find build -name '*.d' -delete`). When that has happened,
this index UNDER-reports consumers. Every run prints how many matched TUs
have `.d` data vs how many are dark, so a partial index is never mistaken
for a complete one.

Usage:
    ipa_map.py <header>            human query: who includes this header
    ipa_map.py <header> --matched  only list matched consumers
    ipa_map.py --stats             coverage stats + top-included headers
    ipa_map.py --json              dump the full index to stdout as JSON
    ipa_map.py --json <header>     dump one header's consumers as JSON

<header> may be a full repo-relative path (include/pokemon.h) or a bare
basename (pokemon.h); a bare name matches every header with that basename.
"""
import sys, os, json, glob, argparse

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))

# Where .d files live. Globbed relative to repo root.
D_GLOBS = [
    "build/**/*.d",
    "sub/**/*.d",
    "lib/dsprot/**/*.d",
]


def parse_d(path):
    """Return (source, [headers]) for one .d file, or None if unparseable.
    source is the first prerequisite (the .c/.s); headers are prereqs
    ending in .h."""
    try:
        with open(path, "r", errors="replace") as f:
            text = f.read()
    except OSError:
        return None
    text = text.replace("\\\n", " ")
    # Only the first logical rule matters (MWCC emits one target per .d).
    if ":" not in text:
        return None
    _target, rhs = text.split(":", 1)
    toks = rhs.split()
    if not toks:
        return None
    source = toks[0]
    headers = [t for t in toks[1:] if t.endswith(".h")]
    return source, headers


def norm(p):
    """Normalise a path token to repo-relative, forward-slash form."""
    p = p.replace("\\", "/")
    # Some toolchains emit absolute paths; keep only the repo-relative tail.
    for anchor in ("/build/", "/src/", "/include/", "/lib/", "/sub/", "/files/"):
        i = p.find(anchor)
        if i != -1 and not p.startswith(anchor[1:]):
            p = p[i + 1:]
            break
    return os.path.normpath(p)


def matched_set(lsf):
    m = set()
    try:
        with open(lsf) as f:
            for line in f:
                line = line.strip()
                if line.startswith("Object src/") and line.endswith(".o"):
                    m.add(norm(line[len("Object "):-2] + ".c"))
    except OSError:
        pass
    return m


def build_index():
    """Returns dict:
        header (str) -> sorted list of consumer sources (str)
      plus a meta dict describing coverage."""
    os.chdir(ROOT)
    dfiles = []
    for g in D_GLOBS:
        dfiles.extend(glob.glob(g, recursive=True))
    dfiles = sorted(set(dfiles))

    index = {}                 # header -> set(sources)
    sources_with_d = set()     # every source that had a parseable .d
    for d in dfiles:
        parsed = parse_d(d)
        if not parsed:
            continue
        source, headers = parsed
        source = norm(source)
        sources_with_d.add(source)
        for h in headers:
            index.setdefault(norm(h), set()).add(source)

    matched = matched_set("main.lsf")
    meta = dict(
        d_files=len(dfiles),
        sources_with_d=len(sources_with_d),
        matched_total=len(matched),
        matched_with_d=len(matched & sources_with_d),
        matched_without_d=len(matched - sources_with_d),
        headers_indexed=len(index),
    )
    # freeze to sorted lists
    frozen = {h: sorted(v) for h, v in index.items()}
    return frozen, matched, sources_with_d, meta


def resolve(index, query):
    """Map a query (full path or bare basename) to matching header keys."""
    q = norm(query)
    if "/" in query:
        # exact, else suffix match
        if q in index:
            return [q]
        return sorted(h for h in index if h == q or h.endswith("/" + q))
    # bare basename
    base = os.path.basename(q)
    return sorted(h for h in index if os.path.basename(h) == base)


def classify(src, matched):
    if src.endswith(".s"):
        return "asm"
    if src in matched:
        return "MATCHED"
    if src.endswith(".c"):
        return "unmatched-c"
    return "other"


def coverage_banner(meta):
    lines = []
    mt, mw, mo = meta["matched_total"], meta["matched_with_d"], meta["matched_without_d"]
    pct = (100.0 * mw / mt) if mt else 0.0
    lines.append("--- .d coverage ---")
    lines.append("  %d .d files parsed; %d distinct sources have dep data"
                 % (meta["d_files"], meta["sources_with_d"]))
    lines.append("  matched TUs: %d total | %d WITH .d data | %d WITHOUT (dark)"
                 % (mt, mw, mo))
    if mo:
        lines.append("  !! %.0f%% coverage — %d matched TU(s) have NO .d data; "
                     "their header uses are INVISIBLE here." % (pct, mo))
        lines.append("  !! Run a build to regenerate .d files for a complete index.")
    else:
        lines.append("  100% coverage — every matched TU has dep data.")
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(add_help=True, description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("header", nargs="?", help="header path or basename to query")
    ap.add_argument("--matched", action="store_true", help="only list matched consumers")
    ap.add_argument("--stats", action="store_true", help="coverage stats + top headers")
    ap.add_argument("--json", action="store_true", help="emit JSON")
    args = ap.parse_args()

    index, matched, _sources_with_d, meta = build_index()

    if args.json and not args.header:
        # full index dump, with matched-flagging baked in
        out = dict(meta=meta,
                   index={h: [{"src": s, "class": classify(s, matched)} for s in v]
                          for h, v in index.items()})
        json.dump(out, sys.stdout, indent=1, sort_keys=True)
        sys.stdout.write("\n")
        return 0

    if args.stats or (not args.header):
        print(coverage_banner(meta))
        # top-10 most-included headers among MATCHED consumers
        ranked = []
        for h, srcs in index.items():
            mc = sum(1 for s in srcs if s in matched)
            if mc:
                ranked.append((mc, len(srcs), h))
        ranked.sort(reverse=True)
        print("\n--- top headers by MATCHED-consumer count ---")
        print("  matched / total  header")
        for mc, tot, h in ranked[:10]:
            print("  %6d / %-5d  %s" % (mc, tot, h))
        if not args.header:
            print("\nQuery a header:  ipa_map.py <header.h>")
        return 0

    # --- header query ---
    keys = resolve(index, args.header)
    if not keys:
        print("ipa_map: no consumers found for '%s'" % args.header)
        print("  (header may be unused, or its consumers' .d files were purged)")
        print()
        print(coverage_banner(meta))
        return 1

    if args.json:
        out = {}
        for h in keys:
            out[h] = [{"src": s, "class": classify(s, matched)} for s in index[h]]
        json.dump(out, sys.stdout, indent=1, sort_keys=True)
        sys.stdout.write("\n")
        return 0

    for h in keys:
        srcs = index[h]
        matched_srcs = [s for s in srcs if s in matched]
        shown = matched_srcs if args.matched else srcs
        print("%s" % h)
        print("  %d consumer(s) with .d data | %d matched"
              % (len(srcs), len(matched_srcs)))
        for s in shown:
            print("    [%-11s] %s" % (classify(s, matched), s))
        print()
    print(coverage_banner(meta))
    return 0


if __name__ == "__main__":
    sys.exit(main())
