#!/usr/bin/env python3
"""upstream_sync.py -- weekly upstream-pret collision/retire report (T3.3).

Compares upstream/master's src/ tree against this fork's pending asm queue so
local effort is never spent on files upstream has already matched (or is
actively splitting). Read-only over git; run `git fetch upstream` first.

Mapping rules:
  - a pending asm/overlay_NN[_ADDR].s collides with any NEW upstream
    src/overlay_NN*.c / src/overlay_NN/* file (overlay number match);
  - a pending asm/unk_ADDR.s collides with a new upstream src file whose name
    embeds the same 8-hex address;
  - split chunks (T2.1) are mapped back to their monolith overlay number via
    the same overlay_NN prefix, so a local split does not hide a collision.

"NEW upstream src" = present in upstream/master, absent in local HEAD. That
includes files upstream renamed as it decompiled them; the overlay-number and
address heuristics are what tie them back to our asm names.

Usage:
  git fetch upstream && python3 tools/decomp_harness/upstream_sync.py
  python3 tools/decomp_harness/upstream_sync.py --ref upstream/master
"""
import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TRIAGE = ROOT / "tools" / "decomp_harness" / "triage_report.json"

OVERLAY_RE = re.compile(r"overlay_(\d+)")
ADDR_RE = re.compile(r"(0?2[0-9A-Fa-f]{6,7})")


def git_ls(ref, path):
    out = subprocess.run(
        ["git", "ls-tree", "-r", "--name-only", ref, "--", path],
        cwd=ROOT, capture_output=True, text=True, check=True,
    ).stdout
    return set(out.splitlines())


def main():
    ap = argparse.ArgumentParser(description="Upstream pret collision/retire report.")
    ap.add_argument("--ref", default="upstream/master", help="upstream ref (default upstream/master)")
    args = ap.parse_args()

    try:
        up_src = git_ls(args.ref, "src/")
    except subprocess.CalledProcessError:
        print("error: cannot read %s -- run `git fetch upstream` first" % args.ref, file=sys.stderr)
        return 2
    local_src = git_ls("HEAD", "src/")
    new_src = sorted(up_src - local_src)

    ref_date = subprocess.run(
        ["git", "log", "-1", "--format=%h %cs", args.ref],
        cwd=ROOT, capture_output=True, text=True).stdout.strip()

    pending = [r["file"] for r in json.load(open(TRIAGE))["queue"]]

    # index pending asm by overlay number and by embedded address
    by_overlay = {}
    by_addr = {}
    for f in pending:
        m = OVERLAY_RE.search(f)
        if m:
            by_overlay.setdefault(int(m.group(1)), []).append(f)
        for a in ADDR_RE.findall(f):
            by_addr.setdefault(a.lower().lstrip("0"), []).append(f)

    collisions = {}  # pending asm -> [new upstream src]
    for s in new_src:
        hits = set()
        m = OVERLAY_RE.search(s)
        if m and int(m.group(1)) in by_overlay:
            hits.update(by_overlay[int(m.group(1))])
        for a in ADDR_RE.findall(s):
            hits.update(by_addr.get(a.lower().lstrip("0"), []))
        for h in hits:
            collisions.setdefault(h, []).append(s)

    print("upstream ref: %s (%s)" % (args.ref, ref_date))
    print("new upstream src files (vs local HEAD): %d" % len(new_src))
    print("local pending asm files: %d" % len(pending))
    print()
    if collisions:
        print("== DO NOT START LOCALLY -- upstream has matched work here ==")
        for asmf in sorted(collisions):
            print("  %s" % asmf)
            for s in sorted(set(collisions[asmf])):
                print("      <- %s" % s)
        print()
        print("Retire-for-free candidates: port upstream's C per the merge policy")
        print("(split-renamed files: map via tools/decomp_harness/split_manifests/).")
    else:
        print("no collisions between upstream's new src and the local pending queue")

    unmapped = [s for s in new_src
                if not OVERLAY_RE.search(s) and not ADDR_RE.search(s)]
    if unmapped:
        print()
        print("new upstream src with no overlay/address mapping (check by hand):")
        for s in unmapped:
            print("  %s" % s)
    return 0


if __name__ == "__main__":
    sys.exit(main())
