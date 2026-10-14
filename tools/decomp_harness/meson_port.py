#!/usr/bin/env python3
"""Convert the fork's content to pret's Meson build (#22). Idempotent; rerun on any branch.

Subcommands:
  lsf [--ours REV] [--upstream REV]
      Rewrite main.lsf in Meson's object naming. Upstream's main.lsf is the skeleton (block
      headers, directives, Library lines, kept lib objects); each block's run of game Objects
      is replaced by our game objects for that block, from our old-format LSF.
      Defaults: --ours mainline, --upstream upstream/master. --ours may also be a file path.
  lists [--check]
      Generate src/meson.build and asm/meson.build from main.lsf. --check: fail if stale.
  rewrite [--dry-run] [--upstream REV]
      Apply rewrite rules R1-R9 (plan §5) to files that differ from upstream. Files identical
      to upstream's are never touched: upstream keeps stale headers with old names on purpose.
      Run ./format.sh (or clang-format -i on the printed files) afterwards: R1/R4 re-sort includes.

See tools/decomp_harness/MESON_SYNC_PLAN.md, Phase 3.
"""
import argparse, os, re, subprocess, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from meson_names import GAME_OBJ_RE, OBJDIR, object_name  # noqa: E402

ROOT = subprocess.run(['git', 'rev-parse', '--show-toplevel'], capture_output=True, text=True,
                      check=True).stdout.strip()

# Game objects that move into upstream's libraries (plan §1, D2): not carried over.
DROPPED_RE = re.compile(r'^(asm/middleware\.o|src/hgify/overlay_13_thumb_2/[^/]+\.o|asm/overlay_13_thumb_2_[^/]+\.o)$')

HEADER_RE = re.compile(r'^(Static|Autoload|Overlay)\s+(\S+)\s*$')
ENTRY_RE = re.compile(r'^(\s*)(Object|Library)\s+(\S+)(\s+\(\S+\))?\s*$')


def read_rev_or_file(spec, path='main.lsf'):
    if os.path.exists(spec):
        return open(spec).read()
    return subprocess.run(['git', 'show', f'{spec}:{path}'], capture_output=True, text=True,
                          check=True, cwd=ROOT).stdout


def parse_blocks(text):
    """[(name, [line indexes inside the braces])] plus the line list."""
    lines = text.splitlines()
    blocks, cur, inside = [], None, False
    for i, ln in enumerate(lines):
        s = ln.split('#', 1)[0].strip()
        m = HEADER_RE.match(s)
        if m:
            cur = (m.group(2), [])
            blocks.append(cur)
            continue
        if s == '{':
            inside = True
            continue
        if s == '}':
            inside = False
            continue
        if inside and cur is not None and s:
            cur[1].append(i)
    return blocks, lines


def source_of(old_obj):
    """Our old LSF object path (src/x.o, asm/x.o) -> its source file, checked on disk."""
    stem = old_obj[:-2]
    ext = '.c' if old_obj.startswith('src/') else '.s'
    src = stem + ext
    if not os.path.exists(os.path.join(ROOT, src)):
        raise SystemExit(f'lsf: no source for {old_obj} (expected {src})')
    return src


def cmd_lsf(args):
    up_text = read_rev_or_file(args.upstream)
    ours_text = read_rev_or_file(args.ours)
    up_blocks, up_lines = parse_blocks(up_text)
    our_blocks, our_lines = parse_blocks(ours_text)
    if [b[0] for b in up_blocks] != [b[0] for b in our_blocks]:
        raise SystemExit('lsf: block headers differ between upstream and ours')

    # Our game objects per block, converted.
    ours = {}
    expected_seq, dropped, libs = [], 0, 0
    for name, idxs in our_blocks:
        out = []
        for i in idxs:
            m = ENTRY_RE.match(our_lines[i])
            if not m or m.group(2) != 'Object':
                continue
            path, sel = m.group(3), m.group(4) or ''
            if path.startswith('lib/'):
                libs += 1
                continue
            if DROPPED_RE.match(path):
                dropped += 1
                continue
            if not path.startswith(('src/', 'asm/')):
                raise SystemExit(f'lsf: unexpected object {path} in {name}')
            new = object_name(source_of(path)) + sel
            out.append(new)
            expected_seq.append(new)
        ours[name] = out

    # Replace each upstream block's contiguous run of game objects.
    replace = {}  # first line index -> (last line index, new lines)
    for name, idxs in up_blocks:
        game = [i for i in idxs
                if (m := ENTRY_RE.match(up_lines[i])) and m.group(2) == 'Object' and GAME_OBJ_RE.match(m.group(3))]
        if not game:
            if ours[name]:
                raise SystemExit(f'lsf: {name} has no upstream game objects to anchor ours on')
            continue
        run = [i for i in idxs if game[0] <= i <= game[-1]]
        if run != game:
            raise SystemExit(f'lsf: upstream game objects in {name} are not contiguous')
        indent = re.match(r'\s*', up_lines[game[0]]).group(0)
        replace[game[0]] = (game[-1], [f'{indent}Object {o}' for o in ours[name]])

    out, i = [], 0
    while i < len(up_lines):
        if i in replace:
            last, new = replace[i]
            out.extend(new)
            i = last + 1
        else:
            out.append(up_lines[i])
            i += 1
    new_text = '\n'.join(out) + '\n'

    # Asserts (plan Phase 3).
    nb, nl = parse_blocks(new_text)
    assert [b[0] for b in nb] == [b[0] for b in up_blocks], 'block headers changed'
    got = []
    for _, idxs in nb:
        for i in idxs:
            m = ENTRY_RE.match(nl[i])
            if m and m.group(2) == 'Object' and GAME_OBJ_RE.match(m.group(3)):
                got.append(m.group(3) + (m.group(4) or ''))
    assert got == expected_seq, 'game object sequence differs from ours'
    seen, dup = set(), set()
    for g in got:
        (dup if g in seen else seen).add(g)
    assert not dup, f'duplicate objects: {sorted(dup)[:5]}'

    with open(os.path.join(ROOT, 'main.lsf'), 'w') as f:
        f.write(new_text)
    print(f'lsf: {len(expected_seq)} game objects in {len(nb)} blocks; dropped {dropped} '
          f'(D2 pieces, middleware), {libs} old lib objects replaced by upstream Library lines')


