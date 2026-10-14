#!/usr/bin/env python3
"""Refuse a symbol map (R3) that would rename fork-introduced names.

Every key must be a name upstream itself renamed: present at the sync point,
gone from upstream. A key the sync point never had was introduced by the fork
(e.g. sBillboardLists), and renaming it would silently revert our naming --
bytes don't change, so no build check would notice.

Refs are counted only in files whose content differs from upstream's (fork-only
or fork-modified): those are the only files `rewrite` may touch. Upstream's own
files, including its stale headers (include/overlay_00_thumb.h still declares
ov00_021EC11C), stay byte-identical so later merges stay clean.

Usage: sym_map_guard.py SYNC_REV UPSTREAM_REV OURS_REV [map.tsv | --seed]
OURS_REV is best the trial-merge tree: git merge-tree --write-tree mainline upstream/master
Exit 1 on any hard violation.
"""
import re, subprocess, sys
from collections import Counter

PATHS = ['src', 'include', 'asm', 'lib', 'sub']
ADDR_LABEL = re.compile(r'^(_[0-9A-F]{8}|ov\d+_[0-9A-F]{8}|(sub|func|Unk)_[0-9A-F]{8})$')


def word_counts(rev, words, paths=None):
    """Counter of word -> refs, and word -> set of files, in rev (optionally only `paths`)."""
    args = ['git', 'grep', '-o', '-w', '-F']
    for w in sorted(words):
        args += ['-e', w]
    out = subprocess.run(args + [rev, '--'] + (paths if paths is not None else PATHS),
                         capture_output=True, text=True).stdout
    counts, files = Counter(), {}
    for line in out.splitlines():
        # rev:path:word
        path, word = line[len(rev) + 1:].rsplit(':', 1)
        counts[word] += 1
        files.setdefault(word, set()).add(path)
    return counts, files


def fork_scope(up, ours):
    """Paths in ours whose content differs from upstream's (incl. fork-only)."""
    out = subprocess.run(['git', 'diff', '--name-only', '--diff-filter=AM', '--no-renames', up, ours, '--'] + PATHS,
                         capture_output=True, text=True, check=True).stdout
    return out.split()


def load(argv):
    if argv[0] == '--seed':
        sys.path.insert(0, __file__.rsplit('/', 1)[0])
        from sym_map_full import SYM_MAP_FULL
        return dict(SYM_MAP_FULL)
    m = {}
    for line in open(argv[0]):
        if line.strip() and not line.startswith('#'):
            old, new = line.split()[:2]
            m[old] = new
    return m


def main():
    sync, up, ours = sys.argv[1:4]
    m = load(sys.argv[4:] or ['--seed'])
    words = set(m) | set(m.values())
    (c_sync, _), (c_up, _) = word_counts(sync, words), word_counts(up, words)
    scope = fork_scope(up, ours)
    c_ours, f_ours = word_counts(ours, words, scope) if scope else (Counter(), {})
    c_all, _ = word_counts(ours, words)
    hard, soft = [], []
    for old, new in sorted(m.items()):
        if c_sync[old] == 0:
            hard.append(f'{old} -> {new}: not at the sync point (fork-introduced name; would revert it)')
        if c_up[new] == 0:
            hard.append(f'{old} -> {new}: target name not in upstream')
        if ADDR_LABEL.match(new) and not ADDR_LABEL.match(old):
            hard.append(f'{old} -> {new}: renames a real name to an address label')
        if c_up[old] and c_ours[old]:
            soft.append(f'{old} -> {new}: old name also used by upstream ({c_up[old]} refs) and by '
                        f'{c_ours[old]} fork refs: confirm each fork ref means this address')
        both = f_ours.get(old, set()) & f_ours.get(new, set())
        if both:
            soft.append(f'{old} -> {new}: {len(both)} fork files already use both names, check for a clash: '
                        + ', '.join(sorted(both)[:5]))
    live = {o: c_ours[o] for o in m if c_ours[o]}
    print(f'{len(m)} entries; {len(scope)} fork files in scope; {len(live)} entries live there, '
          f'{sum(live.values())} refs in {len(set().union(*(f_ours[o] for o in live))) if live else 0} files '
          f'(all files, incl. upstream-identical: {sum(c_all[o] for o in m)} refs); '
          f'{len(hard)} hard, {len(soft)} soft')
    dead = sorted(o for o in m if not c_ours[o])
    print('no fork refs (no-op after the merge):', ' '.join(dead[:12]), '...' if len(dead) > 12 else '')
    for h in hard:
        print('HARD', h)
    for s in soft:
        print('soft', s)
    return 1 if hard else 0


if __name__ == '__main__':
    sys.exit(main())
