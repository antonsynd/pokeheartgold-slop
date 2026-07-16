#!/usr/bin/env python3
"""split_overlay.py — split a monolithic overlay .s into address-ordered chunk
.s files with byte-identical ROM output.

The NitroSDK linker groups sections across objects (all .text of an overlay's
objects, then all .rodata, then .data, then .bss). So splitting one object into
N address-ordered objects reproduces the original section streams byte-for-byte
provided:

  1. every chunk's .text is a contiguous, address-ordered run of functions,
  2. every chunk's .rodata/.data/.bss is a contiguous, address-ordered run of
     tail symbols,
  3. each chunk boundary lands on a section-aligned address (default 4) so the
     linker inserts no end-of-section padding that the monolith did not have,
  4. chunks appear in main.lsf in address order (load-bearing for mwldarm).

Cross-chunk references (bl / .word / literal-pool loads) are resolved by
promoting the referenced symbol to `.public` in both the defining and the
referencing chunk's per-chunk .inc — exactly as the upstream "Split Overlay 80"
precedent did.

The .s carries authoritative `; 0xADDR` comments and address-encoded symbol
names (ov83_0223DD60 == 0x0223DD60); build/<ver>/main.elf.xMAP is used only as
an optional cross-check.

Pipeline: parse -> reference graph -> cut points -> emit chunks + .inc ->
rewrite main.lsf -> manifest.

Usage:
  split_overlay.py asm/overlay_83.s [--dry-run] [--align N] [--min-funcs N]
                                    [--lsf main.lsf] [--manifest PATH]
                                    [--xmap build/heartgold.us/main.elf.xMAP]
"""
import argparse
import json
import os
import re
import sys

# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------

FUNC_START_RE = re.compile(r'^\s*(thumb|arm)_func_start\s+(\S+)')
FUNC_END_RE = re.compile(r'^\s*(thumb|arm)_func_end\b')
SECTION_RE = re.compile(r'^\s*\.(text|rodata|data|bss|section)\b(.*)')
LABEL_RE = re.compile(r'^([A-Za-z_$][A-Za-z0-9_$]*)\s*:')
ADDR_COMMENT_RE = re.compile(r';\s*0x([0-9A-Fa-f]+)')
# name suffix that encodes an address, e.g. ov83_0223DD60 / _02247D0C
NAME_ADDR_RE = re.compile(r'_([0-9A-Fa-f]{6,8})$')

# reference operands (comment already stripped)
BL_RE = re.compile(r'\b(?:bl|blx)\s+([A-Za-z_$][A-Za-z0-9_$]*)')
WORD_RE = re.compile(r'\.word\s+([A-Za-z_$][A-Za-z0-9_$]*)')
EQ_RE = re.compile(r'=\s*([A-Za-z_$][A-Za-z0-9_$]*)')
TOKEN_RE = re.compile(r'[A-Za-z_$][A-Za-z0-9_$]*')


def strip_comment(line):
    # asm comments are ';' to EOL; '@' is not used as comment here (it appears
    # in names). Keep it simple and robust for this dialect.
    i = line.find(';')
    return line[:i] if i >= 0 else line


class Func:
    __slots__ = ('name', 'addr', 'is_arm', 'start', 'end', 'labels')

    def __init__(self, name, addr, is_arm, start):
        self.name = name
        self.addr = addr
        self.is_arm = is_arm
        self.start = start      # first source-line index (the func_start line)
        self.end = None         # last source-line index (the func_end line)
        self.labels = set()     # local labels defined inside (incl. literal pool)


class Sym:
    """A tail-section (rodata/data/bss) symbol."""
    __slots__ = ('name', 'addr', 'section', 'start', 'end')

    def __init__(self, name, addr, section, start):
        self.name = name
        self.addr = addr
        self.section = section
        self.start = start      # first source-line index (the label line)
        self.end = None         # exclusive last source-line index


def addr_from_name(name):
    m = NAME_ADDR_RE.search(name)
    return int(m.group(1), 16) if m else None


