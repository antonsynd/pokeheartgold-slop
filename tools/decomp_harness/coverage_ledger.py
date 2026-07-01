#!/usr/bin/env python3
"""Function-level coverage ledger for the matching decomp.

Walks main.lsf object order, parses every asm/*.s still present, and
cross-references progress.json + blockers.json to produce:

  coverage_ledger.json  — machine-readable per-file/per-function ledger
  COVERAGE.md           — generated human rollup (do not hand-edit)

Statuses (per file):
  matched   — linked from src/ and the original asm/<name>.s is retained
              (harness-decompiled, or upstream conversion that kept its asm)
  upstream  — linked from src/ with no asm/<name>.s (decompiled before this
              harness existed; no function detail available)
  blocked   — listed in progress.json "failed" (reason attached)
  pending   — still linked from asm/

Per-function rows inherit the file status; blocked files additionally get
partial-match counts from progress.json reasons where recorded.

Usage:  python3 tools/decomp_harness/coverage_ledger.py [--quiet]
"""

import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import asmscan

HARNESS = Path(__file__).resolve().parent
ROOT = asmscan.project_root()


def load_progress():
    with open(HARNESS / "progress.json") as f:
        data = json.load(f)
    completed = set()
    for entry in data.get("completed", []):
        completed.add(entry["file"] if isinstance(entry, dict) else entry)
    failed = {}
    for entry in data.get("failed", []):
        if isinstance(entry, dict):
            failed[entry["file"]] = entry
        else:
            failed[entry] = {"file": entry, "reason": ""}
    return completed, failed


def load_blockers():
    path = HARNESS / "blockers.json"
    if not path.exists():
        return []
    with open(path) as f:
        return json.load(f).get("blockers", [])


PARTIAL_RE = re.compile(r"(\d+)/(\d+) functions matched")


def build_ledger():
    completed, failed = load_progress()
    objects = asmscan.parse_lsf(ROOT)
    files = []

    for obj in objects:
        name = obj["name"]
        asm_path = ROOT / "asm" / (name + ".s")
        asm_key = f"asm/{name}.s"
        row = {"file": asm_key, "lsf_kind": obj["kind"]}

        if obj["kind"] == "src" and not asm_path.exists():
            row["status"] = "upstream"
            row["functions"] = []
            files.append(row)
            continue

        if not asm_path.exists():
            row["status"] = "missing_asm"
            row["functions"] = []
            files.append(row)
            continue

        scan = asmscan.parse_asm(asm_path)
        publics = asmscan.parse_inc(ROOT / "asm" / "include" / (name + ".inc"))
        # .public lists mix imports and exports; a symbol is exported if this
        # file defines it — as a function OR as a data label
        defined_here = scan["defined"] | scan["data_labels"]
        imports = sorted(set(publics) - defined_here)
        exports = sorted(set(publics) & defined_here)

        if obj["kind"] == "src":
            status = "matched"
        elif asm_key in failed:
            status = "blocked"
        else:
            status = "pending"

        row.update(
            status=status,
            lines=scan["lines"],
            function_count=len(scan["functions"]),
            text_bytes_est=sum(f["size_est"] for f in scan["functions"]),
            data_only=len(scan["functions"]) == 0,
            sections=scan["sections"],
            other_sections=scan["other_sections"],
            jumptable_words=scan["jumptable_words"],
            imports=imports,
            exports=exports,
            functions=[
                {
                    "name": f["name"],
                    "mode": f["mode"],
                    "insns": f["insns"],
                    "size_est": f["size_est"],
                    "status": status,
                    **({"copyprop_entry": True} if f.get("copyprop_entry") else {}),
                }
                for f in scan["functions"]
            ],
        )

        if status == "blocked":
            entry = failed[asm_key]
            row["blocked_reason"] = entry.get("reason", "")
            row["attempts"] = entry.get("attempts")
            row["blocker_id"] = entry.get("blocker_id")
            m = PARTIAL_RE.search(row["blocked_reason"])
            if m:
                row["partial_matched"] = int(m.group(1))
            row["kept_c"] = (ROOT / "src" / (name + ".c")).exists()
        if status == "matched":
            row["source"] = "harness" if asm_key in completed else "retained_asm"

        files.append(row)

    return files


