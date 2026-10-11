#!/usr/bin/env python3
"""Function-level coverage ledger for the matching decomp.

Walks main.lsf object order, parses every asm/*.s still present, and
cross-references progress.json + blockers.json to produce:

  coverage_ledger.json  — machine-readable per-file/per-function ledger
  COVERAGE.md           — generated human rollup (do not hand-edit)

Statuses (per file):
  matched   — linked from src/ and the original asm/<name>.s is retained
              (harness-decompiled, or upstream conversion that kept its asm)
  upstream  — linked from src/ with no retained .s (decompiled before this
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

# src/ objects carved out of another file's asm at decomp time (one .s landed
# as several TUs), so they have no .s of their own: object name -> source .s.
SPLIT_TUS = {
    "battle_arcade_game_board_data2": "battle_arcade_game_board_data",
}


def find_asm(name):
    """The retained .s for an LSF object name, or None.

    Decomps that moved their C into a src/ subdirectory (src/field/,
    src/frontier/, ...) keep the reference .s flat at asm/<basename>.s.
    """
    for rel in (name, Path(name).name):
        path = ROOT / "asm" / (rel + ".s")
        if path.exists():
            return path
    return None


def build_ledger():
    completed, failed = load_progress()
    objects = asmscan.parse_lsf(ROOT)
    files = []

    for obj in objects:
        name = obj["name"]
        asm_path = find_asm(name)
        asm_key = (
            asm_path.relative_to(ROOT).as_posix() if asm_path else f"asm/{name}.s"
        )
        row = {"file": asm_key, "lsf_kind": obj["kind"]}

        if obj["kind"] == "src" and Path(name).name in SPLIT_TUS:
            row["status"] = "matched"
            row["source"] = "split_tu"
            row["split_from"] = f"asm/{SPLIT_TUS[Path(name).name]}.s"
            # the source .s is ledgered on its own row; don't double-count
            row.update(lines=0, function_count=0, text_bytes_est=0, data_only=True)
            row["functions"] = []
            files.append(row)
            continue

        if obj["kind"] == "src" and not asm_path:
            row["status"] = "upstream"
            row["functions"] = []
            files.append(row)
            continue

        if not asm_path:
            row["status"] = "missing_asm"
            row["functions"] = []
            files.append(row)
            continue

        scan = asmscan.parse_asm(asm_path)
        publics = asmscan.parse_inc(
            ROOT / "asm" / "include" / asm_path.relative_to(ROOT / "asm").with_suffix(".inc")
        )
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

    return merge_hgify_splits(files, objects)


HGIFY_MARK = "Generated by hgify/integrate.py"
HGIFY_C_RE = re.compile(r"^// FUNCTION (\w+): matching C", re.M)
HGIFY_ASM_RE = re.compile(r"^// FUNCTION (\w+): no matching C", re.M)
HGIFY_PIECE_RE = re.compile(r"^(.*)_(\d{2,3}|data)$")


def merge_hgify_splits(files, objects):
    """An asm file that hgify split (src/<name>_NN.c files of matching C, asm/<name>_NN.s slices of the rest,
    asm/<name>_data.s) is ledgered as its .s: one matched row per generated C file (its C functions), and one
    pending row for everything still asm in it, marked `split` so triage can rank the remainder as one unit."""
    linked = {o["name"] for o in objects}
    generated = {}  # object name -> text of a generated src/ file
    for obj in objects:
        if obj["kind"] == "src":
            path = ROOT / "src" / (obj["name"] + ".c")
            if path.exists():
                text = path.read_text(errors="replace")
                if HGIFY_MARK in text:
                    generated[obj["name"]] = text

    def Base(name):
        stem = Path(name).name
        piece = HGIFY_PIECE_RE.match(stem)
        return piece.group(1) if piece and find_asm(piece.group(1)) and piece.group(1) not in linked else stem

    split_bases = {Base(n) for n in generated}
    remainders, merged, out = {}, {}, []
    for row, obj in zip(files, objects):
        name = obj["name"]
        if name in generated:
            base, text = Base(name), generated[name]
            matched = HGIFY_C_RE.findall(text)
            if base not in merged:  # one matched row per split asm file, at its first object's place
                merged[base] = {"file": f"asm/{base}.s", "lsf_kind": "src", "status": "matched", "source": "hgify",
                                "objects": 0, "function_count": 0, "lines": 0, "text_bytes_est": 0, "data_only": True,
                                "functions": []}
                out.append(merged[base])
            row = merged[base]
            row["objects"] += 1
            row["function_count"] += len(matched)
            row["data_only"] = row["data_only"] and not matched
            row["functions"] += [{"name": n, "mode": "thumb", "insns": 0, "size_est": 0, "status": "matched"} for n in matched]
            remainders.setdefault(base, {"names": set(), "rows": []})["names"] |= set(HGIFY_ASM_RE.findall(text))
            continue
        piece = HGIFY_PIECE_RE.match(Path(name).name)
        if obj["kind"] == "asm" and piece and piece.group(1) in split_bases and piece.group(1) not in linked:
            rem = remainders.setdefault(piece.group(1), {"names": set(), "rows": []})
            rem["names"] |= {f["name"] for f in row.get("functions", [])}
            rem["rows"].append(row)
            continue
        out.append(row)
    for base, rem in remainders.items():
        asm_path = find_asm(base)
        if not asm_path or not (rem["names"] or rem["rows"]):
            continue
        scan = asmscan.parse_asm(asm_path)
        functions = [f for f in scan["functions"] if f["name"] in rem["names"]]
        rows = rem["rows"]
        out.append({
            "file": asm_path.relative_to(ROOT).as_posix(), "lsf_kind": "asm", "status": "pending", "split": "hgify",
            "lines": sum(r.get("lines", 0) for r in rows), "function_count": len(functions),
            "text_bytes_est": sum(f["size_est"] for f in functions), "data_only": not functions,
            "sections": scan["sections"], "other_sections": scan["other_sections"],
            "jumptable_words": sum(r.get("jumptable_words", 0) for r in rows),
            "imports": sorted({s for r in rows for s in r.get("imports", [])}),
            "exports": sorted({s for r in rows for s in r.get("exports", [])}),
            "functions": [{"name": f["name"], "mode": f["mode"], "insns": f["insns"], "size_est": f["size_est"],
                           "status": "pending"} for f in functions],
        })
    return out


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