def parse(path):
    with open(path) as f:
        lines = f.readlines()

    funcs = []
    syms = []                   # tail symbols in source order (== address order)
    section = 'text'            # overlays start in .text
    cur_func = None
    header_end = 0              # first line after the .include header block

    # find header end: the leading include/preprocessor/blank block before the
    # first .text. Monoliths may open with C-preprocessor lines (e.g.
    # `#include "constants/pokemon.h"` in overlay_14) that provide identifiers
    # used in the body, or `.extern` declarations for symbols defined in the
    # overlay's already-decompiled C objects (overlay_18) -- both are part of
    # the preamble and must be carried into every chunk.
    for i, ln in enumerate(lines):
        s = ln.strip()
        if (s.startswith('.include') or s.startswith('#include')
                or s.startswith('#pragma') or s.startswith('.extern')
                or s == '' or s.startswith('.text')):
            header_end = i + 1
            if s.startswith('.text'):
                break
        else:
            break

    for i, raw in enumerate(lines):
        sm = SECTION_RE.match(raw)
        if sm:
            sec = sm.group(1)
            if sec == 'section':
                # .section .name -> take the name token
                rest = sm.group(2).strip().lstrip('.')
                sec = rest.split()[0].split(',')[0] if rest else 'text'
            section = sec
            # close an open tail symbol at a section change
            if syms and syms[-1].end is None:
                syms[-1].end = i
            continue

        fs = FUNC_START_RE.match(raw)
        if fs:
            name = fs.group(2)
            # address from the following label line's comment or the name
            addr = None
            # look at this line region for `; 0x...`
            # (label line usually next: `name: ; 0xADDR`)
            for j in (i, i + 1):
                if j < len(lines):
                    am = ADDR_COMMENT_RE.search(lines[j])
                    if am:
                        addr = int(am.group(1), 16)
                        break
            if addr is None:
                addr = addr_from_name(name)
            cur_func = Func(name, addr, fs.group(1) == 'arm', i)
            funcs.append(cur_func)
            continue

        fe = FUNC_END_RE.match(raw)
        if fe:
            if cur_func is not None:
                cur_func.end = i
                cur_func = None
            continue

        if section == 'text':
            if cur_func is not None:
                lm = LABEL_RE.match(raw)
                if lm:
                    cur_func.labels.add(lm.group(1))
        else:
            # tail section: collect top-level labels as tail symbols
            lm = LABEL_RE.match(raw)
            if lm and not raw[0].isspace():
                name = lm.group(1)
                if syms and syms[-1].end is None:
                    syms[-1].end = i
                am = ADDR_COMMENT_RE.search(raw)
                addr = int(am.group(1), 16) if am else addr_from_name(name)
                syms.append(Sym(name, addr, section, i))

    if syms and syms[-1].end is None:
        syms[-1].end = len(lines)

    return lines, funcs, syms, header_end


# ---------------------------------------------------------------------------
# Reference graph
# ---------------------------------------------------------------------------

class DSU:
    def __init__(self, n):
        self.p = list(range(n))

    def find(self, x):
        while self.p[x] != x:
            self.p[x] = self.p[self.p[x]]
            x = self.p[x]
        return x

    def union(self, a, b):
        ra, rb = self.find(a), self.find(b)
        if ra != rb:
            self.p[ra] = rb


def build_graph(lines, funcs, syms):
    sym_index = {s.name: k for k, s in enumerate(syms)}
    func_names = {f.name for f in funcs}

    # rodata->rodata coupling (jump tables / arrays of pointers into tail data)
    dsu = DSU(len(syms))
    # per-function directly referenced tail symbols
    func_direct = [set() for _ in funcs]
    # tail symbols that point at text (function-pointer tables) -> those funcs
    # need .public wherever the table lives; captured later via generic scan.

    def scan_refs(text):
        out = set()
        for m in WORD_RE.finditer(text):
            out.add(m.group(1))
        for m in EQ_RE.finditer(text):
            out.add(m.group(1))
        for m in BL_RE.finditer(text):
            out.add(m.group(1))
        return out

    for fi, f in enumerate(funcs):
        body = ''.join(strip_comment(lines[k]) for k in range(f.start, (f.end or f.start) + 1))
        for name in scan_refs(body):
            if name in sym_index:
                func_direct[fi].add(sym_index[name])

    for si, s in enumerate(syms):
        body = ''.join(strip_comment(lines[k]) for k in range(s.start, s.end))
        for name in scan_refs(body):
            if name in sym_index:
                dsu.union(si, sym_index[name])

    # transitive tail footprint per function via the rodata->rodata components
    comp_members = {}
    for si in range(len(syms)):
        comp_members.setdefault(dsu.find(si), []).append(si)

    func_footprint = []
    for fi in range(len(funcs)):
        fp = set()
        for si in func_direct[fi]:
            fp.update(comp_members[dsu.find(si)])
        func_footprint.append(fp)

    return func_footprint


# ---------------------------------------------------------------------------
# Cut points
# ---------------------------------------------------------------------------