def summarize(files, blockers):
    def agg(rows):
        return {
            "files": len(rows),
            "functions": sum(r.get("function_count", 0) for r in rows),
            "insn_lines": sum(
                sum(f["insns"] for f in r.get("functions", [])) for r in rows
            ),
            "text_bytes_est": sum(r.get("text_bytes_est", 0) for r in rows),
        }

    by_status = {}
    for status in ("matched", "blocked", "pending", "upstream", "missing_asm"):
        rows = [r for r in files if r["status"] == status]
        if rows:
            by_status[status] = agg(rows)

    detail = [r for r in files if r["status"] in ("matched", "blocked", "pending")]
    total_fns = sum(r["function_count"] for r in detail)
    matched_fns = by_status.get("matched", {}).get("functions", 0)
    # credit partial matches inside blocked files where recorded
    partial_fns = sum(r.get("partial_matched", 0) for r in files if r["status"] == "blocked")

    return {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "by_status": by_status,
        "function_totals": {
            "tracked": total_fns,
            "matched": matched_fns,
            "partial_in_blocked": partial_fns,
            "pending": by_status.get("pending", {}).get("functions", 0),
        },
        "blockers": [
            {
                "id": b["id"],
                "blocks_files": len(b.get("files_blocked", [])),
                "gates_pending_files": len(b.get("gates_pending", [])),
            }
            for b in blockers
        ],
    }


def write_markdown(files, summary, blockers, out_path):
    lines = []
    w = lines.append
    w("# Decomp Coverage Ledger")
    w("")
    w(f"*Generated {summary['generated']} by `coverage_ledger.py` — do not hand-edit;"
      " regenerate after each decomp.*")
    w("")
    ft = summary["function_totals"]
    w(f"Tracked functions (files with retained asm): **{ft['tracked']}** — "
      f"matched {ft['matched']}, pending {ft['pending']}, "
      f"plus {ft['partial_in_blocked']} matched-but-blocked inside failed files.")
    w("")
    w("| status | files | functions | insn lines | ~text bytes |")
    w("|---|---|---|---|---|")
    for status, s in summary["by_status"].items():
        w(f"| {status} | {s['files']} | {s['functions']} | {s['insn_lines']} | {s['text_bytes_est']} |")
    w("")

    if blockers:
        w("## Blockers (value-ordered: fix what gates the most)")
        w("")
        w("| id | blocks | gates pending files | description |")
        w("|---|---|---|---|")
        for b in sorted(blockers, key=lambda b: -len(b.get("gates_pending", []))):
            w(f"| {b['id']} | {len(b.get('files_blocked', []))} | "
              f"{len(b.get('gates_pending', []))} | {b['description']} |")
        w("")

    for status, title in (("blocked", "Blocked files"), ("matched", "Matched files (asm retained)"),
                          ("pending", "Pending files")):
        rows = [r for r in files if r["status"] == status]
        if not rows:
            continue
        w(f"## {title} ({len(rows)})")
        w("")
        w("| file | functions | insn lines | data-only | notes |")
        w("|---|---|---|---|---|")
        for r in sorted(rows, key=lambda r: -r.get("function_count", 0)):
            insns = sum(f["insns"] for f in r.get("functions", []))
            note = ""
            if status == "blocked":
                note = (r.get("blocker_id") or "") + " "
                if "partial_matched" in r:
                    note += f"{r['partial_matched']}/{r['function_count']} matched; "
                note += (r.get("blocked_reason", "")[:120]).replace("|", "/")
            elif status == "matched":
                note = r.get("source", "")
            w(f"| {r['file']} | {r.get('function_count', 0)} | {insns} | "
              f"{'yes' if r.get('data_only') else ''} | {note} |")
        w("")

    out_path.write_text("\n".join(lines) + "\n")


def compute_gating(files, blockers):
    """For each blocker, find pending files it predictively gates. Gating
    semantics are per-blocker via gate_mode in blockers.json — see
    asmscan.blocker_gates (legacy import-based gating over-counts badly for
    blockers whose files export ubiquitous APIs)."""
    for b in blockers:
        b["gates_pending"] = asmscan.blocker_gates(b, files)


def main():
    quiet = "--quiet" in sys.argv
    blockers = load_blockers()
    files = build_ledger()

    # annotate blocker gating onto file rows
    blocked_by_file = {}
    for b in blockers:
        for f in b.get("files_blocked", []):
            blocked_by_file[f] = b["id"]
    for r in files:
        if r["status"] == "blocked" and r["file"] in blocked_by_file:
            r["blocker_id"] = blocked_by_file[r["file"]]
    compute_gating(files, blockers)

    summary = summarize(files, blockers)
    out = {"summary": summary, "files": files}
    with open(HARNESS / "coverage_ledger.json", "w") as f:
        json.dump(out, f, indent=1)
    write_markdown(files, summary, blockers, HARNESS / "COVERAGE.md")

    if not quiet:
        ft = summary["function_totals"]
        print(f"functions tracked={ft['tracked']} matched={ft['matched']} "
              f"pending={ft['pending']} partial_in_blocked={ft['partial_in_blocked']}")
        for status, s in summary["by_status"].items():
            print(f"  {status:9s} files={s['files']:4d} fns={s['functions']:5d} "
                  f"insns={s['insn_lines']}")
        print(f"wrote {HARNESS / 'coverage_ledger.json'}")
        print(f"wrote {HARNESS / 'COVERAGE.md'}")


if __name__ == "__main__":
    main()
