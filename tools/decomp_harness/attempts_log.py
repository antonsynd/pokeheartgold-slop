#!/usr/bin/env python3
"""Structured per-function attempts log for the matching decomp.

The point: never re-try a dead end. Every *distinct approach* tried on a
function gets one JSONL record in attempts_log.jsonl — especially the
failures. Before attempting a function, query past attempts. After a
build-compare cycle that taught you something, log it. Don't log every one
of 50 iterations — log each distinct C shape and its outcome.

Record fields:
  ts             — UTC timestamp (added automatically)
  file           — asm/<name>.s
  function       — function name (or "*" for file-level outcomes)
  approach       — the C shape tried, one line ("do/while with --n",
                   "u16 param + temp var", "cases reordered to source order")
  outcome        — matched | size_mismatch | regalloc_diff | branch_polarity
                   | instruction_diff | section_diff | build_error
                   | blocked | abandoned
  diff_signature — compact byte/insn diff ("cmp r4,#4 vs cmp r0,#4 @entry")
  classify_label — optional objdiff --classify label (register-rename-equivalent
                   | schedule-equivalent | spill-slot-shift |
                   extra/missing-instructions | size-diff | logic-diff). Machine-
                   assigned; complements the free-text diff_signature.
  lesson         — what this rules out or suggests for next time
  pattern_id     — optional patterns.json id this confirmed/produced

Auto-feed from objdiff (the classifier is the fitness/candidate filter, T1.3/T1.4):
  python3 tools/decomp_harness/objdiff.py <asm.o> <c.o> --classify \
      --attempts-json --attempts-file asm/<name>.s \
      | python3 tools/decomp_harness/attempts_log.py add --json -
  (objdiff emits one JSON record per mismatched function with outcome mapped
   from the label and classify_label set; add --json ingests each line.)

Usage:
  # append (flags)
  python3 tools/decomp_harness/attempts_log.py add \
      --file asm/unk_0200B150.s --function OamManager_Create \
      --approach "int param compared directly" --outcome regalloc_diff \
      --diff "cmp r4,#4 vs cmp r0,#4" --lesson "copy-prop always picks r0"

  # append (JSON on stdin, e.g. from an agent)
  echo '{"file":"...","function":"...","approach":"...","outcome":"..."}' \
      | python3 tools/decomp_harness/attempts_log.py add --json -

  # query before attempting
  python3 tools/decomp_harness/attempts_log.py query --file asm/unk_0200B150.s
  python3 tools/decomp_harness/attempts_log.py query --function OamManager_Create

  python3 tools/decomp_harness/attempts_log.py summary
"""

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

LOG = Path(__file__).resolve().parent / "attempts_log.jsonl"

OUTCOMES = {
    "matched", "size_mismatch", "regalloc_diff", "branch_polarity",
    "instruction_diff", "section_diff", "build_error", "blocked", "abandoned",
}


def read_log():
    if not LOG.exists():
        return []
    records = []
    for line in LOG.read_text().splitlines():
        line = line.strip()
        if line:
            records.append(json.loads(line))
    return records


def _validate(record):
    for field in ("file", "function", "approach", "outcome"):
        if not record.get(field):
            sys.exit(f"missing required field: {field}")
    if record["outcome"] not in OUTCOMES:
        sys.exit(f"outcome must be one of: {', '.join(sorted(OUTCOMES))}")


def _append(record):
    _validate(record)
    record.setdefault("ts", datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"))
    with open(LOG, "a") as f:
        f.write(json.dumps(record) + "\n")
    print(f"logged: {record['file']} {record['function']} -> {record['outcome']}")


def cmd_add(args):
    if args.json:
        raw = sys.stdin.read() if args.json == "-" else args.json
        # Accept either a single JSON object or JSONL (one record per line, as
        # emitted by `objdiff.py --classify --attempts-json`).
        stripped = raw.strip()
        try:
            obj = json.loads(stripped)
            records = obj if isinstance(obj, list) else [obj]
        except json.JSONDecodeError:
            records = [json.loads(line) for line in stripped.splitlines() if line.strip()]
        for record in records:
            _append(record)
        return

    record = {
        "file": args.file,
        "function": args.function,
        "approach": args.approach,
        "outcome": args.outcome,
    }
    if args.diff:
        record["diff_signature"] = args.diff
    if args.classify_label:
        record["classify_label"] = args.classify_label
    if args.lesson:
        record["lesson"] = args.lesson
    if args.pattern_id:
        record["pattern_id"] = args.pattern_id
    _append(record)


def cmd_query(args):
    records = read_log()
    hits = [
        r for r in records
        if (not args.file or r.get("file") == args.file)
        and (not args.function or r.get("function") == args.function)
        and (not args.outcome or r.get("outcome") == args.outcome)
    ]
    if not hits:
        print("no recorded attempts")
        return
    for r in hits:
        print(f"[{r.get('ts', '?')}] {r['file']} :: {r['function']}")
        print(f"  approach: {r['approach']}")
        print(f"  outcome:  {r['outcome']}"
              + (f"  [{r['classify_label']}]" if r.get("classify_label") else "")
              + (f"  ({r['diff_signature']})" if r.get("diff_signature") else ""))
        if r.get("lesson"):
            print(f"  lesson:   {r['lesson']}")
        if r.get("pattern_id"):
            print(f"  pattern:  {r['pattern_id']}")
        print()
    print(f"{len(hits)} attempt(s)")


def cmd_summary(_args):
    records = read_log()
    by_file = {}
    for r in records:
        stats = by_file.setdefault(r["file"], {"attempts": 0, "matched": 0, "functions": set()})
        stats["attempts"] += 1
        stats["functions"].add(r["function"])
        if r["outcome"] == "matched":
            stats["matched"] += 1
    for file, stats in sorted(by_file.items()):
        print(f"{file}: {stats['attempts']} attempts over "
              f"{len(stats['functions'])} function(s), {stats['matched']} matched")
    print(f"\n{len(records)} records total")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)

    add = sub.add_parser("add")
    add.add_argument("--json", help="full record as JSON ('-' = stdin)")
    add.add_argument("--file")
    add.add_argument("--function")
    add.add_argument("--approach")
    add.add_argument("--outcome")
    add.add_argument("--diff")
    add.add_argument("--classify-label", dest="classify_label",
                     help="objdiff --classify label (machine-assigned)")
    add.add_argument("--lesson")
    add.add_argument("--pattern-id", dest="pattern_id")
    add.set_defaults(fn=cmd_add)

    query = sub.add_parser("query")
    query.add_argument("--file")
    query.add_argument("--function")
    query.add_argument("--outcome")
    query.set_defaults(fn=cmd_query)

    summary = sub.add_parser("summary")
    summary.set_defaults(fn=cmd_summary)

    args = ap.parse_args()
    args.fn(args)


if __name__ == "__main__":
    main()
