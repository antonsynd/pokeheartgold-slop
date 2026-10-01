#!/usr/bin/env python3
"""Auto-update the README.md progress section from source-tree stats.

Splits decompiled functions into the upstream pret/pokeheartgold baseline and
this fork's additions:

  * Fork additions are measured: a src/ object is the fork's when it is not a
    src/ object in upstream's main.lsf.  Its functions are counted from the
    asm/*.s file the fork keeps as reference.
  * The upstream baseline is derived: upstream deletes asm on decomp, so its
    count is total_rom_functions (an estimate) - still-asm - fork additions,
    and is printed with "~".
  * NONMATCHING blocks are attributed per file by the same ownership rule.

If upstream's main.lsf can't be fetched, ownership falls back to the coverage
ledger's per-file status (which under-counts the fork) and the README says so.

The progress section in README.md is delimited by:
    <!-- PROGRESS_START -->
    ...
    <!-- PROGRESS_END -->

Run:  python3 tools/update_readme_progress.py [--check]
  --check  exit 1 if README would change (for CI dry-run)
"""

import json
import re
import sys
from pathlib import Path
from urllib.request import urlopen

ROOT = Path(__file__).resolve().parents[1]
START_MARKER = "<!-- PROGRESS_START -->"
END_MARKER = "<!-- PROGRESS_END -->"
UPSTREAM_LSF_URL = (
    "https://raw.githubusercontent.com/pret/pokeheartgold/master/main.lsf"
)
BAR_WIDTH = 50
REFERENCE_PATH = ROOT / ".github" / "progress_reference.json"
FUNC_START_RE = re.compile(r"^\s*(?:thumb|arm)_func_start\b", re.M)


def load_reference():
    if REFERENCE_PATH.exists():
        with open(REFERENCE_PATH) as f:
            return json.load(f)
    return {}


def lsf_objects(lsf_text):
    """Object paths in an LSF file, in order."""
    return re.findall(r"^\s*Object\s+(\S+)", lsf_text, re.M)


def fetch_upstream_lsf():
    try:
        with urlopen(UPSTREAM_LSF_URL, timeout=15) as resp:
            return resp.read().decode()
    except Exception as e:
        print(f"Warning: could not fetch upstream main.lsf: {e}", file=sys.stderr)
        return None


def load_coverage_ledger(root):
    path = root / "tools" / "decomp_harness" / "coverage_ledger.json"
    if path.exists():
        with open(path) as f:
            return json.load(f)
    return None


def nonmatching_by_object(root):
    """{"src/....o": count of #ifdef NONMATCHING blocks} for every src/*.c."""
    counts = {}
    for c in (root / "src").rglob("*.c"):
        n = c.read_text(errors="replace").count("#ifdef NONMATCHING")
        if n:
            counts[c.relative_to(root).with_suffix(".o").as_posix()] = n
    return counts


def asm_function_count(root, obj, asm_by_stem):
    """Functions in the reference .s kept for a decompiled src/ object."""
    s = root / "asm" / Path(obj[len("src/") :]).with_suffix(".s")
    if not s.exists():
        candidates = asm_by_stem.get(Path(obj).stem, [])
        if len(candidates) != 1:
            return 0  # data-only object, or ambiguous stem
        s = candidates[0]
    return len(FUNC_START_RE.findall(s.read_text(errors="replace")))


def stacked_bar(base_pct, added_pct, width=BAR_WIDTH):
    """Two-segment bar: upstream work (█), then this fork's additions (▓)."""
    base = min(max(round(base_pct / 100 * width), 0), width)
    total = min(max(round((base_pct + added_pct) / 100 * width), base), width)
    return "█" * base + "▓" * (total - base) + "░" * (width - total)


def fmt(n):
    """Format number with commas."""
    return f"{n:,}"