def compute_chunks(funcs, syms, footprint, align, min_funcs, target_lines):
    """Greedy left-to-right partition. A cut after function k is *valid* when:
       - all tail symbols referenced by funcs <=k have index < all referenced
         by funcs >k (prefix-max < suffix-min: reference-clean), and
       - a section-aligned tail boundary exists between them, and
       - the next function starts on a section-aligned address.
    Among valid cuts we only take one once the accumulated chunk has reached
    ``target_lines`` source lines (and >= ``min_funcs`` functions), so tiny
    reference-free functions coalesce into workable chunks instead of one file
    per function. ``target_lines=0`` cuts at every valid boundary.
    Returns list of (func_lo, func_hi_exclusive, sym_lo, sym_hi_exclusive)."""
    n = len(funcs)
    m = len(syms)

    suffix_min = [m] * (n + 1)  # suffix_min[k] = min tail idx ref'd by funcs[k:]
    for k in range(n - 1, -1, -1):
        cur = min(footprint[k]) if footprint[k] else m
        suffix_min[k] = min(cur, suffix_min[k + 1])

    def func_lines(fi):
        return (funcs[fi].end or funcs[fi].start) - funcs[fi].start + 1

    chunks = []
    func_lo = 0
    sym_lo = 0
    prefix_max = -1             # max tail idx referenced by current chunk's funcs
    funcs_in_chunk = 0
    lines_in_chunk = 0

    for k in range(n):
        if footprint[k]:
            prefix_max = max(prefix_max, max(footprint[k]))
        funcs_in_chunk += 1
        lines_in_chunk += func_lines(k)

        if k == n - 1:
            break
        nxt = funcs[k + 1]
        if nxt.addr % align != 0:
            continue                    # text boundary not section aligned
        if funcs_in_chunk < min_funcs:
            continue
        if lines_in_chunk < target_lines:
            continue                    # keep growing toward the budget
        smin = suffix_min[k + 1]        # first tail idx the right side needs
        if prefix_max >= smin:
            continue                    # reference-clean check failed
        s = _aligned_tail_boundary(syms, prefix_max + 1, smin, align)
        if s is None:
            continue
        chunks.append((func_lo, k + 1, sym_lo, s))
        func_lo = k + 1
        sym_lo = s
        prefix_max = -1
        funcs_in_chunk = 0
        lines_in_chunk = 0

    chunks.append((func_lo, n, sym_lo, m))
    return chunks


def _aligned_tail_boundary(syms, lo, hi, align):
    """Largest index s in [lo, hi] with syms[s].addr aligned (s==len ok).
    Prefer the largest so free/unreferenced tail data stays with the left
    chunk (nearest its neighbours)."""
    m = len(syms)
    hi = min(hi, m)
    for s in range(hi, lo - 1, -1):
        if s == m:
            return s            # end-of-section: always a valid boundary
        if syms[s].addr % align == 0:
            return s
    # lo==0 with an aligned first symbol handled above; nothing aligned:
    if lo == 0 and (m == 0 or syms[0].addr % align == 0):
        return 0
    return None


# ---------------------------------------------------------------------------
# Emission
# ---------------------------------------------------------------------------

def load_public(inc_path):
    pub = []
    if not os.path.exists(inc_path):
        return pub
    with open(inc_path) as f:
        for ln in f:
            s = ln.strip()
            if s.startswith('.public'):
                pub.append(s.split()[1])
    return pub


