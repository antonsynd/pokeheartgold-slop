#!/usr/bin/env python3
"""Fast syntax pre-check of game C files with clang, before the slow MWCC build (plan Phase 4.1).

Uses each file's include dirs and defines from build/<game>/compile_commands.json, plus
metroskrew's MSL include dirs (implicit under MWCC's -stdinc, so absent from the database).
Reports only error classes that MWCC also rejects: redefinitions, conflicting types, missing
headers, undeclared identifiers. Clang's other complaints about MWCC dialect are dropped.

Usage: clang_precheck.py [BUILD_DIR] [--all]   (default build/heartgold.us; --all prints every error)
Generated headers (naix, msg banks, NitroSDK's gen/nitro/fx/fx_const.h) must already be built;
a missing one shows up as a fatal error. Writes clang_precheck.txt.
"""
import collections, concurrent.futures, json, os, re, shlex, subprocess, sys

MSL = 'tools/metroskrew/lib/metroskrew/sdk/ds/2.0/sp2/msl'
MSL_INC = [f'{MSL}/MSL_C/MSL_Common/Include', f'{MSL}/MSL_C/MSL_ARM/Include',
           f'{MSL}/MSL_Extras/MSL_Common/Include', f'{MSL}/MSL_Extras/MSL_ARM/Include',
           f'{MSL}/MSL_C/MSL_Common_Embedded/Math/Include']
KEEP = re.compile(r'fatal error|redefinition|conflicting types|file not found|undeclared identifier|'
                  r'unknown type name|implicit declaration|incompatible pointer types')


def game_c_jobs(build, root):
    """{source path relative to root: clang argv} for every game C file in the build."""
    # MWCC has wchar_t built in (MSL's wchar_t.h assumes it); clang's C mode doesn't.
    prelude = os.path.join(build, 'clang_precheck_prelude.h')
    with open(prelude, 'w', newline='\n') as f:
        f.write('typedef unsigned short wchar_t;\n')
    base = ['clang', '-include', prelude, '-fsyntax-only', '-target', 'armv5te-none-eabi', '-std=gnu99',
            '-fsigned-char', '-ffreestanding', '-nostdinc', '-fno-builtin', '-Wno-everything',
            '-Werror=implicit-function-declaration', '-Werror=incompatible-pointer-types',
            '-ferror-limit=0', '-D__MWERKS__=0x4000']
    jobs = {}
    for e in json.load(open(os.path.join(build, 'compile_commands.json'))):
        if not re.search(r'main\.nef\.p/src_.*\.c\.o$', e['output']):
            continue
        argv = shlex.split(e['command'])
        inc = [os.path.normpath(os.path.join(e['directory'], a[2:] or argv[i + 1]))
               for i, a in enumerate(argv) if a.startswith('-I')]
        defs = [a for a in argv if a.startswith('-D')]
        src = os.path.normpath(os.path.join(e['directory'], e['file']))
        jobs[os.path.relpath(src, root)] = base + defs + [f'-I{d}' for d in inc + [os.path.join(root, m) for m in MSL_INC]] + [src]
    return jobs


def run_clang(cmd):
    return subprocess.run(cmd, capture_output=True, text=True).stderr.splitlines()


def main():
    build = next((a for a in sys.argv[1:] if not a.startswith('--')), 'build/heartgold.us')
    show_all = '--all' in sys.argv
    root = os.getcwd()
    jobs = game_c_jobs(build, root)
    per_file, kinds = {}, collections.Counter()
    with concurrent.futures.ThreadPoolExecutor(os.cpu_count()) as ex:
        for src, out in zip(jobs, ex.map(run_clang, jobs.values())):
            # A fatal error (a missing header) aborts the file, hiding every later error: always report it.
            kept = [l for l in out if ': fatal error: ' in l or (': error: ' in l and (show_all or KEEP.search(l)))]
            if kept:
                per_file[src] = kept
                for l in kept:
                    kinds[re.sub(r"'[^']*'", "'X'", re.split(r': (?:fatal )?error: ', l, 1)[1])[:90]] += 1
    print(f'{len(jobs)} files, {len(per_file)} with errors')
    for k, n in kinds.most_common(25):
        print(f'{n:6d}  {k}')
    with open('clang_precheck.txt', 'w', newline='\n') as f:
        for p, errs in sorted(per_file.items()):
            f.write(f'== {p}\n' + '\n'.join(errs) + '\n')
    print('details: clang_precheck.txt')


if __name__ == '__main__':
    main()
