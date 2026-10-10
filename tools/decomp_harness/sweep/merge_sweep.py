#!/usr/bin/env python3
"""Merge per-file sweep outputs (sweep/out/*.json) into knowledge.json.

knowledge.json is the cross-file pre-analysis database consumed at the start
of every /decomp run:

  symbols:  name -> {defined_in, mode, signature_guess, confidence,
                     signature_sources {file: sig}, callers [files],
                     struct_accesses, notes}
  structs:  hypothesized shared struct layouts, merged by name
  files:    per-file risk notes and analysis timestamps

Platinum twins (platinum_twins.tsv, see twins.py) are folded in on every
merge, for functions still pending in asm/ only:
symbols[<hg fn>]["platinum_twin"] = {function, file, found_by, confidence},
and platinum_twin_files[<asm>] = {high, low} counts. They are kept out of
`files` so a files[] entry still means "this file was swept". Skipped with a
warning if the TSV is missing.

Signature conflicts between sweep files are NOT resolved — all guesses are
kept under signature_sources so the decompiler can weigh the evidence.

Usage:  python3 tools/decomp_harness/sweep/merge_sweep.py
"""

import json
import sys
from datetime import datetime, timezone
from pathlib import Path

SWEEP = Path(__file__).resolve().parent
OUT = SWEEP / "out"
KNOWLEDGE = SWEEP.parent / "knowledge.json"

sys.path.insert(0, str(SWEEP.parent))
import twins as twins_db  # noqa: E402


def conf_rank(c):
    return {"high": 3, "medium": 2, "low": 1}.get(c, 0)


def main():
    symbols = {}
    structs = {}
    files = {}

    # Preserve additive oracle blocks written by asm_oracle.py (T2.4) across this
    # full rebuild. They live under files[<file>]["oracle"], are NOT sweep-derived,
    # and would otherwise be dropped because this script rebuilds `files` from
    # scratch. This carry-forward is purely additive: it never creates or edits
    # oracle content, only re-attaches what was already there.
    prev_oracle = {}
    if KNOWLEDGE.exists():
        try:
            prev = json.loads(KNOWLEDGE.read_text())
            for fname, entry in prev.get("files", {}).items():
                if isinstance(entry, dict) and "oracle" in entry:
                    prev_oracle[fname] = entry["oracle"]
        except (json.JSONDecodeError, OSError):
            pass

    for path in sorted(OUT.glob("*.json")):
        try:
            with open(path) as f:
                sweep = json.load(f)
        except json.JSONDecodeError as e:
            print(f"SKIP {path.name}: invalid JSON ({e})")
            continue
        src_file = sweep.get("file", path.stem)
        files[src_file] = {
            "sweep_output": f"sweep/out/{path.name}",
            "risks": sweep.get("risks", []),
            "notes": sweep.get("notes", ""),
        }

        for fn in sweep.get("functions", []):
            sym = symbols.setdefault(fn["name"], {
                "defined_in": src_file,
                "mode": fn.get("mode"),
                "signature_sources": {},
                "callers": [],
            })
            sym["defined_in"] = src_file
            sym["mode"] = fn.get("mode", sym.get("mode"))
            if fn.get("signature_guess"):
                sym["signature_sources"][src_file] = fn["signature_guess"]
                # best-confidence guess wins the headline slot
                if conf_rank(fn.get("confidence")) >= conf_rank(sym.get("confidence")):
                    sym["signature_guess"] = fn["signature_guess"]
                    sym["confidence"] = fn.get("confidence", "low")
            if fn.get("struct_accesses"):
                sym.setdefault("struct_accesses", []).extend(fn["struct_accesses"])
            if fn.get("notes"):
                sym.setdefault("notes", []).append(f"[{src_file}] {fn['notes']}")
            for callee in fn.get("callees", []):
                callee_sym = symbols.setdefault(callee, {"signature_sources": {}, "callers": []})
                if src_file not in callee_sym["callers"]:
                    callee_sym["callers"].append(src_file)

        for name, info in sweep.get("imports", {}).items():
            sym = symbols.setdefault(name, {"signature_sources": {}, "callers": []})
            if info.get("known_prototype"):
                sym["known_prototype"] = info["known_prototype"]
                if info.get("header"):
                    sym["header"] = info["header"]
            elif info.get("signature_guess"):
                sym["signature_sources"][src_file] = info["signature_guess"]
                if "signature_guess" not in sym:
                    sym["signature_guess"] = info["signature_guess"]
                    sym["confidence"] = "low"

        for hyp in sweep.get("shared_struct_hypotheses", []):
            entry = structs.setdefault(hyp["name"], {"sources": [], "fields": {}})
            entry["sources"].append(src_file)
            if hyp.get("size_guess"):
                entry.setdefault("size_guesses", {})[src_file] = hyp["size_guess"]
            for field in hyp.get("fields", []):
                off = field.get("offset")
                if off is None:
                    continue
                slot = entry["fields"].setdefault(off, [])
                desc = {k: v for k, v in field.items() if k != "offset"}
                desc["source"] = src_file
                slot.append(desc)

    # re-attach preserved oracle blocks (additive; creates an oracle-only entry
    # for files that were oracle'd but not swept)
    for fname, oracle in prev_oracle.items():
        files.setdefault(fname, {})["oracle"] = oracle

    n_swept = len(files)

    # Platinum twins: per-symbol pair + per-file counts, pending asm files only
    twin_files, n_twin_syms = {}, 0
    if twins_db.TWINS_TSV.exists():
        twins = twins_db.load_twins()
        for path in twins_db.pending_asm_files():
            tiers = []
            for name in twins_db.asm_functions(path):
                row = twins.get(name)
                if not row:
                    continue
                sym = symbols.setdefault(name, {"signature_sources": {}, "callers": []})
                sym["platinum_twin"] = {
                    "function": row["platinum_function"],
                    "file": row["platinum_file"],
                    "found_by": row["found_by"],
                    "confidence": twins_db.tier(row["found_by"]),
                }
                tiers.append(sym["platinum_twin"]["confidence"])
            if tiers:
                twin_files[path] = {"high": tiers.count("high"), "low": tiers.count("low")}
                n_twin_syms += len(tiers)
    else:
        print(f"WARNING: {twins_db.TWINS_TSV} missing; skipping Platinum twins")

    # conflict report: symbols with >1 distinct signature guess
    conflicts = sorted(
        name for name, s in symbols.items()
        if len(set(s["signature_sources"].values())) > 1
    )

    knowledge = {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "files": files,
        "symbols": symbols,
        "structs": structs,
        "signature_conflicts": conflicts,
        "platinum_twin_files": twin_files,
    }
    with open(KNOWLEDGE, "w") as f:
        json.dump(knowledge, f, indent=1, sort_keys=True)

    print(f"merged {n_swept} sweep files -> {KNOWLEDGE}")
    print(f"  symbols: {len(symbols)}  structs: {len(structs)}  "
          f"signature conflicts: {len(conflicts)}")
    print(f"  platinum twins: {n_twin_syms} symbols across {len(twin_files)} pending files")
    for name in conflicts[:10]:
        print(f"  CONFLICT {name}: {symbols[name]['signature_sources']}")


if __name__ == "__main__":
    main()