def emit(base, lines, funcs, syms, chunks, header_lines, orig_public, out_asm_dir,
         out_inc_dir, dry_run):
    """Write chunk .s + .inc files. Returns manifest chunk records."""
    # symbol -> defining chunk index
    def_chunk = {}
    for ci, (flo, fhi, slo, shi) in enumerate(chunks):
        for fi in range(flo, fhi):
            def_chunk[funcs[fi].name] = ci
            for lbl in funcs[fi].labels:
                def_chunk[lbl] = ci
        for si in range(slo, shi):
            def_chunk[syms[si].name] = ci

    orig_public_set = set(orig_public)
    global_set = set(def_chunk) | orig_public_set

    # gather per-chunk referenced globals (comment-stripped whole-word tokens)
    chunk_refs = []
    chunk_body_lines = []
    for (flo, fhi, slo, shi) in chunks:
        refs = set()
        body_idx = []
        for fi in range(flo, fhi):
            for k in range(funcs[fi].start, (funcs[fi].end or funcs[fi].start) + 1):
                body_idx.append(('text', k))
        for si in range(slo, shi):
            for k in range(syms[si].start, syms[si].end):
                body_idx.append(('tail', k, syms[si].section))
        for entry in body_idx:
            k = entry[1]
            for tok in TOKEN_RE.findall(strip_comment(lines[k])):
                if tok in global_set:
                    refs.add(tok)
        chunk_refs.append(refs)
        chunk_body_lines.append(body_idx)

    # exports: a defined symbol referenced from another chunk, or an original
    # public symbol that this overlay defines (imported by other overlays).
    used_from_other = {}  # sym -> set of chunk idx referencing it
    for ci, refs in enumerate(chunk_refs):
        for r in refs:
            dc = def_chunk.get(r)
            if dc is not None and dc != ci:
                used_from_other.setdefault(r, set()).add(ci)

    records = []
    for ci, (flo, fhi, slo, shi) in enumerate(chunks):
        start_addr = funcs[flo].addr if flo < fhi else (syms[slo].addr if slo < shi else 0)
        chunk_name = '%s_%08X' % (base, start_addr)

        defined = set()
        for fi in range(flo, fhi):
            defined.add(funcs[fi].name)
            defined |= funcs[fi].labels
        for si in range(slo, shi):
            defined.add(syms[si].name)

        # imports: referenced globals not defined locally
        imports = sorted(r for r in chunk_refs[ci] if r not in defined)
        # exports: locally-defined symbols other chunks reference, or that other
        # overlays import (present in the monolith's public list)
        exports = sorted(
            d for d in defined
            if (d in used_from_other) or (d in orig_public_set)
        )
        publics = imports + [e for e in exports if e not in imports]

        # ---- build .inc text ----
        inc_lines = ['#include <nitro/fs/overlay.h>\n', '#pragma once\n']
        for p in publics:
            inc_lines.append('.public %s\n' % p)

        # ---- build .s text ----
        # carry the monolith's real preamble verbatim (it may contain
        # C-preprocessor #includes whose identifiers the body uses); swap the
        # monolith's own .inc for this chunk's.
        own_inc = re.compile(r'\.include\s+"%s\.inc"' % re.escape(base))
        s_lines = []
        for ln in lines[:header_lines]:
            s = ln.strip()
            if s.startswith('.text'):
                continue
            if own_inc.search(s):
                s_lines.append('\t.include "%s.inc"\n' % chunk_name)
            else:
                s_lines.append(ln)
        if not s_lines or s_lines[-1].strip() != '':
            s_lines.append('\n')
        # text
        if fhi > flo:
            s_lines.append('    .text\n\n')
            for fi in range(flo, fhi):
                end = (funcs[fi].end or funcs[fi].start)
                s_lines.extend(lines[funcs[fi].start:end + 1])
                s_lines.append('\n')
        # tail sections, grouped by section in address order
        cur_sec = None
        for si in range(slo, shi):
            if syms[si].section != cur_sec:
                cur_sec = syms[si].section
                s_lines.append('\n    .%s\n\n' % cur_sec)
            s_lines.extend(lines[syms[si].start:syms[si].end])

        asm_path = os.path.join(out_asm_dir, chunk_name + '.s')
        inc_path = os.path.join(out_inc_dir, chunk_name + '.inc')
        if not dry_run:
            with open(asm_path, 'w') as f:
                f.writelines(s_lines)
            with open(inc_path, 'w') as f:
                f.writelines(inc_lines)

        records.append({
            'chunk': chunk_name,
            'asm': asm_path,
            'inc': inc_path,
            'start_addr': '0x%08X' % start_addr,
            'func_range': [funcs[flo].name, funcs[fhi - 1].name] if fhi > flo else None,
            'addr_range': ['0x%08X' % funcs[flo].addr,
                           '0x%08X' % funcs[fhi - 1].addr] if fhi > flo else None,
            'num_funcs': fhi - flo,
            'tail_range': [syms[slo].name, syms[shi - 1].name] if shi > slo else None,
            'num_tail_syms': shi - slo,
            'num_publics': len(publics),
            'num_imports': len(imports),
            'num_exports': len(exports),
        })
    return records


# ---------------------------------------------------------------------------
# main.lsf rewrite
# ---------------------------------------------------------------------------

def rewrite_lsf(lsf_path, base, records, dry_run):
    with open(lsf_path) as f:
        text = f.read()
    old = 'Object asm/%s.o' % base
    lines = text.splitlines(keepends=True)
    out = []
    replaced = False
    for ln in lines:
        if ln.strip() == old:
            indent = ln[:len(ln) - len(ln.lstrip())]
            for r in records:
                out.append('%sObject asm/%s.o\n' % (indent, r['chunk']))
            replaced = True
        else:
            out.append(ln)
    if not replaced:
        raise SystemExit('ERROR: `%s` not found in %s' % (old, lsf_path))
    if not dry_run:
        with open(lsf_path, 'w') as f:
            f.writelines(out)
    return replaced


