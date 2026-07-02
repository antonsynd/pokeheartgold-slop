#!/usr/bin/env python3
"""
mwcc_compile.py — compile one C TU with the exact make-equivalent MWCC flag set.

Thin CLI over score_candidate.mwcflags so the permuter's compile wrapper and the
target.o generation share ONE flag definition (which is itself kept in sync with
compile_one.sh). Compiles the FULL translation unit — the permuter's fitness is
IPA-faithful only when the whole TU is compiled, not a stripped single function.

    mwcc_compile.py <in.c> -o <out.o> [--game heartgold]

Exit 0 on success, 1 on compile failure (compiler log to stderr).
"""

import argparse
import os
import subprocess
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRIPT_DIR)
from score_candidate import mwcflags, resolve_game, PROJECT_ROOT, MWCC


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src")
    ap.add_argument("-o", "--out", required=True)
    ap.add_argument("--game", default="heartgold")
    args = ap.parse_args()

    _, version_define = resolve_game(args.game)
    out = os.path.abspath(args.out)
    src = os.path.abspath(args.src)
    os.makedirs(os.path.dirname(out), exist_ok=True)

    env = dict(os.environ)
    env["MWCIncludes"] = "lib/include"
    env["LM_LICENSE_FILE"] = "tools/mwccarm/license.dat"
    wine = env.get("WINE", "wine")
    cmd = [wine, MWCC] + mwcflags(version_define) + ["-c", "-o", out, src]
    p = subprocess.run(cmd, cwd=PROJECT_ROOT, env=env, capture_output=True, text=True)
    if p.returncode != 0 or not os.path.exists(out):
        sys.stderr.write(p.stdout + p.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
