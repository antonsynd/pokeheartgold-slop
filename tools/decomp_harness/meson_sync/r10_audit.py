#!/usr/bin/env python3
"""Audit R10 deletions: every statement r10_fix.py removed must declare something the SDK defines.

Splits the before/after text of each file R10 touched into top-level C statements (brace- and
comment-aware) and lists deleted statements that declare no SDK-defined name: those were removed
by mistake (r10_fix's first span walk could overshoot into the previous statement).

Usage: r10_audit.py BEFORE_REV AFTER_REV [--restore] [--ignore REGEX] [--renames TSV]
  --restore re-inserts each wrongly deleted statement into the working-tree file, just before the
  statement that followed it in BEFORE (or at the end of the declarations it was among).
  --ignore skips deleted statements matching REGEX (deliberate edits made in the same range).
  --renames TSV (old<TAB>new per line, e.g. from `git diff --name-status -M AFTER HEAD`): restore
  into a file's new name when a later merge renamed it (rename detection carries R10's edits).
"""
import os, re, subprocess, sys

IDENT = re.compile(r'[A-Za-z_]\w*')


def statements(text):
    """[(start, end)] of top-level statements: ';' or a function body's '}' at depth 0 ends one;
    preprocessor lines and comments between statements are statements of their own."""
    out, i, n, depth, start = [], 0, len(text), 0, None
    while i < n:
        c = text[i]
        if start is None:
            if c in ' \t\r\n':
                i += 1
                continue
            start = i
            if c == '#' and depth == 0:          # preprocessor line (with continuations)
                while i < n and not (text[i] == '\n' and text[i - 1] != '\\'):
                    i += 1
                out.append((start, i)); start = None
                continue
            if text.startswith('//', i):
                j = text.find('\n', i); j = n if j < 0 else j
                out.append((start, j)); start = None; i = j
                continue
            if text.startswith('/*', i):
                j = text.find('*/', i + 2); j = n if j < 0 else j + 2
                out.append((start, j)); start = None; i = j
                continue
        if text.startswith('//', i):
            j = text.find('\n', i); i = n if j < 0 else j
            continue
        if text.startswith('/*', i):
            j = text.find('*/', i + 2); i = n if j < 0 else j + 2
            continue
        if c in '"\'':
            q, i = c, i + 1
            while i < n and text[i] != q:
                i += 2 if text[i] == '\\' else 1
            i += 1
            continue
        if c == '{':
            depth += 1
        elif c == '}':
            depth -= 1
            if depth == 0:
                rest = text[i + 1:i + 200]
                if not re.match(r'[\s\w,\*\[\]]*;', rest):   # a function body ends here
                    out.append((start, i + 1)); start = None
        elif c == ';' and depth == 0:
            out.append((start, i + 1)); start = None
        i += 1
    if start is not None:
        out.append((start, n))
    return out


def norm(s):
    return re.sub(r'\s+', ' ', s).strip()


def sdk_names():
    names = set()
    for top in ('subprojects',):
        for dirpath, _, files in os.walk(top):
            if '/include' not in dirpath and not dirpath.endswith('include'):
                continue
            for f in files:
                if f.endswith('.h'):
                    try:
                        names.update(IDENT.findall(open(os.path.join(dirpath, f), errors='replace').read()))
                    except OSError:
                        pass
    return names


def declared_names(stmt):
    """Names a statement declares: typedef/struct/enum tags and names, enumerators, function names."""
    s = re.sub(r'//[^\n]*|/\*.*?\*/', ' ', stmt, flags=re.S)
    names = set(re.findall(r'\b(?:struct|union|enum)\s+(\w+)', s))
    m = re.search(r'\}\s*([\w\s,\*]+);\s*$', s)
    if m:
        names.update(IDENT.findall(m.group(1)))
    if re.match(r'\s*typedef\b', s) and not m:
        t = IDENT.findall(s.split('(')[0])
        if t:
            names.add(t[-1])
    names.update(re.findall(r'^\s*(\w+)\s*(?:=|,|$)', s, re.M))       # enumerators
    f = re.search(r'(\w+)\s*\([^()]*(\([^()]*\)[^()]*)*\)\s*(;|\{)', s)
    if f:
        names.add(f.group(1))
    return names - {'typedef', 'struct', 'enum', 'union', 'static', 'inline', 'extern', 'const', 'void',
                    'int', 'u8', 'u16', 'u32', 's8', 's16', 's32', 'BOOL', 'unsigned', 'signed', 'char'}


def show(rev, path):
    r = subprocess.run(['git', 'show', f'{rev}:{path}'], capture_output=True, text=True, errors='replace')
    return r.stdout if r.returncode == 0 else None


def main():
    before, after = sys.argv[1], sys.argv[2]
    restore = '--restore' in sys.argv
    ignore = re.compile(sys.argv[sys.argv.index('--ignore') + 1]) if '--ignore' in sys.argv else None
    renames = {}
    if '--renames' in sys.argv:
        for line in open(sys.argv[sys.argv.index('--renames') + 1]):
            old_p, new_p = line.rstrip('\n').split('\t')
            renames[old_p] = new_p
    files = subprocess.run(['git', 'diff', '--name-only', before, after, '--', 'src'], capture_output=True,
                           text=True, check=True).stdout.split()
    sdk = sdk_names()
    bad_total, files_bad = 0, 0
    for p in files:
        old, new = show(before, p), show(after, p)
        if old is None or new is None:
            continue
        new_set = {norm(new[a:b]) for a, b in statements(new)}
        old_st = statements(old)
        wrong = []
        for k, (a, b) in enumerate(old_st):
            st = old[a:b]
            if norm(st) in new_set:
                continue
            names = declared_names(st)
            if names and names & sdk:
                continue
            if ignore and ignore.search(st):
                continue
            nxt = next((norm(old[c:d]) for c, d in old_st[k + 1:] if norm(old[c:d]) in new_set), None)
            wrong.append((st, nxt))
        if not wrong:
            continue
        files_bad += 1
        bad_total += len(wrong)
        print(f'== {p}: {len(wrong)} wrongly deleted')
        for st, _ in wrong:
            print('   ' + norm(st)[:150])
        target = p if os.path.exists(p) else renames.get(p)
        if restore and not (target and os.path.exists(target)):
            print('   (file no longer exists; skipped)')
        elif restore:
            if target != p:
                print(f'   (restoring into {target})')
            cur = open(target).read()
            for st, nxt in wrong:
                if norm(st) in {norm(cur[a:b]) for a, b in statements(cur)}:
                    continue
                pos = None
                if nxt:
                    for a, b in statements(cur):
                        if norm(cur[a:b]) == nxt:
                            pos = a
                            break
                if pos is None:
                    print(f'   !! could not place: {norm(st)[:80]}')
                    continue
                cur = cur[:pos] + st.strip() + '\n' + cur[pos:]
            open(target, 'w').write(cur)
    print(f'{files_bad} files, {bad_total} statements deleted that declare nothing the SDK defines')


if __name__ == '__main__':
    main()