# ---------------------------------------------------------------------------
# xMAP cross-check (optional)
# ---------------------------------------------------------------------------

def xmap_func_count(xmap_path, base):
    """Best-effort: count symbols attributed to the overlay object in the xMAP.
    Purely a sanity cross-check; the .s is authoritative."""
    if not xmap_path or not os.path.exists(xmap_path):
        return None
    try:
        obj = base + '.o'
        n = 0
        with open(xmap_path, errors='ignore') as f:
            for ln in f:
                if obj in ln:
                    n += 1
        return n
    except Exception:
        return None


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('asm')
    ap.add_argument('--dry-run', action='store_true')
    ap.add_argument('--align', type=int, default=4)
    ap.add_argument('--min-funcs', type=int, default=1,
                    help='minimum functions per chunk (coalesces tiny chunks)')
    ap.add_argument('--target-lines', type=int, default=1500,
                    help='soft chunk size budget in source lines; cuts are only '
                         'taken at clean+aligned boundaries once reached '
                         '(0 = cut at every valid boundary)')
    ap.add_argument('--lsf', default='main.lsf')
    ap.add_argument('--manifest', default=None)
    ap.add_argument('--xmap', default='build/heartgold.us/main.elf.xMAP')
    ap.add_argument('--json-out', default=None, help='write chunk plan JSON here')
    args = ap.parse_args()

    asm_path = args.asm
    base = os.path.splitext(os.path.basename(asm_path))[0]
    asm_dir = os.path.dirname(asm_path) or '.'
    inc_dir = os.path.join(asm_dir, 'include')
    inc_path = os.path.join(inc_dir, base + '.inc')

    lines, funcs, syms, header_end = parse(asm_path)
    orig_public = load_public(inc_path)
    footprint = build_graph(lines, funcs, syms)

    # raw (pre-alignment) clean-cut count for reporting
    n = len(funcs)
    suffix_min = [len(syms)] * (n + 1)
    for k in range(n - 1, -1, -1):
        cur = min(footprint[k]) if footprint[k] else len(syms)
        suffix_min[k] = min(cur, suffix_min[k + 1])
    pmax = -1
    raw_clean = 0
    for k in range(n - 1):
        if footprint[k]:
            pmax = max(pmax, max(footprint[k]))
        if pmax < suffix_min[k + 1]:
            raw_clean += 1

    chunks = compute_chunks(funcs, syms, footprint, args.align, args.min_funcs,
                            args.target_lines)

    records = emit(base, lines, funcs, syms, chunks, header_end, orig_public,
                   asm_dir, inc_dir, args.dry_run)

    xcount = xmap_func_count(args.xmap, base)

    print('file:            %s' % asm_path)
    print('functions:       %d' % len(funcs))
    print('tail symbols:    %d' % len(syms))
    print('raw clean cuts:  %d  (reference-clean, pre-alignment)' % raw_clean)
    print('usable cuts:     %d  (align=%d)' % (len(chunks) - 1, args.align))
    print('chunks emitted:  %d' % len(chunks))
    if xcount is not None:
        print('xMAP obj lines:  %d  (cross-check only)' % xcount)
    print()
    for r in records:
        fr = ('%s..%s' % (r['func_range'][0], r['func_range'][1])) if r['func_range'] else '(no text)'
        tr = ('%s..%s' % (r['tail_range'][0], r['tail_range'][1])) if r['tail_range'] else '-'
        print('  %-24s  %2d fn  %2d tail  %2d pub  [%s]  tail=%s'
              % (r['chunk'], r['num_funcs'], r['num_tail_syms'],
                 r['num_publics'], fr, tr))

    if not args.dry_run:
        rewrite_lsf(args.lsf, base, records, args.dry_run)
        manifest_path = args.manifest or os.path.join(
            'tools/decomp_harness/split_manifests', base + '.json')
        os.makedirs(os.path.dirname(manifest_path), exist_ok=True)
        with open(manifest_path, 'w') as f:
            json.dump({
                'overlay': base,
                'source': asm_path,
                'align': args.align,
                'num_functions': len(funcs),
                'num_tail_symbols': len(syms),
                'raw_clean_cuts': raw_clean,
                'num_chunks': len(chunks),
                'chunks': records,
            }, f, indent=2)
        print('\nmanifest: %s' % manifest_path)
        print('main.lsf rewritten: %s' % args.lsf)

    if args.json_out:
        with open(args.json_out, 'w') as f:
            json.dump(records, f, indent=2)


if __name__ == '__main__':
    main()
