#!/usr/bin/env python3
"""R10 report: which fork files redefine what the SDK headers now define (plan §5 R10).

Re-runs clang on the files clang_precheck.py flagged and pairs each redefinition error with
clang's "previous definition is here" note, so each finding names the symbol, the fork file
and line, and the header that now owns it.

Usage: r10_report.py [BUILD_DIR]   (reads clang_precheck.txt; writes r10_report.json)
"""
import collections, concurrent.futures, json, os, re, shlex, subprocess, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
build = sys.argv[1] if len(sys.argv) > 1 else 'build/heartgold.us'
root = os.getcwd()
files = [l[3:].strip() for l in open('clang_precheck.txt') if l.startswith('== ')]

import clang_precheck as cp  # noqa: E402
JOBS = cp.game_c_jobs(build, root)

ERR = re.compile(r'^(?P<f>[^:]+):(?P<l>\d+):\d+: error: (?P<m>.*)$')
NOTE = re.compile(r'^(?P<f>[^:]+):(?P<l>\d+):\d+: note: (previous (definition|declaration) is here)')


def run(src):
    out = cp.run_clang(JOBS[src])
    found = []
    for i, line in enumerate(out):
        m = ERR.match(line)
        if not m:
            continue
        msg = m.group('m')
        kind = next((k for k in ('redefinition of enumerator', 'typedef redefinition', 'redefinition of',
                                 'conflicting types for', 'use of undeclared identifier', 'unknown type name',
                                 'incompatible pointer types') if msg.startswith(k)), None)
        if not kind:
            continue
        sym = (re.findall(r"'([^']*)'", msg) or [''])[0]
        prev = None
        for nl in out[i + 1:i + 6]:
            n = NOTE.match(nl)
            if n:
                prev = (os.path.relpath(n.group('f'), root), int(n.group('l')))
                break
            if ERR.match(nl):
                break
        found.append({'file': os.path.relpath(m.group('f'), root), 'line': int(m.group('l')),
                      'kind': kind, 'sym': sym, 'prev': prev, 'msg': msg[:200]})
    return src, found


report = {}
with concurrent.futures.ThreadPoolExecutor(os.cpu_count()) as ex:
    for src, found in ex.map(run, files):
        report[src] = found
json.dump(report, open('r10_report.json', 'w'), indent=1)

# Summaries
by_kind, owners, in_fork_hdr = collections.Counter(), collections.Counter(), collections.Counter()
for src, found in report.items():
    for f in found:
        by_kind[f['kind']] += 1
        if f['prev']:
            p = f['prev'][0]
            owner = ('subproject:' + p.split('/')[1]) if p.startswith('subprojects/') else \
                    ('build' if p.startswith('build/') else '/'.join(p.split('/')[:2]))
            owners[(f['kind'], owner)] += 1
        if f['file'] != src:
            in_fork_hdr[f['file']] += 1
print(dict(by_kind))
print('where the previous definition lives (kind, owner):')
for k, n in owners.most_common(20):
    print(f'  {n:6d} {k}')
print('errors reported inside headers (not the .c itself):')
for k, n in in_fork_hdr.most_common(10):
    print(f'  {n:6d} {k}')
