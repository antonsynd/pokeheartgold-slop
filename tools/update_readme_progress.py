#!/usr/bin/env python3
"""Auto-update the README.md progress section from source-tree stats.

Computes file-level progress from main.lsf, function-level progress from
coverage_ledger.json, and NONMATCHING counts from grep.  Fetches upstream
pret/pokeheartgold main.lsf for comparison.

The progress section in README.md is delimited by:
    <!-- PROGRESS_START -->
    ...
    <!-- PROGRESS_END -->

Run:  python3 tools/update_readme_progress.py [--check]
  --check  exit 1 if README would change (for CI dry-run)
"""

import json
import re
import subprocess
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


def load_reference():
    if REFERENCE_PATH.exists():
        with open(REFERENCE_PATH) as f:
            return json.load(f)
    return {}


def count_objects(lsf_text):
    """Count src and asm Object lines in an LSF file (excludes lib/)."""
    src = asm = 0
    for line in lsf_text.splitlines():
        m = re.match(r"\s*Object\s+(\S+)", line)
        if not m:
            continue
        p = m.group(1)
        if p.startswith("src/"):
            src += 1
        elif p.startswith("asm/"):
            asm += 1
    return src, asm


def count_nonmatching(root):
    """Count #ifdef NONMATCHING blocks in src/."""
    result = subprocess.run(
        ["grep", "-rc", "#ifdef NONMATCHING", str(root / "src")],
        capture_output=True,
        text=True,
    )
    total = 0
    for line in result.stdout.strip().splitlines():
        parts = line.rsplit(":", 1)
        if len(parts) == 2 and parts[1].strip().isdigit():
            total += int(parts[1])
    return total


def bar(pct, width=BAR_WIDTH):
    filled = round(pct / 100 * width)
    return "█" * filled + "░" * (width - filled)


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


def fmt(n):
    """Format number with commas."""
    return f"{n:,}"


def generate_progress(root):
    ref = load_reference()
    total_rom_fns = ref.get("total_rom_functions", 29500)
    upstream_nm = ref.get("upstream_nonmatching", 4)

    lsf_text = (root / "main.lsf").read_text()
    f_src, f_asm = count_objects(lsf_text)
    f_total = f_src + f_asm
    f_pct = f_src / f_total * 100 if f_total else 0

    nm = count_nonmatching(root)

    ledger = load_coverage_ledger(root)

    up_lsf = fetch_upstream_lsf()
    up_src = up_asm = up_total = 0
    up_pct = 0.0
    if up_lsf:
        up_src, up_asm = count_objects(up_lsf)
        up_total = up_src + up_asm
        up_pct = up_src / up_total * 100 if up_total else 0

    lines = []
    lines.append(
        "### This fork vs upstream "
        "([pret/pokeheartgold](https://github.com/pret/pokeheartgold))"
    )
    lines.append("")
    lines.append("```")
    lines.append("Files decompiled (C / total linked objects)")
    lines.append(
        f"  Fork       {bar(f_pct)}  {f_pct:4.1f}%  ({fmt(f_src)} / {fmt(f_total)})"
    )
    if up_lsf:
        lines.append(
            f"  Upstream   {bar(up_pct)}  {up_pct:4.1f}%  "
            f"({fmt(up_src)} / {fmt(up_total)})"
        )

    if ledger:
        s = ledger["summary"]
        ft = s["function_totals"]
        pending_fns = ft.get("pending", 0)
        blocked_fns = s["by_status"].get("blocked", {}).get("functions", 0)
        partial_fns = ft.get("partial_in_blocked", 0)

        still_asm = pending_fns + blocked_fns - partial_fns
        fork_in_c = total_rom_fns - still_asm
        fork_matching = fork_in_c - nm
        fork_c_pct = fork_in_c / total_rom_fns * 100
        fork_match_pct = fork_matching / total_rom_fns * 100

        up_in_c = total_rom_fns - still_asm - ft.get("matched", 0) - partial_fns
        up_matching = up_in_c - upstream_nm
        up_c_pct = up_in_c / total_rom_fns * 100
        up_match_pct = up_matching / total_rom_fns * 100

        lines.append("")
        lines.append(
            f"Functions in C (of ~{total_rom_fns // 1000}k total ROM functions)"
        )
        lines.append(
            f"  Fork       {bar(fork_c_pct)}  {fork_c_pct:4.1f}%  ({fmt(fork_in_c)})"
        )
        if up_lsf:
            lines.append(
                f"  Upstream   {bar(up_c_pct)}  {up_c_pct:4.1f}%  ({fmt(up_in_c)})"
            )

        lines.append("")
        lines.append("Functions fully matching (byte-identical to retail)")
        lines.append(
            f"  Fork       {bar(fork_match_pct)}  {fork_match_pct:4.1f}%  "
            f"({fmt(fork_matching)})"
        )
        if up_lsf:
            lines.append(
                f"  Upstream   {bar(up_match_pct)}  {up_match_pct:4.1f}%  "
                f"({fmt(up_matching)})"
            )

    lines.append("```")
    lines.append("")

    lines.append("| Metric | Fork | Upstream | Delta |")
    lines.append("|--------|-----:|--------:|------:|")
    if up_lsf:
        file_delta = f_src - up_src
        lines.append(
            f"| Files decompiled | {fmt(f_src)} | {fmt(up_src)} | "
            f"**+{fmt(file_delta)}** |"
        )
    else:
        lines.append(
            f"| Files decompiled | {fmt(f_src)} / {fmt(f_total)} | — | — |"
        )

    if ledger and up_lsf:
        fn_delta = fork_in_c - up_in_c  # type: ignore[possibly-undefined]
        lines.append(
            f"| Functions in C | {fmt(fork_in_c)} | {fmt(up_in_c)} | "  # type: ignore[possibly-undefined]
            f"**+{fmt(fn_delta)}** |"
        )
        lines.append(
            f"| NONMATCHING stubs | {nm} | {upstream_nm} | +{nm - upstream_nm} |"
        )
    elif ledger:
        lines.append(
            f"| Functions in C | {fmt(fork_in_c)} | — | — |"  # type: ignore[possibly-undefined]
        )
        lines.append(f"| NONMATCHING stubs | {nm} | — | — |")
    else:
        lines.append(f"| NONMATCHING stubs | {nm} | — | — |")

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
        old_heading = "### This fork vs upstream"
        next_section = "## Architecture"
        h_idx = text.find(old_heading)
        s_idx = text.find(next_section)
        if h_idx == -1 or s_idx == -1:
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
