#!/usr/bin/env python3
"""After R3, which fork C files call a renamed symbol with no local declaration?

Those relied on a header for the old name. If that header is upstream's stale
one (include/overlay_00_thumb.h etc., left untouched), the renamed call has no
prototype: an implicit declaration under -lang c99, or a mismatch with the
real DWC prototype. Each needs a local extern under the new name with the
matched-time signature (split-header discipline), confirmed by object parity.
Usage: r3_decls.py UPSTREAM_REV OURS_REV
"""
import re, subprocess, sys
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from sym_map_full import SYM_MAP_FULL
up, ours = sys.argv[1:3]
scope = subprocess.run(['git', 'diff', '--name-only', '--diff-filter=AM', '--no-renames', up, ours, '--', 'src', 'include'],
                       capture_output=True, text=True, check=True).stdout.split()
scope = [p for p in scope if p.endswith('.c')]
args = ['git', 'grep', '-l', '-w', '-F']
for k in SYM_MAP_FULL: args += ['-e', k]
hit = [l.split(':', 1)[1] for l in subprocess.run(args + [ours, '--'] + scope, capture_output=True, text=True).stdout.split()]
need = {}
for p in hit:
    src = subprocess.run(['git', 'show', f'{ours}:{p}'], capture_output=True, text=True).stdout
    for old in SYM_MAP_FULL:
        if not re.search(rf'\b{re.escape(old)}\b', src):
            continue
        # a prototype or definition at file scope: type ... old(...) ; or {
        if re.search(rf'^[A-Za-z_][^\n;=]*\b{re.escape(old)}\s*\([^;{{]*\)\s*[;{{]', src, re.M):
            continue
        need.setdefault(p, []).append(old)
print(f'{len(hit)} fork C files reference renamed symbols; {len(need)} rely on a header for '
      f'{sum(map(len, need.values()))} of them:')
for p, olds in sorted(need.items()):
    print(f'  {p}: {" ".join(sorted(olds))}')
