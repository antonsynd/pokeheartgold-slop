#!/usr/bin/env python3
"""ipa_map.py — header -> consumer index for IPA-cascade reasoning.

MWCC `-ipa file` recompiles a whole TU whenever any header it includes
changes (see CLAUDE.md 'IPA header discipline'). Before touching a shared
header you want to know exactly which translation units pull it in, and in
particular which of those are already *matched* (and therefore at risk of
silently regressing). This tool builds that index from the compiler's own
dependency output.

Source of truth: ninja's dependency log, as printed by `ninja -C build/<game>.us -t deps`
(MWCC emits the dependency list, ninja records it in .ninja_deps when it builds an object).
Each entry is a target followed by the files its compile read:

    main.nef.p/src_foo.c.o: #deps 458, deps mtime 1791985659162172618 (VALID)
        ../../src/foo.c
        ../../include/global.h
        ...

We invert it into  header -> {consumer TUs}  over the game objects (main.nef.p/*) and
cross-reference the consumers against main.lsf's linked C objects (the matched set).

IMPORTANT COVERAGE CAVEAT: the log only has objects that were built in the build dir. A fresh
configure, `build_pokeheartgold clean`, or objects never built (e.g. after a partial build) are
absent, and this index then UNDER-reports consumers. Every run prints how many matched TUs
have dependency data vs how many are dark, so a partial index is never mistaken for a complete
one. `build_pokeheartgold build --target main` fills it in.

Usage:
    ipa_map.py <header>            human query: who includes this header
    ipa_map.py <header> --matched  only list matched consumers
    ipa_map.py --stats             coverage stats + top-included headers
    ipa_map.py --json              dump the full index to stdout as JSON
    ipa_map.py --json <header>     dump one header's consumers as JSON

<header> may be a full repo-relative path (include/pokemon.h) or a bare
basename (pokemon.h); a bare name matches every header with that basename.
--game picks one build dir (default: every configured one, merged).
"""
import sys, os, json, argparse, subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.realpath(os.path.join(HERE, "..", ".."))  # physical: ninja prints paths relative to the resolved build dir
sys.path.insert(0, HERE)
import asmscan  # noqa: E402

GAMES = ("heartgold", "soulsilver")
GAME_OBJ_PREFIX = "main.nef.p/"


def build_dirs(games):
    """Configured Meson build dirs (build/<game>.us with a build.ninja) for the given games."""
    dirs = []
    for g in games:
        d = os.path.join(ROOT, "build", g + ".us")
        if os.path.isfile(os.path.join(d, "build.ninja")):
            dirs.append(d)
    return dirs


def parse_ninja_deps(text):
    """Yield (target, [dep paths as printed]) for each entry of `ninja -t deps` output."""
    target, deps = None, []
    for line in text.splitlines():
        if not line.strip():
            continue
        if line[0] != " ":
            if target is not None:
                yield target, deps
            target, deps = line.split(": #deps", 1)[0], []
        else:
            deps.append(line.strip())
    if target is not None:
        yield target, deps


def norm(p, base=ROOT):
    """Normalise a path (relative to base) to repo-relative, forward-slash form."""
    p = os.path.normpath(os.path.join(base, p.replace("\\", "/")))
    if p == ROOT or p.startswith(ROOT + os.sep):
        p = os.path.relpath(p, ROOT)
    return p


def matched_set():
    """Repo-relative paths of the C files linked in main.lsf."""
    return {"src/%s.c" % o["name"] for o in asmscan.parse_lsf(ROOT) if o["kind"] == "src"}


def build_index(games=GAMES):
    """Returns dict:
        header (str) -> sorted list of consumer sources (str)
      plus a meta dict describing coverage."""
    dirs = build_dirs(games)
    if not dirs:
        sys.exit("ipa_map: no configured build dir (build/<game>.us/build.ninja); "
                 "run build_tools/bin/build_pokeheartgold build --target main first")
    index = {}                 # header -> set(sources)
    sources_with_deps = set()  # every game source that has an entry in the dependency log
    entries = 0
    for d in dirs:
        r = subprocess.run(["ninja", "-C", d, "-t", "deps"], capture_output=True, text=True)
        if r.returncode != 0:
            sys.exit("ipa_map: `ninja -t deps` failed in %s:\n%s" % (d, r.stderr.strip()))
        for target, deps in parse_ninja_deps(r.stdout):
            if not target.startswith(GAME_OBJ_PREFIX) or not deps:
                continue
            entries += 1
            source = norm(deps[0], d)
            sources_with_deps.add(source)
            for h in deps[1:]:
                if h.endswith(".h"):
                    index.setdefault(norm(h, d), set()).add(source)

    matched = matched_set()
    meta = dict(
        build_dirs=[os.path.relpath(d, ROOT) for d in dirs],
        dep_entries=entries,
        sources_with_deps=len(sources_with_deps),
        matched_total=len(matched),
        matched_with_deps=len(matched & sources_with_deps),
        matched_without_deps=len(matched - sources_with_deps),
        headers_indexed=len(index),
    )
    # freeze to sorted lists
    frozen = {h: sorted(v) for h, v in index.items()}
    return frozen, matched, sources_with_deps, meta


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
    mt, mw, mo = meta["matched_total"], meta["matched_with_deps"], meta["matched_without_deps"]
    pct = (100.0 * mw / mt) if mt else 0.0
    lines.append("--- ninja deps coverage (%s) ---" % ", ".join(meta["build_dirs"]))
    lines.append("  %d game objects in the dependency log; %d distinct sources have dep data"
                 % (meta["dep_entries"], meta["sources_with_deps"]))
    lines.append("  matched TUs: %d total | %d WITH dep data | %d WITHOUT (dark)"
                 % (mt, mw, mo))
    if mo:
        lines.append("  !! %.0f%% coverage — %d matched TU(s) have NO dep data; "
                     "their header uses are INVISIBLE here." % (pct, mo))
        lines.append("  !! Build them (build_pokeheartgold build --target main) for a complete index.")
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
    ap.add_argument("--game", choices=GAMES, help="only this game's build dir (default: all configured)")
    args = ap.parse_args()

    index, matched, _sources_with_deps, meta = build_index((args.game,) if args.game else GAMES)

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
        print("  (header may be unused, or its consumers were never built in this build dir)")
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
        print("  %d consumer(s) with dep data | %d matched"
              % (len(srcs), len(matched_srcs)))
        for s in shown:
            print("    [%-11s] %s" % (classify(s, matched), s))
        print()
    print(coverage_banner(meta))
    return 0


if __name__ == "__main__":
    sys.exit(main())
