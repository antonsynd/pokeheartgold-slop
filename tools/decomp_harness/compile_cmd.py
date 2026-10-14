#!/usr/bin/env python3
"""Compile ONE game translation unit standalone with the Meson build's own MWCC flags.

The flags are not hard-coded here: they are the command ninja runs for the file, read from
build/<game>.us/compile_commands.json (so they follow meson.build). Only the output path changes
and the dependency-file flags (-gccdep -MD) are dropped; the command still runs in the build
directory with the source spelled ../../src/..., exactly as ninja runs it.

A file that is not in compile_commands.json yet (a new src/*.c not listed in src/meson.build, or one
that is not linked in main.lsf) borrows the command of src/main.c: every game object of the `main`
target shares one flag set.

Usage:
    compile_cmd.py <src/x.c> -o OUT.o [--game heartgold|soulsilver]   compile; exit status is the compiler's
    compile_cmd.py <src/x.c> --print [--game G]                       print "cd <dir> && <command>" only

Needs a configured build dir (any `build_pokeheartgold build` run creates it). Never builds anything
else and never touches the Meson build's own objects.
"""
import argparse
import json
import os
import shlex
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from meson_names import MWCC12_RE, object_name  # noqa: E402

# Physical path: compile_commands.json records the resolved build directory, and the source is
# spelled relative to it, so a symlinked checkout path must not leak into that spelling.
ROOT = os.path.realpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..'))
BUILD_NAMES = {'heartgold': 'heartgold.us', 'soulsilver': 'soulsilver.us'}
TEMPLATE_SRC = 'src/main.c'
DROP_FLAGS = ('-gccdep', '-MD')


def build_dir(game):
    name = BUILD_NAMES.get(game.lower())
    if name is None:
        raise SystemExit(f"compile_cmd: unsupported game '{game}' (use heartgold or soulsilver)")
    return os.path.join(ROOT, 'build', name)


def load_commands(game):
    path = os.path.join(build_dir(game), 'compile_commands.json')
    if not os.path.exists(path):
        raise SystemExit(f'compile_cmd: {os.path.relpath(path, ROOT)} not found: configure {game} first '
                         f'(build_tools/bin/build_pokeheartgold build --game {game} --target main)')
    with open(path) as f:
        return json.load(f)


def find_entry(entries, src):
    """(entry, is_template) for src: its own entry in the main target, else the src/main.c one."""
    if MWCC12_RE.match(src):
        raise SystemExit(f'compile_cmd: {src} is built with MWCC 1.2 by the mwcc12 generator in meson.build, '
                         f'not with the main flags; build it with: ninja -C build/heartgold.us {object_name(src)}')
    want, tmpl = object_name(src), object_name(TEMPLATE_SRC)
    own = template = None
    for e in entries:
        if e['output'] == want:
            own = e
        elif e['output'] == tmpl:
            template = e
    if own is not None:
        return own, False
    if template is None:
        raise SystemExit(f'compile_cmd: neither {want} nor {tmpl} is in compile_commands.json '
                         '(the `main` target is not configured?)')
    return template, True


def command_for(src, game, out):
    """(cwd, argv, is_template) running MWCC on src (repo-relative) into out (absolute path)."""
    entry, is_template = find_entry(load_commands(game), src)
    cwd = os.path.realpath(entry['directory'])
    if not os.path.isdir(cwd):
        raise SystemExit(f'compile_cmd: build directory {cwd} (from compile_commands.json) is gone: '
                         'the tree moved since configure; remove the build dir and reconfigure')
    argv = shlex.split(entry['command'])
    if not os.path.exists(argv[0]):
        raise SystemExit(f'compile_cmd: compiler {argv[0]} (from compile_commands.json) is missing: '
                         'the tree moved or the toolchain was not downloaded; reconfigure')
    argv = [a for a in argv if a not in DROP_FLAGS]
    try:
        argv[argv.index('-o') + 1] = out
        i = argv.index('-c')
    except ValueError:
        raise SystemExit(f"compile_cmd: no -o/-c in the compile command of {entry['output']}")
    if is_template:
        argv[i + 1] = os.path.relpath(os.path.join(ROOT, src), cwd)
    return cwd, argv, is_template


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('src', help='src/<name>.c, relative to the repo root')
    ap.add_argument('-o', dest='out', help='output object (compiled to this path)')
    ap.add_argument('--game', default='heartgold')
    ap.add_argument('--print', dest='show', action='store_true', help='print the command instead of running it')
    args = ap.parse_args()

    if not os.path.isfile(os.path.join(ROOT, args.src)):
        raise SystemExit(f"compile_cmd: '{args.src}' does not exist")
    if not args.show and not args.out:
        ap.error('-o is required unless --print is given')
    out = os.path.abspath(args.out) if args.out else os.path.join(ROOT, 'a.o')
    cwd, argv, is_template = command_for(args.src, args.game, out)
    if is_template:
        print(f'compile_cmd: {args.src} has no compile_commands.json entry; using the flags of {TEMPLATE_SRC}',
              file=sys.stderr)
    if args.show:
        print(f'cd {shlex.quote(cwd)} && {shlex.join(argv)}')
        return 0
    os.makedirs(os.path.dirname(out), exist_ok=True)
    # ninja leaves $PWD alone and Wine only trusts it when it names the real cwd: pin it to the cwd.
    env = dict(os.environ, PWD=cwd)
    return subprocess.run(argv, cwd=cwd, env=env).returncode


if __name__ == '__main__':
    sys.exit(main())
