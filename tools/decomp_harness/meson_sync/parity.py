#!/usr/bin/env python3
"""Object parity: does a rebuilt object carry the same code and data as the baseline?

Compares two MWCC ELF32 relocatable objects after normalization, so that header
and build-system churn that cannot change the linked ROM is ignored, while
anything that can change it is reported:

  * only allocated (SHF_ALLOC) sections: name, type, flags, alignment, size,
    and bytes (NOBITS: size only). .debug*, .comment, .mwcats* etc. are skipped
    (they hold absolute Wine paths and never reach the ROM);
  * defined global symbols by (name after sym_map, section, value, size, type);
  * local symbols by (section, value, size, type), names ignored: MWCC numbers
    anonymous locals (@9258) per preprocessed TU, so new headers renumber them;
  * relocations of allocated sections by (section, offset, type, addend,
    target), target = global name after sym_map, or (section, value) of a
    local, or the section of a section symbol;
  * STT_FILE, STT_SECTION and $a/$t/$d mapping symbols are dropped;
  * undefined globals that no relocation uses are reported as soft only.

Usage:
  parity.py OLD.o NEW.o [--sym-map map.tsv]
  parity.py --pairs pairs.tsv [--sym-map map.tsv] [--exclude-list f]   (old<TAB>new per line)
  parity.py --dirs OLD_DIR NEW_DIR                                       (same relative paths)
Exit 1 if any pair differs (soft findings alone do not fail).
"""
import os, struct, sys
from collections import Counter

SHT_SYMTAB, SHT_RELA, SHT_NOBITS, SHT_REL = 2, 4, 8, 9
SHF_ALLOC = 0x2
STT_SECTION, STT_FILE = 3, 4
SHN_UNDEF, SHN_ABS, SHN_COMMON = 0, 0xFFF1, 0xFFF2


