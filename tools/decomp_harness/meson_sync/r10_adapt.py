#!/usr/bin/env python3
"""R10 follow-up: make calls that R10's prototype deletions broke compile exactly as they were matched.

R10 deleted fork files' local prototypes that conflicted with the SDK's. Some call sites relied on
the local version: a `void *` parameter given a struct pointer, a 1-argument call to a 2-parameter
function, a use of a return value the SDK declares void. MWCC rejects those calls now. For each
such SDK function, this adds one macro after the file's includes that calls it through a cast to
the local declaration the file was matched with:

    #define F(...) ((RET (*)(PARAMS))F)(__VA_ARGS__)

so the arguments and the result convert as they did at match time. MWCC still emits a direct
`bl F` (checked with objdiff against upstream's assembled objects). Without an old declaration it
falls back to casting each argument to the SDK's own parameter type, which only legalises pointer
conversions.

Usage: r10_adapt.py BUILD_LOG BEFORE_REV [--renames TSV] [--dry-run]
       r10_adapt.py --all-deleted BEFORE_REV AFTER_REV [--renames TSV] [--dry-run]
  BUILD_LOG  ninja/MWCC output with the failures; BEFORE_REV  the tree before R10 (b0f4ef721).
  --all-deleted: for every file R10 changed (BEFORE_REV..AFTER_REV), adapt every SDK function whose
  local prototype R10 deleted and that the file still calls, failing or not. A narrower SDK
  parameter (u16 vs the matched u32) compiles silently but changes the caller's code.
"""
import os, re, subprocess, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from r10_audit import statements  # noqa: E402

ERR = re.compile(r'^(?:\.\.\\\\)*(?P<path>src\\\S+?\.c):(?P<line>\d+):\s*(?P<msg>.*)$')
TRIGGERS = ('illegal implicit conversion', 'does not match', "illegal use of type 'void'")
CALL = re.compile(r'\b([A-Za-z_]\w*)\s*\(')
KEYWORDS = {'if', 'while', 'for', 'switch', 'return', 'sizeof', 'do', 'else', 'case', 'goto', 'asm'}


def failing_lines(log):
    """{src path: {line numbers}} for MWCC conversion errors, joining its wrapped message lines."""
    out, cur, buf = {}, None, ''
    for raw in open(log, errors='replace'):
        raw = re.sub(r'^[^\t]*\t[^\t]*\t\S+ ', '', raw.rstrip('\n'))   # CI log prefix
        m = re.match(r'^(?:\.\.\\)*(src\\\S+?\.c):(\d+):\s*(.*)$', raw)
        if not m:
            continue
        path, line, msg = m.group(1).replace('\\', '/'), int(m.group(2)), m.group(3)
        key = (path, line)
        if key != cur:
            cur, buf = key, ''
        buf += ' ' + msg
        if any(t in buf for t in TRIGGERS):
            out.setdefault(path, set()).add(line)
    return out


_SDK_TEXT = None


def sdk_prototype(name):
    """(return type, [param decls]) of an SDK function, from the subproject headers."""
    global _SDK_TEXT
    if _SDK_TEXT is None:
        parts = []
        for dirpath, _, files in os.walk('subprojects'):
            if '/include' in dirpath or dirpath.endswith('include'):
                for f in files:
                    if f.endswith('.h'):
                        t = open(os.path.join(dirpath, f), errors='replace').read()
                        parts.append(re.sub(r'/\*.*?\*/|//[^\n]*', ' ', t, flags=re.S))
        _SDK_TEXT = '\n'.join(parts)
    m = re.search(rf'(?:^|[;}}\n])\s*((?:extern\s+|static\s+|inline\s+|SDK_INLINE\s+)*[A-Za-z_][\w\s\*]*?)\b{name}\s*\(([^;{{]*?)\)\s*[;{{]',
                  _SDK_TEXT, re.M)
    if not m:
        return None
    ret = re.sub(r'\b(extern|static|inline|SDK_INLINE)\b', '', m.group(1)).strip()
    return ret, split_params(m.group(2))


def split_params(s):
    s = ' '.join(s.split())
    if s in ('', 'void'):
        return []
    out, depth, cur = [], 0, ''
    for c in s:
        if c == ',' and depth == 0:
            out.append(cur.strip()); cur = ''
            continue
        depth += c in '(['
        depth -= c in ')]'
        cur += c
    out.append(cur.strip())
    return out


def param_type(p):
    """Type of a parameter declaration, without its name; arrays become pointers."""
    if '(' in p:                                   # function pointer: drop the name inside (*name)
        return re.sub(r'\(\s*\*\s*\w+\s*\)', '(*)', p)
    p = re.sub(r'\[[^\]]*\]', '', p).strip() + (' *' if '[' in p else '')
    toks = p.replace('*', ' * ').split()
    if len(toks) > 1 and re.match(r'^[A-Za-z_]\w*$', toks[-1]) and toks[-1] not in ('int', 'char', 'long', 'short', 'unsigned', 'signed', 'const', 'volatile'):
        toks = toks[:-1]
    return ' '.join(toks).replace(' *', '*').replace('*', ' *').strip()