# ---------------------------------------------------------------- lists

LIST_HEADER = '# Generated by tools/decomp_harness/meson_port.py lists from main.lsf. Do not edit.\n'


def lsf_game_sources():
    """Sources of every game object in main.lsf, via the reverse of Meson's naming."""
    text = open(os.path.join(ROOT, 'main.lsf')).read()
    objs = []
    for ln in text.splitlines():
        m = ENTRY_RE.match(ln.split('#', 1)[0])
        if m and m.group(2) == 'Object' and GAME_OBJ_RE.match(m.group(3)):
            objs.append(m.group(3))
    files = subprocess.run(['git', 'ls-files', '--cached', '--others', '--exclude-standard', '--', 'src', 'asm'],
                           capture_output=True, text=True, check=True, cwd=ROOT).stdout.split()
    rev = {}
    for f in files:
        if f.endswith(('.c', '.s')):
            o = object_name(f)
            if o in rev:
                raise SystemExit(f'lists: {f} and {rev[o]} map to the same object name {o}')
            rev[o] = f
    missing = [o for o in objs if o not in rev]
    if missing:
        raise SystemExit(f'lists: {len(missing)} LSF objects have no source, e.g. {missing[:3]}')
    srcs = [rev[o] for o in objs]
    return sorted({s for s in srcs if s.endswith('.c')}), sorted({s for s in srcs if s.endswith('.s')})


def render(var, files, prefix):
    body = ''.join(f"    '{f[len(prefix):]}',\n" for f in files)
    return f'{LIST_HEADER}{var} = files(\n{body})\n'


def cmd_lists(args):
    c, s = lsf_game_sources()
    want = {
        'src/meson.build': render('pokeheartgold_c', c, 'src/'),
        'asm/meson.build': render('pokeheartgold_asm', s, 'asm/'),
    }
    stale = []
    for path, text in want.items():
        full = os.path.join(ROOT, path)
        have = open(full).read() if os.path.exists(full) else None
        if have != text:
            stale.append(path)
            if not args.check:
                with open(full, 'w') as f:
                    f.write(text)
    if args.check:
        if stale:
            print(f'lists: stale: {" ".join(stale)}; run meson_port.py lists')
            return 1
        print('lists: up to date')
        return 0
    print(f'lists: {len(c)} C, {len(s)} asm sources; rewrote {" ".join(stale) or "nothing"}')
    return 0


# ---------------------------------------------------------------- rewrite

sys.path.insert(0, os.path.join(ROOT, 'tools', 'decomp_harness', 'meson_sync'))
from rules import C_RULES, ASM_RULES, SYM_MAP, _SYM_RE  # noqa: E402  (R1, R2, R5-R7, R9 and R3)

R4_RULES = [
    (re.compile(r'(#include\s*)<nitro/fx\.h>'), r'\1<nitro/fx/fx.h>'),
    (re.compile(r'(#include\s*)<nitro/os/(cache|interrupt|system|ownerInfo)\.h>'), r'\1<nitro/os.h>'),
    (re.compile(r'(#include\s*)<nitro/hw/common/io_reg\.h>'), r'\1<nitro/hw/ARM9/ioreg_OS.h>'),
    (re.compile(r'(#include\s*)"(spl(?:_\w+)?\.h)"'), r'\1"library/\2"'),
    (re.compile(r'^[ \t]*#include\s*<MSL\.h>[ \t]*\n', re.M), ''),
]
R9_RULES = [(re.compile(r'\bmapingType\b'), 'mappingType')]