def generate_progress(root):
    ref = load_reference()
    total_rom_fns = ref.get("total_rom_functions", 29500)

    objects = lsf_objects((root / "main.lsf").read_text())
    src_objs = [o for o in objects if o.startswith("src/")]
    f_src = len(src_objs)
    f_total = f_src + sum(o.startswith("asm/") for o in objects)
    f_pct = f_src / f_total * 100 if f_total else 0

    nm_by_obj = nonmatching_by_object(root)
    nm = sum(nm_by_obj.values())

    ledger = load_coverage_ledger(root)
    up_lsf = fetch_upstream_lsf() if ledger else None

    lines = []
    lines.append("### Progress: upstream baseline + this fork's additions")
    lines.append("")

    if ledger:
        s = ledger["summary"]
        ft = s["function_totals"]
        pending_fns = ft.get("pending", 0)
        blocked_fns = s["by_status"].get("blocked", {}).get("functions", 0)
        partial_fns = ft.get("partial_in_blocked", 0)
        still_asm = pending_fns + blocked_fns - partial_fns
        total_in_c = total_rom_fns - still_asm

        if up_lsf:
            upstream_src = {o for o in lsf_objects(up_lsf) if o.startswith("src/")}

            def is_fork(obj):
                return obj not in upstream_src

            asm_by_stem = {}
            for a in (root / "asm").rglob("*.s"):
                asm_by_stem.setdefault(a.stem, []).append(a)
            fork_in_c = partial_fns + sum(
                asm_function_count(root, o, asm_by_stem)
                for o in src_objs
                if is_fork(o)
            )
        else:
            upstream_stems = {
                Path(f["file"]).stem
                for f in ledger["files"]
                if f["status"] == "upstream"
            }

            def is_fork(obj):
                return Path(obj).stem not in upstream_stems

            fork_in_c = ft.get("matched", 0) + partial_fns

        fork_nm = sum(n for o, n in nm_by_obj.items() if is_fork(o))
        up_nm = nm - fork_nm
        fork_matching = fork_in_c - fork_nm
        up_in_c = max(total_in_c - fork_in_c, 0)
        up_matching = max(up_in_c - up_nm, 0)
        total_matching = up_matching + fork_matching

        def pct(n):
            return n / total_rom_fns * 100

        lines.append(
            "Most of the decompiled code here is the work of the "
            "[pret/pokeheartgold](https://github.com/pret/pokeheartgold) "
            "contributors, merged from upstream. The bars separate that baseline "
            "(█) from what this fork has added on top (▓). The additions are "
            "LLM-assisted and have **not** been reviewed by pret."
        )
        lines.append("")
        lines.append("```")
        lines.append(
            f"Functions in C (of ~{total_rom_fns // 1000}k total ROM functions)"
        )
        lines.append(
            f"  {stacked_bar(pct(up_in_c), pct(fork_in_c))}  "
            f"~{pct(total_in_c):4.1f}%  (~{fmt(total_in_c)})"
        )
        lines.append("")
        lines.append("Functions fully matching (byte-identical to retail)")
        lines.append(
            f"  {stacked_bar(pct(up_matching), pct(fork_matching))}  "
            f"~{pct(total_matching):4.1f}%  (~{fmt(total_matching)})"
        )
        lines.append("")
        lines.append(
            "  █ pret/pokeheartgold   ▓ added in this fork   ░ not yet in C"
        )
        lines.append("```")
        lines.append("")

        lines.append("| | Functions in C | Fully matching | NONMATCHING blocks |")
        lines.append("|---|---:|---:|---:|")
        lines.append(
            f"| █ From pret/pokeheartgold | ~{fmt(up_in_c)} | "
            f"~{fmt(up_matching)} | {up_nm} |"
        )
        lines.append(
            f"| ▓ Added in this fork (LLM-assisted) | {fmt(fork_in_c)} | "
            f"{fmt(fork_matching)} | {fork_nm} |"
        )
        lines.append(
            f"| Total | ~{fmt(total_in_c)} | ~{fmt(total_matching)} | {nm} |"
        )
        lines.append("")
        lines.append(
            "The fork's additions are counted from the files it decompiled. "
            "pret's figures (~) are derived from an estimated "
            f"~{fmt(total_rom_fns)} total ROM functions, because upstream "
            "doesn't keep the asm for decompiled files. A NONMATCHING block is "
            "a function with a C version kept for reference that is still "
            "linked from handwritten asm. It counts toward *Functions in C* "
            "but not *Fully matching*."
        )
        if not up_lsf:
            lines.append("")
            lines.append(
                "*Upstream's `main.lsf` was unavailable when this was generated, "
                "so ownership comes from the coverage ledger, which under-counts "
                "this fork's files.*"
            )
        lines.append("")

    lines.append(
        f"{fmt(f_src)} of {fmt(f_total)} linked objects are C ({f_pct:.1f}%). "
        "Object counts aren't comparable with upstream's, because this fork "
        "splits some overlays into smaller chunks."
    )
    lines.append("")
    lines.append(
        "Detailed function-level coverage, active blockers, and the triage queue "
        "are tracked in **[`COVERAGE.md`](tools/decomp_harness/COVERAGE.md)**, "
        "regenerated from the build by `coverage_ledger.py`."
    )

    return "\n".join(lines)


def update_readme(root, check_only=False):
    readme_path = root / "README.md"
    text = readme_path.read_text()

    start_idx = text.find(START_MARKER)
    end_idx = text.find(END_MARKER)

    if start_idx == -1 or end_idx == -1:
        print(
            "Progress markers not found in README.md, inserting them...",
            file=sys.stderr,
        )
        next_section = "## Architecture"
        s_idx = text.find(next_section)
        h_idx = text.rfind("\n### Progress", 0, s_idx) + 1 if s_idx != -1 else 0
        if s_idx == -1 or h_idx == 0:
            print(
                "ERROR: Could not find progress section boundaries in README.md",
                file=sys.stderr,
            )
            return False

        progress = generate_progress(root)
        before = text[:h_idx]
        after = text[s_idx:]
        new_text = (
            before
            + START_MARKER
            + "\n"
            + progress
            + "\n"
            + END_MARKER
            + "\n\n"
            + after
        )
    else:
        end_idx += len(END_MARKER)
        progress = generate_progress(root)
        new_text = (
            text[:start_idx]
            + START_MARKER
            + "\n"
            + progress
            + "\n"
            + END_MARKER
            + text[end_idx:]
        )

    if new_text == text:
        print("README.md is up to date")
        return False

    if check_only:
        print("README.md is out of date (--check mode, not writing)")
        return True

    readme_path.write_text(new_text)
    print("README.md updated")
    return True


if __name__ == "__main__":
    check = "--check" in sys.argv
    changed = update_readme(ROOT, check_only=check)
    sys.exit(1 if check and changed else 0)