def old_declaration(text, name):
    """(return type, params text) of a file-scope prototype of name, or None."""
    for st, en in statements(text):
        s = text[st:en]
        if s.lstrip().startswith(('#', '//', '/*')) or '{' in s:
            continue
        m = re.match(rf'^\s*((?:extern\s+|static\s+)*[A-Za-z_][\w\s\*]*?)\b{name}\s*\((.*)\)\s*;\s*$', s, re.S)
        if m:
            return re.sub(r'\b(extern|static)\b', '', m.group(1)).strip(), ' '.join(m.group(2).split())
    return None


def show(rev, path):
    r = subprocess.run(['git', 'show', f'{rev}:{path}'], capture_output=True, text=True, errors='replace')
    return r.stdout if r.returncode == 0 else None


def deleted_sdk_prototypes(old_text, new_text):
    """Names of SDK functions with a file-scope prototype in old_text that new_text lacks."""
    new_set = {' '.join(new_text[a:b].split()) for a, b in statements(new_text)}
    names = []
    for a, b in statements(old_text):
        st = old_text[a:b]
        if ('{' in st or st.lstrip().startswith(('#', '//', '/*', 'typedef'))
                or ' '.join(st.split()) in new_set):
            continue
        # a prototype `RET name(PARAMS);`, not a declarator like `(*name)(...)`
        m = re.match(r'^\s*(?:extern\s+|static\s+)*[A-Za-z_][\w\s\*]*?\b(\w+)\s*\((?!\s*\*).*\)\s*;\s*$', st, re.S)
        if m and m.group(1) not in KEYWORDS and sdk_prototype(m.group(1)):
            names.append(m.group(1))
    return names


def adapt(path, names, old_text, dry):
    text = open(path, errors='replace').read()
    macros = []
    for name in names:
        if re.search(rf'^#define {name}\(', text, re.M):
            continue
        old = old_declaration(old_text, name)
        if old:
            ret, params = old
            macros.append(f'#define {name}(...) (({ret} (*)({params})){name})(__VA_ARGS__)')
        else:
            _, sdk_params = sdk_prototype(name)
            args = [f'a{i}' for i in range(len(sdk_params))]
            casts = ', '.join(f'({param_type(p)})({a})' for p, a in zip(sdk_params, args))
            macros.append(f'#define {name}({", ".join(args)}) {name}({casts})')
    if not macros:
        return 0
    print(f'{path}:')
    for m in macros:
        print(f'    {m}')
    if not dry:
        incs = list(re.finditer(r'^#include .*$', text, re.M))
        at = incs[-1].end() if incs else 0
        block = ('\n\n// Called as matched, before the real SDK headers declared these (#22, R10).\n'
                 + '\n'.join(macros) + '\n')
        open(path, 'w').write(text[:at] + block + text[at:])
    return len(macros)


def main():
    dry = '--dry-run' in sys.argv
    back = {}
    if '--renames' in sys.argv:
        for line in open(sys.argv[sys.argv.index('--renames') + 1]):
            old_p, new_p = line.rstrip('\n').split('\t')
            back[new_p] = old_p
    fwd = {v: k for k, v in back.items()}
    total = 0
    if sys.argv[1] == '--all-deleted':
        before, after = sys.argv[2], sys.argv[3]
        changed = subprocess.run(['git', 'diff', '--name-only', before, after, '--', 'src'], capture_output=True,
                                 text=True, check=True).stdout.split()
        for old_path in changed:
            path = fwd.get(old_path, old_path)
            if not path.endswith('.c') or not os.path.exists(path):
                continue
            old_text, mid_text = show(before, old_path) or '', show(after, old_path) or ''
            text = open(path, errors='replace').read()
            names = [n for n in deleted_sdk_prototypes(old_text, mid_text) if re.search(rf'\b{n}\s*\(', text)]
            if names:
                total += adapt(path, names, old_text, dry)
        print(f'{total} adapters')
        return
    log, before = sys.argv[1], sys.argv[2]
    for path, lines in sorted(failing_lines(log).items()):
        text = open(path, errors='replace').read()
        src_lines = text.split('\n')
        names = []
        for ln in sorted(lines):
            for name in CALL.findall(src_lines[ln - 1]):
                if name not in KEYWORDS and name not in names and sdk_prototype(name):
                    names.append(name)
        n = adapt(path, names, show(before, back.get(path, path)) or '', dry)
        if not n:
            print(f'{path}: lines {sorted(lines)}: no SDK call found, fix by hand')
        total += n
    print(f'{total} adapters')


if __name__ == '__main__':
    main()
