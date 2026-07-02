#!/usr/bin/env python3
"""sweep_gap.py — list upcoming triage targets that have no sweep pre-analysis.

ROADMAP T2.2: sweeps are the cheapest defense against re-derived signatures
and IPA header mistakes, but coverage only helps if it stays ahead of the
triage queue. This prints the un-swept files among the top-N pending triage
targets, one per line (empty output = fully covered). Feed the output to
/decomp-sweep.

Usage:
    sweep_gap.py [--top N]      # default N=10
    sweep_gap.py --check        # exit 1 if any gap (for checklists/hooks)

"Swept" means a per-file result exists in tools/decomp_harness/sweep/out/
(the same definition the /decomp-sweep skill uses for target selection);
knowledge.json is the merged view of those files.
"""

import argparse
import json
import pathlib
import sys

HARNESS = pathlib.Path(__file__).resolve().parent


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--top", type=int, default=10)
    ap.add_argument("--check", action="store_true",
                    help="exit 1 if any of the top-N targets is un-swept")
    args = ap.parse_args()

    report = HARNESS / "triage_report.json"
    if not report.exists():
        print("sweep_gap: no triage_report.json — run triage.py --rebuild first",
              file=sys.stderr)
        return 2

    queue = json.load(open(report))["queue"]
    swept = {p.stem for p in (HARNESS / "sweep" / "out").glob("*.json")}
    gap = [r["file"] for r in queue[: args.top]
           if pathlib.Path(r["file"]).stem not in swept]

    for f in gap:
        print(f)
    if args.check:
        if gap:
            print(f"sweep_gap: {len(gap)}/{args.top} upcoming targets un-swept",
                  file=sys.stderr)
            return 1
        print(f"sweep_gap: top {args.top} targets all swept", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
