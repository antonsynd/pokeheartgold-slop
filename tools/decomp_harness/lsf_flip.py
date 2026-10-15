#!/usr/bin/env python3
"""Swap one linked object in main.lsf for another, then regenerate the Meson source lists.

The decomp step "link the C instead of the asm" (and its undo) under Meson's naming:

    lsf_flip.py asm/overlay_xx.s src/overlay_xx.c    # asm -> C
    lsf_flip.py src/overlay_xx.c asm/overlay_xx.s    # back to asm (revert)

Both paths are sources relative to the repo root; the new one must exist. Keeps any section
selector, e.g. "(.itcm)". Fails if the old object isn't linked exactly once or the new one is
already linked.
"""
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from meson_names import object_name  # noqa: E402

ROOT = subprocess.run(['git', 'rev-parse', '--show-toplevel'], capture_output=True, text=True,
                      check=True).stdout.strip()


def main(argv):
    if len(argv) != 3:
        print(__doc__, file=sys.stderr)
        return 2
    old_src, new_src = argv[1], argv[2]
    if not os.path.exists(os.path.join(ROOT, new_src)):
        print(f'lsf_flip: {new_src} does not exist', file=sys.stderr)
        return 1
    old_obj, new_obj = object_name(old_src), object_name(new_src)
    lsf_path = os.path.join(ROOT, 'main.lsf')
    text = open(lsf_path).read()
    pat = re.compile(rf'^(\s*Object\s+){re.escape(old_obj)}(\s+\(\S+\))?\s*$', re.M)
    hits = pat.findall(text)
    if len(hits) != 1:
        print(f'lsf_flip: {old_obj} is linked {len(hits)} times in main.lsf (expected once)', file=sys.stderr)
        return 1
    if re.search(rf'^\s*Object\s+{re.escape(new_obj)}\b', text, re.M):
        print(f'lsf_flip: {new_obj} is already linked', file=sys.stderr)
        return 1
    text = pat.sub(lambda m: f'{m.group(1)}{new_obj}{m.group(2) or ""}', text)
    with open(lsf_path, 'w') as f:
        f.write(text)
    print(f'lsf_flip: {old_obj} -> {new_obj}')
    return subprocess.run([sys.executable, os.path.join(ROOT, 'tools', 'decomp_harness', 'meson_port.py'),
                           'lists'], cwd=ROOT).returncode


if __name__ == '__main__':
    sys.exit(main(sys.argv))