class Obj:
    def __init__(self, path):
        d = open(path, 'rb').read()
        if d[:4] != b'\x7fELF' or d[4] != 1 or d[5] != 1:
            raise ValueError(f'{path}: not an ELF32 little-endian object')
        shoff, = struct.unpack_from('<I', d, 0x20)
        shnum, shstrndx = struct.unpack_from('<HH', d, 0x30)
        self.sh = [struct.unpack_from('<10I', d, shoff + i * 40) for i in range(shnum)]
        strsec = self.sh[shstrndx]
        self.names = [self._str(d, strsec, s[0]) for s in self.sh]
        self.d = d
        # MWCC objects often carry several sections of one name (30k .text in 16.5k
        # objects); key each as name#ordinal so a reloc or symbol can't hop between them.
        seen, self.keys = Counter(), []
        for n in self.names:
            self.keys.append(f'{n}#{seen[n]}' if seen[n] else n)
            seen[n] += 1

    @staticmethod
    def _str(d, sec, off):
        start = sec[4] + off
        return d[start:d.index(b'\0', start)].decode('latin-1')

    def secname(self, idx):
        if idx == SHN_UNDEF:
            return 'UND'
        if idx == SHN_ABS:
            return 'ABS'
        if idx == SHN_COMMON:
            return 'COM'
        return self.keys[idx] if idx < len(self.keys) else f'?{idx}'

    def alloc(self, idx):
        return 0 < idx < len(self.sh) and self.sh[idx][2] & SHF_ALLOC

    def symbols(self):
        for s in self.sh:
            if s[1] != SHT_SYMTAB:
                continue
            strsec = self.sh[s[6]]
            out = []
            for k in range(s[5] // 16):
                name, value, size, info, _other, shndx = struct.unpack_from('<IIIBBH', self.d, s[4] + k * 16)
                out.append((self._str(self.d, strsec, name), value, size, info >> 4, info & 0xF, shndx))
            return out
        return []


def is_mapping(name):
    return name in ('$a', '$t', '$d') or name[:3] in ('$a.', '$t.', '$d.')


def normalize(path, sym_map):
    o = Obj(path)
    syms = o.symbols()
    sections, globals_, locals_, undef = [], set(), [], set()
    for idx, s in enumerate(o.sh):
        if s[2] & SHF_ALLOC:
            data = None if s[1] == SHT_NOBITS else o.d[s[4]:s[4] + s[5]]
            sections.append((o.keys[idx], s[1], s[2], s[8], s[5], data))
    for name, value, size, bind, typ, shndx in syms:
        if typ in (STT_SECTION, STT_FILE) or is_mapping(name) or not name and typ == 0 and shndx == 0:
            continue
        if bind == 0:                       # STB_LOCAL
            if o.alloc(shndx):
                locals_.append((o.secname(shndx), value, size, typ))
        elif shndx == SHN_UNDEF:
            undef.add(sym_map.get(name, name))
        else:
            if shndx in (SHN_ABS, SHN_COMMON) or o.alloc(shndx):
                globals_.add((sym_map.get(name, name), o.secname(shndx), value, size, typ, bind))

    def target(k):
        name, value, _size, bind, typ, shndx = syms[k]
        if typ == STT_SECTION:
            return ('S', o.secname(shndx))
        if bind == 0:
            return ('L', o.secname(shndx), value)
        return ('G', sym_map.get(name, name))

    relocs, used = [], set()
    for s in o.sh:
        if s[1] not in (SHT_REL, SHT_RELA) or not o.alloc(s[7]):
            continue
        ent = 12 if s[1] == SHT_RELA else 8
        for k in range(s[5] // ent):
            off, info = struct.unpack_from('<II', o.d, s[4] + k * ent)
            add = struct.unpack_from('<i', o.d, s[4] + k * ent + 8)[0] if ent == 12 else None
            t = target(info >> 8)
            if t[0] == 'G':
                used.add(t[1])
            relocs.append((o.secname(s[7]), off, info & 0xFF, add, t))
    return {
        'sections': sections,  # file order; keys carry the ordinal
        'globals': globals_,
        'locals': sorted(locals_),
        'relocs': sorted(relocs, key=repr),
        'undef_unused': undef - used,
    }


def compare(old, new, sym_map):
    """Return (hard_diffs, soft_diffs) as lists of strings."""
    a, b = normalize(old, sym_map), normalize(new, sym_map)
    hard, soft = [], []
    names_a = [x[0] for x in a['sections']]
    names_b = [x[0] for x in b['sections']]
    if names_a != names_b:
        hard.append(f'allocated sections differ: {names_a} vs {names_b}')
    else:
        for x, y in zip(a['sections'], b['sections']):
            if x[1:5] != y[1:5]:
                hard.append(f'{x[0]}: header (type, flags, align, size) {x[1:5]} vs {y[1:5]}')
            elif x[5] != y[5]:
                first = next(i for i in range(len(x[5])) if x[5][i] != y[5][i])
                hard.append(f'{x[0]}: bytes differ from offset {first:#x}')
    for label in ('globals', 'locals', 'relocs'):
        if a[label] != b[label]:
            ga, gb = Counter(a[label]), Counter(b[label])
            only_a, only_b = ga - gb, gb - ga
            hard.append(f'{label}: -{sum(only_a.values())} +{sum(only_b.values())} '
                        f'e.g. -{sorted(only_a, key=repr)[:3]} +{sorted(only_b, key=repr)[:3]}')
    if a['undef_unused'] != b['undef_unused']:
        soft.append(f'unused undefined globals: -{sorted(a["undef_unused"] - b["undef_unused"])[:5]} '
                    f'+{sorted(b["undef_unused"] - a["undef_unused"])[:5]}')
    return hard, soft


def load_map(path):
    m = {}
    if path:
        for line in open(path):
            if line.strip() and not line.startswith('#'):
                k, v = line.split()[:2]
                m[k] = v
    return m


def main(argv):
    sym_map = load_map(argv[argv.index('--sym-map') + 1]) if '--sym-map' in argv else {}
    exclude = set()
    if '--exclude-list' in argv:
        exclude = {l.strip() for l in open(argv[argv.index('--exclude-list') + 1]) if l.strip()}
    if '--pairs' in argv:
        pairs = [l.rstrip('\n').split('\t')[:2] for l in open(argv[argv.index('--pairs') + 1]) if l.strip()]
    elif '--dirs' in argv:
        i = argv.index('--dirs')
        da, db = argv[i + 1], argv[i + 2]
        pairs = []
        for root, _, files in os.walk(da):
            for f in files:
                if f.endswith('.o'):
                    rel = os.path.relpath(os.path.join(root, f), da)
                    if os.path.exists(os.path.join(db, rel)):
                        pairs.append((os.path.join(da, rel), os.path.join(db, rel)))
    else:
        pairs = [(argv[1], argv[2])]
    n_raw = n_norm = n_diff = n_missing = n_soft = 0
    for old, new in sorted(pairs):
        if old in exclude:
            continue
        if not os.path.exists(new):
            n_missing += 1
            print(f'MISSING {new}  (twin of {old})')
            continue
        if open(old, 'rb').read() == open(new, 'rb').read():
            n_raw += 1
            continue
        hard, soft = compare(old, new, sym_map)
        if hard:
            n_diff += 1
            print(f'DIFF {old} -> {new}')
            for h in hard:
                print(f'    {h}')
        else:
            n_norm += 1
            if '-v' in argv:
                print(f'norm {old} -> {new}')
        if soft:
            n_soft += 1
            print(f'soft {old}: ' + '; '.join(soft))
    print(f'{len(pairs)} pairs: {n_raw} byte-identical, {n_norm} equal after normalization, '
          f'{n_diff} DIFF, {n_missing} missing, {n_soft} with soft findings')
    return 1 if n_diff or n_missing else 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