def fork_files(upstream):
    """Paths under src/include/asm whose working-tree content differs from upstream's."""
    def git(*a):
        return subprocess.run(['git', *a], capture_output=True, text=True, check=True, cwd=ROOT).stdout.split()
    paths = set(git('diff', '--name-only', '--diff-filter=AM', '--no-renames', upstream, '--', 'src', 'include', 'asm'))
    paths |= set(git('ls-files', '--others', '--exclude-standard', '--', 'src', 'include', 'asm'))
    return sorted(p for p in paths if p.endswith(('.c', '.h', '.s', '.inc')))


_STALE_DECLS = None


def stale_decls(upstream):
    """{old name: (return type, params)} from upstream headers that still declare R3's old names
    (include/overlay_00_thumb.h etc.; upstream left them stale)."""
    global _STALE_DECLS
    if _STALE_DECLS is None:
        _STALE_DECLS = {}
        args = ['git', 'grep', '-h', '-w', '-F']
        for k in SYM_MAP:
            args += ['-e', k]
        out = subprocess.run(args + [upstream, '--', 'include/*.h'], capture_output=True, text=True,
                             cwd=ROOT).stdout
        for line in out.splitlines():
            m = re.match(r'^\s*([A-Za-z_][\w\s\*]*?)\b(\w+)\s*\(([^;{]*)\)\s*;', line)
            if m and m.group(2) in SYM_MAP:
                _STALE_DECLS[m.group(2)] = (m.group(1).strip(), m.group(3).strip())
    return _STALE_DECLS


def r3_prototypes_needed(t, upstream):
    """Prototypes a C file needs after R3: one for each renamed symbol it uses but doesn't declare.

    Such files got the declaration from an upstream header that keeps the old name, so after R3
    the call would have no prototype. The local one keeps the signature the file was matched with
    (split-header discipline). Computed on the text before R3 runs.
    """
    decls = stale_decls(upstream)
    need = []
    for old, new in SYM_MAP.items():
        if old not in decls or not re.search(rf'\b{re.escape(old)}\b', t):
            continue
        if re.search(rf'^[A-Za-z_][^\n;=]*\b{re.escape(old)}\s*\([^;{{]*\)\s*[;{{]', t, re.M):
            continue  # declared or defined locally; R3 renames it in place
        ret, params = decls[old]
        need.append(f'{ret} {new}({params});')
    return need


def insert_after_includes(t, lines):
    incs = list(re.finditer(r'^#include .*$', t, re.M))
    at = incs[-1].end() if incs else 0
    block = ('// Upstream renamed these and its header still declares the old names (#22).\n'
             + '\n'.join(lines) + '\n')
    return t[:at] + '\n\n' + block + t[at:]


def rewrite_text(path, t, upstream='upstream/master'):
    """Return (new text, {rule: count})."""
    counts = {}
    protos = r3_prototypes_needed(t, upstream) if path.endswith('.c') else []

    def apply(label, rx, repl):
        nonlocal t
        t, n = rx.subn(repl, t)
        if n:
            counts[label] = counts.get(label, 0) + n
    if path.endswith(('.c', '.h')):
        for i, (rx, repl) in enumerate(C_RULES):
            apply(['R1', 'R1', 'R2', 'R2', 'R2', 'R2', 'R9', 'R9'][i] if i < 8 else 'R2', rx, repl)
        for rx, repl in R4_RULES:
            apply('R4', rx, repl)
        for rx, repl in R9_RULES:
            apply('R9', rx, repl)
        apply('R3', _SYM_RE, lambda m: SYM_MAP[m.group(1)])
    else:
        for i, (rx, repl) in enumerate(ASM_RULES):
            apply(['R6', 'R5', 'R7', 'R3'][i], rx, repl)
    if protos:
        t = insert_after_includes(t, protos)
        counts['R3 prototypes'] = len(protos)
    return t, counts


def cmd_rewrite(args):
    total, touched = {}, []
    for path in fork_files(args.upstream):
        full = os.path.join(ROOT, path)
        old = open(full, encoding='latin-1').read()
        new, counts = rewrite_text(path, old, args.upstream)
        if new != old:
            touched.append(path)
            for k, v in counts.items():
                total[k] = total.get(k, 0) + v
            if not args.dry_run:
                with open(full, 'w', encoding='latin-1') as f:
                    f.write(new)
    for k in sorted(total):
        print(f'rewrite: {k}: {total[k]} replacements')
    print(f'rewrite: {len(touched)} files {"would change" if args.dry_run else "changed"}')
    if args.list:
        print('\n'.join(touched))
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest='cmd', required=True)
    p = sub.add_parser('lsf')
    p.add_argument('--ours', default='mainline')
    p.add_argument('--upstream', default='upstream/master')
    p = sub.add_parser('lists')
    p.add_argument('--check', action='store_true')
    p = sub.add_parser('rewrite')
    p.add_argument('--dry-run', action='store_true')
    p.add_argument('--list', action='store_true', help='print the changed files')
    p.add_argument('--upstream', default='upstream/master')
    args = ap.parse_args()
    return {'lsf': cmd_lsf, 'lists': cmd_lists, 'rewrite': cmd_rewrite}[args.cmd](args) or 0


if __name__ == '__main__':
    sys.exit(main())
