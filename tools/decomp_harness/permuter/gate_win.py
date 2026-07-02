#!/usr/bin/env python3
"""
gate_win.py — sibling-guard acceptance gate for a permuter candidate (ROADMAP T1.4).

The permuter's own objdump scorer only looks at the TARGET function. MWCC's -ipa
file means a source edit can perturb an already-matched SIBLING; such a candidate is
worthless no matter how good the target score is. This gate is the hard check: it
splices a permuter output's target function into the real seed TU and runs
score_candidate.py (full-TU compile + baseline-matching sibling guard) over it.

    gate_win.py <job_dir> <permuter-output-dir-or-source.c>

Reads job.json from <job_dir>. Prints score_candidate.py's JSON verdict and a human
summary. Exit code mirrors score_candidate.py: 0 accepted (0 => byte-match found),
3 compile-failed, 4 target-missing, 5 sibling-regression.
"""

import json
import os
import subprocess
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRIPT_DIR)
import fn_extract


def main():
    if len(sys.argv) != 3:
        sys.exit("usage: gate_win.py <job_dir> <output-dir|source.c>")
    job_dir, cand = sys.argv[1], sys.argv[2]
    job = json.load(open(os.path.join(job_dir, "job.json")))

    if os.path.isdir(cand):
        cand = os.path.join(cand, "source.c")
    if not os.path.isfile(cand):
        sys.exit(f"gate_win: no candidate source at {cand}")

    project_root = job["project_root"]
    tu = job["tu"]
    func = job["function"]
    game = job["game"]
    ref = job.get("ref") or ""
    seed = os.path.join(job_dir, job["seed_full"])

    cand_src = open(cand).read()
    loc = fn_extract.find_def(cand_src, func)
    if loc is None:
        sys.exit(f"gate_win: target '{func}' not found in {cand}")
    full = fn_extract.splice(open(seed).read(), func, loc[2])

    out_dir = os.path.join(job_dir, "gate_out")
    os.makedirs(out_dir, exist_ok=True)
    full_c = os.path.join(out_dir, "candidate_full.c")
    open(full_c, "w").write(full)

    cmd = [sys.executable, os.path.join(SCRIPT_DIR, "score_candidate.py"),
           "--tu", tu, "--func", func, "--candidate", full_c,
           "--out-dir", out_dir, "--game", game]
    if ref:
        cmd += ["--ref", ref]
    # score_candidate.py chdirs to project root itself.
    p = subprocess.run(cmd, cwd=project_root, capture_output=True, text=True)
    sys.stdout.write(p.stdout)
    sys.stderr.write(p.stderr)
    return p.returncode


if __name__ == "__main__":
    sys.exit(main())
