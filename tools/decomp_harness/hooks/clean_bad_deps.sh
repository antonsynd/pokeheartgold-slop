#!/usr/bin/env bash
# PostToolUse hook: clean .d files with wrong-environment paths after builds.
# Wine Z:\ paths and absolute paths from another checkout or environment (a
# Docker build's /work/..., another clone) cause stale deps. Paths under this
# checkout are what fixdep writes on purpose, so those .d files stay: deleting
# them makes the next build recompile every object that lost one.
set -euo pipefail

root=$(cd "${CLAUDE_PROJECT_DIR:-.}" && pwd -P)
cd "$root"

python3 - "$root" <<'EOF'
import os, re, sys

root = sys.argv[1].rstrip("/") + "/"
abs_path = re.compile(r"(?<![\w.])/(?:Users|home|work|private|tmp|mnt)/[^\s:\\]+")
count = 0
for top in ("build", "lib/dsprot", "sub"):
    for dirpath, _, names in os.walk(top):
        for n in names:
            if not n.endswith(".d"):
                continue
            p = os.path.join(dirpath, n)
            try:
                text = open(p, errors="replace").read()
            except OSError:
                continue
            if "Z:\\" in text or any(not m.startswith(root) for m in abs_path.findall(text)):
                os.remove(p)
                count += 1
if count:
    print(f"Cleaned {count} .d file(s) with stale paths", file=sys.stderr)
EOF
