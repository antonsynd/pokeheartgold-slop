#!/usr/bin/env python3
"""Triage: rank pending asm files by expected decompilation cost.

Reads coverage_ledger.json (run coverage_ledger.py first, or pass --rebuild)
and scores every pending file. Lower score = attempt sooner. The queue is
written to triage_report.json, which next_target.sh consults.

Score components (weights are heuristics — tune in WEIGHTS):
  insn lines        — raw matching work
  unknown callees   — imports defined in other *pending* asm files: their C
                      prototypes don't exist yet, so signatures must be guessed
                      (the top source of IPA trouble later)
  jumptable words   — switch tables: case-order matching is fiddly
  rodata bytes      — data-section ordering risk
  arm functions     — rarer, different idioms than Thumb
  blocker gating    — file imports symbols exported by a known-blocked file

Cluster partners are reported per file: pending files that define symbols this
file imports (decompile together to avoid IPA header churn).

Usage:
  python3 tools/decomp_harness/triage.py                 # write report, show top 20
  python3 tools/decomp_harness/triage.py --top 50
  python3 tools/decomp_harness/triage.py --file asm/unk_02012DD8.s
  python3 tools/decomp_harness/triage.py --rebuild       # refresh ledger first
"""

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

HARNESS = Path(__file__).resolve().parent
sys.path.insert(0, str(HARNESS))

WEIGHTS = {
    "insn_line": 1.0,
    "unknown_callee": 40.0,
    "jumptable_word": 3.0,
    "rodata_byte": 0.05,
    "arm_function": 25.0,
    "blocker_gated": 300.0,
    "special_section": 500.0,
}


def load_ledger(rebuild):
    path = HARNESS / "coverage_ledger.json"
    if rebuild or not path.exists():
        import coverage_ledger
        coverage_ledger.main()
    with open(path) as f:
        return json.load(f)


def build_report(ledger):
    files = ledger["files"]
    pending = [r for r in files if r["status"] == "pending"]

    # symbol -> pending file that exports it (the not-yet-decompiled world)
    export_map = {}
    for r in pending + [r for r in files if r["status"] == "blocked"]:
        for sym in r.get("exports", []):
            export_map[sym] = r["file"]

    gated_files = {}
    blocked_exports = {}
    by_file = {r["file"]: r for r in files}
    blockers_path = HARNESS / "blockers.json"
    if blockers_path.exists():
        with open(blockers_path) as f:
            for b in json.load(f)["blockers"]:
                syms = set()
                for bf in b.get("files_blocked", []):
                    syms.update(by_file.get(bf, {}).get("exports", []))
                if syms:
                    blocked_exports[b["id"]] = syms
    for r in pending:
        imports = set(r.get("imports", []))
        for bid, syms in blocked_exports.items():
            if imports & syms:
                gated_files.setdefault(r["file"], []).append(bid)

    rows = []
    for r in pending:
        insns = sum(f["insns"] for f in r.get("functions", []))
        imports = r.get("imports", [])
        unknown = sorted({s for s in imports if s in export_map and export_map[s] != r["file"]})
        arm_fns = sum(1 for f in r.get("functions", []) if f["mode"] == "arm")
        rodata = r.get("sections", {}).get("rodata_bytes", 0)
        gates = gated_files.get(r["file"], [])
        special = r.get("other_sections", [])

        partners = {}
        for s in unknown:
            partners[export_map[s]] = partners.get(export_map[s], 0) + 1
        partners = sorted(partners.items(), key=lambda kv: -kv[1])[:5]

        score = (
            WEIGHTS["insn_line"] * insns
            + WEIGHTS["unknown_callee"] * len(unknown)
            + WEIGHTS["jumptable_word"] * r.get("jumptable_words", 0)
            + WEIGHTS["rodata_byte"] * rodata
            + WEIGHTS["arm_function"] * arm_fns
            + WEIGHTS["blocker_gated"] * len(gates)
            + WEIGHTS["special_section"] * len(special)
        )
        rows.append({
            "file": r["file"],
            "score": round(score, 1),
            "special_sections": special,
            "functions": r.get("function_count", 0),
            "insn_lines": insns,
            "data_only": r.get("data_only", False),
            "unknown_callees": unknown,
            "jumptable_words": r.get("jumptable_words", 0),
            "rodata_bytes": rodata,
            "arm_functions": arm_fns,
            "gated_by": gates,
            "cluster_partners": [{"file": f, "shared_symbols": n} for f, n in partners],
        })

    rows.sort(key=lambda r: r["score"])
    return {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "weights": WEIGHTS,
        "queue": rows,
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--top", type=int, default=20)
    ap.add_argument("--file")
    ap.add_argument("--rebuild", action="store_true")
    args = ap.parse_args()

    ledger = load_ledger(args.rebuild)
    report = build_report(ledger)
    with open(HARNESS / "triage_report.json", "w") as f:
        json.dump(report, f, indent=1)

    if args.file:
        row = next((r for r in report["queue"] if r["file"] == args.file), None)
        if not row:
            print(f"{args.file} is not in the pending queue", file=sys.stderr)
            sys.exit(1)
        print(json.dumps(row, indent=2))
        return

    rank = 0
    print(f"{'#':>3} {'score':>9} {'fns':>5} {'insns':>7} {'unk':>4} {'gated':>6}  file")
    for r in report["queue"][: args.top]:
        rank += 1
        print(f"{rank:>3} {r['score']:>9.1f} {r['functions']:>5} {r['insn_lines']:>7} "
              f"{len(r['unknown_callees']):>4} {('YES' if r['gated_by'] else ''):>6}  "
              f"{r['file']}{' [DATA-ONLY]' if r['data_only'] else ''}"
              f"{' [SPECIAL: ' + ','.join(r['special_sections']) + ']' if r['special_sections'] else ''}")
    print(f"\nwrote {HARNESS / 'triage_report.json'} ({len(report['queue'])} pending files)")


if __name__ == "__main__":
    main()
