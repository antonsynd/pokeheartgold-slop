#!/usr/bin/env python3
"""Globals defined by more than one linked object (any language).

The old Make link tolerated a global defined in two overlays; upstream had to
make its two such labels local when it first linked under Meson (47f43706c).
Run on the Phase 0 baseline objects; every hit needs one copy made local.
Usage: dupglobals.py BUILD_DIR [LSF]   (LSF defaults to ./main.lsf, old Make format)
"""
import os, re, sys, collections
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import parity
build, lsf = sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else 'main.lsf'
objs = list(dict.fromkeys(re.findall(r'^\s*Object\s+(\S+\.o)', open(lsf).read(), re.M)))
defs, missing = collections.defaultdict(set), []
for o in objs:
    p = os.path.join(build, o)
    if not os.path.exists(p):
        missing.append(o)
        continue
    ob = parity.Obj(p)
    for name, _v, _s, bind, _t, shndx in ob.symbols():
        if bind == 1 and shndx not in (0, 0xFFF1, 0xFFF2) and ob.alloc(shndx):
            defs[name].add(o)
dups = {n: sorted(v) for n, v in defs.items() if len(v) > 1}
print(f'{len(objs)} linked objects, {len(missing)} not built, {len(defs)} globals, {len(dups)} defined twice')
for n, v in sorted(dups.items()):
    print(f'  {n}: {" ".join(v)}')
if missing:
    print(f'incomplete: {len(missing)} objects missing (e.g. {missing[0]}); rebuild for a full answer')
sys.exit(1 if dups or missing else 0)
