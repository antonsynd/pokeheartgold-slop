#!/usr/bin/env python3
"""Generalized .rodata/.data consolidation pass for the matching decomp.

Supersedes the overlay_02_02248728-hardcoded trio (gen_rodata.py,
gen_rodata_blob.py, verify_rodata.py). Works for ANY `asm/<name>.s` that has a
`.rodata` and/or `.data` section, deriving everything from the file itself.

Two proven recipes, auto-selected by linkage:

  one-struct  (pattern rodata-consolidate-one-struct-flip)
    For INTERNAL rodata (no `.public` symbols) referenced from same-TU code, whose
    retail layout is in ADDRESS order with interleaved object sizes. Separate C
    const objects can never reproduce it (MWCC -O4 size-sorts them), so emit ALL
    rodata as ONE `static const struct { <fields in address order> } sRodata`
    (+ a non-const `static struct sData` for `.data` symbols), restore each name
    with `#define ov02_XXXX (sRodata.fXXXX)`, and reach asm-referenced fields via
    `ldr =sRodata+0xOFFSET` (offset = retail_addr - rodata_base).

  ext-const   (pattern ext-const-split-tu-size-ascending-recipe)
    For EXTERNAL (`.public`) const arrays. MWCC emits file-scope external consts
    SIZE-ASCENDING; a retail layout that is not globally size-ascending must be
    SPLIT into multiple TUs at each point where the next symbol's size drops.
    Report the split plan and equal-size tie buckets; emit the byte-exact per
    symbol skeleton wrapped in `#pragma section ... begin/end`.

Base-address derivation (per symbol, first available wins):
  1. a `; 0xADDR` comment on the label line;
  2. the trailing hex of an address-encoded symbol name
     (ov02_022534B8 => 0x022534B8, _02253E20 => 0x02253E20);  >= 6 hex digits, so
     `gMovementCmdSteps_098` (`_098`) is NOT mistaken for an address;
  3. section_base + running byte offset, where section_base is the first
     derivable symbol address, or (fallback) the trailing hex of the file stem
     (unk_data_020FDB44 => 0x020FDB44). Accumulated addresses are cross-checked
     against any independently-derivable address — a mismatch means a parse gap
     and is reported.

CLI:
  gen_rodata_pass.py <asm/name.s>            # analysis report (recipe, layout, asm-ref, split plan)
  gen_rodata_pass.py <asm/name.s> --emit     # emit the C skeleton for the chosen recipe
  gen_rodata_pass.py <asm/name.s> --json     # machine-readable layout (consumed by objdiff --rodata)

Python stdlib only. Read-only: never builds, never writes source.
"""
import argparse
import json
import os
import re
import sys


# ---------------------------------------------------------------------------
# Parsing the .rodata / .data sections into per-symbol token lists.
# ---------------------------------------------------------------------------

# A token is a fixed-width cell of the initializer:
#   ('word', target)   4 bytes, a relocated pointer (target = symbol/expr string)
#   ('int', value, w)  w-byte little-endian numeric literal (w in {4,2,1})
# Bytes/space/ascii all decompose into ('int', b, 1) cells so byte layout is exact.

LABEL_RE = re.compile(r'^([A-Za-z_.$][\w.$]*):\s*(?:;\s*0x([0-9A-Fa-f]+))?\s*$')
# `label:` optionally followed by more content on the same line (e.g. a literal
# pool `_0224D578: .word ov02_022538EC`). Group 2 is the trailing content.
INLINE_LABEL_RE = re.compile(r'^([A-Za-z_.$][\w.$]*):[ \t]*(\S.*)?$')
ADDR_IN_NAME_RE = re.compile(r'(?:^|_)([0-9A-Fa-f]{6,8})$')
SECTION_RE = re.compile(r'^\s*(?:\.section\s+)?\.(rodata|data|text|bss)\b')
PUBLIC_RE = re.compile(r'^\s*\.(?:public|global|globl)\s+(\S+)')


def _strip_comment(s):
    # Drop a trailing `;`-comment but keep `; 0xADDR` handled by the label regex.
    i = s.find(';')
    return s[:i] if i >= 0 else s


def _parse_ascii(arg, terminated):
    """Bytes of a .ascii/.asciz/.string argument (one quoted string)."""
    m = re.search(r'"((?:[^"\\]|\\.)*)"', arg)
    if not m:
        return []
    raw = m.group(1)
    out = []
    i = 0
    escapes = {'n': 10, 't': 9, 'r': 13, '0': 0, '\\': 92, '"': 34}
    while i < len(raw):
        c = raw[i]
        if c == '\\' and i + 1 < len(raw):
            nxt = raw[i + 1]
            if nxt in escapes:
                out.append(escapes[nxt])
                i += 2
                continue
            if nxt == 'x':
                out.append(int(raw[i + 2:i + 4], 16))
                i += 4
                continue
        out.append(ord(c) & 0xFF)
        i += 1
    if terminated:
        out.append(0)
    return [('int', b, 1) for b in out]


def _tokens_for_directive(mnem, arg):
    """Return (tokens, alignment) for one data directive line. alignment != 0 for
    .align/.balign (handled by the caller against the running offset)."""
    mnem = mnem.lower()
    arg = arg.strip()
    if mnem in ('.word', '.long', '.4byte'):
        toks = []
        for item in _split_args(arg):
            toks.append(_word_token(item))
        return toks, 0
    if mnem in ('.short', '.hword', '.half', '.2byte'):
        return [('int', _num(v) & 0xFFFF, 2) for v in _split_args(arg)], 0
    if mnem in ('.byte', '.1byte'):
        return [('int', _num(v) & 0xFF, 1) for v in _split_args(arg)], 0
    if mnem in ('.space', '.skip', '.zero'):
        parts = _split_args(arg)
        n = _num(parts[0])
        fill = _num(parts[1]) & 0xFF if len(parts) > 1 else 0
        return [('int', fill, 1)] * n, 0
    if mnem == '.ascii':
        return _parse_ascii(arg, terminated=False), 0
    if mnem in ('.asciz', '.string'):
        return _parse_ascii(arg, terminated=True), 0
    if mnem in ('.align', '.balign', '.p2align'):
        parts = _split_args(arg)
        val = _num(parts[0]) if parts else 0
        # .align on ARM ELF is a power of two; .balign is a byte count. Treat
        # <= 8 as a p2 exponent for .align, else a byte count.
        if mnem == '.align' and val <= 8:
            return [], (1 << val)
        return [], max(val, 1)
    return [], 0


def _split_args(arg):
    """Split a directive argument list on commas not inside quotes."""
    out, cur, depth, q = [], '', 0, False
    for ch in arg:
        if ch == '"':
            q = not q
        if ch == ',' and not q and depth == 0:
            out.append(cur.strip())
            cur = ''
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def _num(s):
    s = s.strip()
    try:
        return int(s, 0)
    except ValueError:
        # symbolic constant we cannot resolve (from an #included header). Callers
        # of _num for byte/short widths shouldn't hit this on real data files; if
        # they do, surface it as 0 and let the parse-consistency check flag it.
        return 0


def _word_token(item):
    item = item.strip()
    if re.fullmatch(r'[+-]?(?:0[xX][0-9A-Fa-f]+|\d+)', item):
        return ('int', _num(item) & 0xFFFFFFFF, 4)
    # Anything with a letter is a symbol reference (bare ident or an expression
    # like `sym + 0x4`); the linker relocates it, so it is a don't-care word for
    # byte comparison. Keep the whole expression string as the target.
    return ('word', item)


def token_bytes(tokens):
    """Flatten tokens to (bytes, relocs) where relocs = {offset: target}."""
    out = bytearray()
    relocs = {}
    for t in tokens:
        if t[0] == 'word':
            relocs[len(out)] = t[1]
            out += b'\x00\x00\x00\x00'
        else:
            _, value, w = t
            for k in range(w):
                out.append((value >> (8 * k)) & 0xFF)
    return bytes(out), relocs


class Symbol:
    __slots__ = ('name', 'kind', 'tokens', 'addr', 'size', 'public',
                 'addr_source', 'accum_addr')

    def __init__(self, name, kind, public):
        self.name = name
        self.kind = kind          # 'rodata' | 'data'
        self.tokens = []
        self.addr = None          # independently derived (comment / name)
        self.addr_source = None
        self.accum_addr = None    # base + running offset
        self.size = 0
        self.public = public

    @property
    def bytes_and_relocs(self):
        return token_bytes(self.tokens)


def derive_name_addr(name):
    m = ADDR_IN_NAME_RE.search(name)
    if m:
        return int(m.group(1), 16)
    return None


def parse_sections(path):
    """Parse a .s file's .rodata/.data into ordered Symbol objects.

    Returns (symbols, publics, text_refs, warnings):
      symbols    list[Symbol] in file (= address) order, addr/size filled in
      publics    set of names declared .public/.global anywhere
      text_refs  {rodata_or_data_symbol_name: [source labels in .text]} — code
                 references via a literal-pool `.word <sym>` inside .text
      warnings   list[str] parse-consistency notes
    """
    lines = open(path, encoding='latin-1').read().splitlines()

    publics = set()
    for l in lines:
        m = PUBLIC_RE.match(l)
        if m:
            publics.add(m.group(1))

    symbols = []
    by_name = {}
    section = None       # None until first .rodata/.data
    cur = None
    warnings = []
    pending_align = 0

    # Collect symbol names first (two-pass) so we can find .text references.
    def start_symbol(name, comment_addr):
        nonlocal cur, pending_align
        sym = Symbol(name, section, name in publics)
        if comment_addr is not None:
            sym.addr = comment_addr
            sym.addr_source = 'comment'
        else:
            na = derive_name_addr(name)
            if na is not None:
                sym.addr = na
                sym.addr_source = 'name'
        symbols.append(sym)
        by_name[name] = sym
        cur = sym
        pending_align = 0

    for raw in lines:
        sm = SECTION_RE.match(raw)
        if sm:
            sec = sm.group(1)
            section = sec if sec in ('rodata', 'data') else None
            if sec in ('text', 'bss'):
                cur = None
            continue
        if section is None:
            continue
        st = raw.strip()
        if not st or st.startswith('#') or st.startswith('.public') \
                or st.startswith('.global') or st.startswith('.globl') \
                or st.startswith('.include'):
            continue
        lm = LABEL_RE.match(st)
        if lm and not st.lstrip().startswith('.'):
            comment_addr = int(lm.group(2), 16) if lm.group(2) else None
            start_symbol(lm.group(1), comment_addr)
            continue
        # Inline `label: .directive ...` (e.g. a literal pool). Start the symbol
        # and fall through to process the trailing directive on the same line.
        im = INLINE_LABEL_RE.match(st)
        if im and not st.startswith('.') and im.group(2):
            start_symbol(im.group(1), None)
            st = im.group(2)
        if cur is None:
            continue
        body = _strip_comment(st).strip()
        if not body or not body.startswith('.'):
            continue
        parts = body.split(None, 1)
        mnem = parts[0]
        arg = parts[1] if len(parts) > 1 else ''
        toks, align = _tokens_for_directive(mnem, arg)
        if align:
            pending_align = max(pending_align, align)
        if toks:
            if pending_align:
                # pad the current symbol tail to the requested alignment
                bs, _ = cur.bytes_and_relocs
                pad = (-len(bs)) % pending_align
                if pad:
                    cur.tokens += [('int', 0, 1)] * pad
                    warnings.append(
                        f'{cur.name}: inserted {pad} pad byte(s) for {mnem} '
                        f'{align} — verify against retail layout')
                pending_align = 0
            cur.tokens += toks

    # Fill sizes.
    for sym in symbols:
        bs, _ = sym.bytes_and_relocs
        sym.size = len(bs)

    # Drop trailing zero-length end-markers (e.g. `_02253E20:` with no data).
    symbols = [s for s in symbols if s.size > 0]

    _assign_addresses(path, symbols, warnings)
    text_refs = _find_text_refs(lines, {s.name for s in symbols})
    return symbols, publics, text_refs, warnings


def _assign_addresses(path, symbols, warnings):
    """Fill accum_addr for every symbol; cross-check independent addresses."""
    if not symbols:
        return
    # Section base per kind: first derivable addr in that kind, else file stem.
    stem = os.path.splitext(os.path.basename(path))[0]
    stem_addr = derive_name_addr(stem)
    bases = {}
    for kind in ('rodata', 'data'):
        first = next((s for s in symbols if s.kind == kind), None)
        if first is None:
            continue
        if first.addr is not None:
            bases[kind] = first.addr
        elif stem_addr is not None and kind == 'rodata':
            # only the primary section can borrow the file-stem address; a .data
            # base is derived by continuing accumulation from rodata below.
            bases[kind] = stem_addr
        else:
            bases[kind] = None

    running = {}
    for sym in symbols:
        base = bases.get(sym.kind)
        if base is None:
            # continue accumulating from wherever we are (data right after rodata)
            prev = running.get(sym.kind)
            base = prev if prev is not None else (stem_addr or 0)
            bases[sym.kind] = base
        off = running.get(sym.kind)
        if off is None:
            off = base
        sym.accum_addr = off
        if sym.addr is not None and sym.addr != off:
            warnings.append(
                f'{sym.name}: derived addr 0x{sym.addr:08X} != accumulated '
                f'0x{off:08X} (parse gap of {sym.addr - off:+d} bytes before it)')
            # trust the independently-derived address and resync accumulation
            sym.accum_addr = sym.addr
            off = sym.addr
        running[sym.kind] = off + sym.size

    # Prefer the authoritative address for reporting.
    for sym in symbols:
        if sym.addr is None:
            sym.addr = sym.accum_addr
            sym.addr_source = 'accum'


def _find_text_refs(lines, symnames):
    """Map rodata/data symbol -> list of nearest .text labels that `.word` it."""
    refs = {}
    section = None
    last_label = None
    for raw in lines:
        sm = SECTION_RE.match(raw)
        if sm:
            section = sm.group(1)
            continue
        if section != 'text':
            continue
        st = raw.strip()
        lm = LABEL_RE.match(st)
        if lm and not st.lstrip().startswith('.'):
            last_label = lm.group(1)
            continue
        # An inline `label: .word sym` both names a literal-pool slot and holds
        # the reference; record the label and keep the trailing directive.
        im = INLINE_LABEL_RE.match(st)
        if im and not st.startswith('.') and im.group(2):
            last_label = im.group(1)
            st = im.group(2)
        body = _strip_comment(st).strip()
        if body.startswith('.word') or body.startswith('.long'):
            for item in _split_args(body.split(None, 1)[1] if ' ' in body else ''):
                base = re.split(r'[+\- ]', item.strip(), 1)[0]
                if base in symnames:
                    refs.setdefault(base, []).append(last_label)
    return refs


# ---------------------------------------------------------------------------
# Recipe selection + layout model.
# ---------------------------------------------------------------------------

def choose_recipe(symbols):
    """one-struct for internal rodata; ext-const when symbols are .public."""
    rodata = [s for s in symbols if s.kind == 'rodata']
    if rodata and any(s.public for s in rodata):
        return 'ext-const'
    if any(s.public for s in symbols):
        return 'ext-const'
    return 'one-struct'


def field_name(sym):
    """Struct field id from an address-encoded name; fall back to the raw name."""
    m = ADDR_IN_NAME_RE.search(sym.name)
    if m:
        return 'f' + m.group(1).upper()
    return sym.name


def default_c_type(sym):
    """(type_keyword, element_count, is_pointer_array) skeleton type for a symbol.

    Pointer/mixed word tables (any reloc, size %4==0)  -> void*[N]
    Pure 2-byte data (size %2==0, size%4 may vary)      -> u16[N] only if all
                                                            .short-shaped; else u8
    Everything else                                     -> u8[N]  (always exact)
    """
    bs, relocs = sym.bytes_and_relocs
    if relocs and sym.size % 4 == 0:
        return ('void *', sym.size // 4, True)
    # detect an all-.short symbol (every token width 2)
    if sym.tokens and all(t[0] == 'int' and t[2] == 2 for t in sym.tokens):
        return ('u16', sym.size // 2, False)
    if sym.tokens and all(t[0] == 'int' and t[2] == 4 for t in sym.tokens):
        return ('u32', sym.size // 4, False)
    return ('u8', sym.size, False)


# ---------------------------------------------------------------------------
# Emit: one-struct recipe.
# ---------------------------------------------------------------------------

def _word_cells(sym, ref):
    """Initializer cells for a word/pointer table. ref(target)->C expression."""
    bs, relocs = sym.bytes_and_relocs
    cells = []
    for o in range(0, sym.size, 4):
        if o in relocs:
            cells.append(f'(void *){ref(relocs[o])}')
        else:
            v = int.from_bytes(bs[o:o + 4], 'little')
            cells.append(f'(void *)0x{v:X}')
    return cells


def _u8_cells(bs):
    return [f'0x{b:02X}' for b in bs]


def _u16_cells(bs):
    return [f'0x{int.from_bytes(bs[i:i+2], "little"):04X}' for i in range(0, len(bs), 2)]


def _u32_cells(bs):
    return [f'0x{int.from_bytes(bs[i:i+4], "little"):08X}' for i in range(0, len(bs), 4)]


def emit_one_struct(symbols, text_refs):
    rodata = [s for s in symbols if s.kind == 'rodata']
    data = [s for s in symbols if s.kind == 'data']
    rodata.sort(key=lambda s: s.addr)
    data.sort(key=lambda s: s.addr)
    if not rodata:
        return '// no .rodata symbols; nothing to consolidate\n'
    ro_base = rodata[0].addr

    # asm-ref candidates = rodata symbols referenced from .text literal pools.
    asm_ref = {s.name for s in rodata if s.name in text_refs}

    def ref(target):
        base = re.split(r'[+\- ]', target, 1)[0]
        sym = next((s for s in rodata + data if s.name == base), None)
        if sym is None:
            return target  # external function / data
        container = 'sData' if sym.kind == 'data' else 'sRodata'
        return f'{container}.{field_name(sym)}'

    lines = []
    lines.append('// ==== consolidated .rodata (one static const struct so MWCC -O4')
    lines.append('// cannot size-sort the separate objects). Field order = address order.')
    lines.append('// Types are skeleton defaults (u8/u16/u32/void*) — refine to the real')
    lines.append('// struct/typedef types; the BYTES are exact. Names restored via #define')
    lines.append('// below; asm-referenced fields use `ldr =sRodata+0xOFF` instead.')
    lines.append('static const struct {')
    for s in rodata:
        typ, n, _ = default_c_type(s)
        lines.append(f'    {typ} {field_name(s)}[{n}];')
    lines.append('} sRodata = {')
    for s in rodata:
        typ, n, is_ptr = default_c_type(s)
        bs, _ = s.bytes_and_relocs
        if is_ptr:
            cells = _word_cells(s, ref)
        elif typ == 'u16':
            cells = _u16_cells(bs)
        elif typ == 'u32':
            cells = _u32_cells(bs)
        else:
            cells = _u8_cells(bs)
        lines.append(f'    {{ {", ".join(cells)} }},  // {s.name} @ 0x{s.addr:08X}')
    lines.append('};')
    lines.append('')

    if data:
        lines.append('static struct {')
        for s in data:
            typ, n, _ = default_c_type(s)
            lines.append(f'    {typ} {field_name(s)}[{n}];')
        lines.append('} sData = {')
        for s in data:
            typ, n, is_ptr = default_c_type(s)
            bs, _ = s.bytes_and_relocs
            cells = _word_cells(s, ref) if is_ptr else (
                _u16_cells(bs) if typ == 'u16' else
                _u32_cells(bs) if typ == 'u32' else _u8_cells(bs))
            lines.append(f'    {{ {", ".join(cells)} }},  // {s.name} @ 0x{s.addr:08X}')
        lines.append('};')
        lines.append('')

    lines.append('// ---- name restorations ----')
    for s in rodata:
        if s.name in asm_ref:
            off = s.addr - ro_base
            lines.append(f'// {s.name} -> sRodata+0x{off:X} '
                         f'(referenced from .text: {", ".join(text_refs[s.name])}) — '
                         f'macro dropped if that function becomes inline asm')
            lines.append(f'#define {s.name} (sRodata.{field_name(s)})')
        else:
            lines.append(f'#define {s.name} (sRodata.{field_name(s)})')
    for s in data:
        lines.append(f'#define {s.name} (sData.{field_name(s)})')
    return '\n'.join(lines) + '\n'


# ---------------------------------------------------------------------------
# Emit: ext-const recipe.
# ---------------------------------------------------------------------------

def size_ascending_splits(symbols):
    """Return the TU-split index list: positions i where size[i] < size[i-1]."""
    splits = []
    for i in range(1, len(symbols)):
        if symbols[i].size < symbols[i - 1].size:
            splits.append(i)
    return splits


def equal_size_buckets(symbols):
    """Consecutive runs of >1 equal-size symbols (tie buckets to permute)."""
    buckets = []
    run = [symbols[0]] if symbols else []
    for s in symbols[1:]:
        if s.size == run[-1].size:
            run.append(s)
        else:
            if len(run) > 1:
                buckets.append(list(run))
            run = [s]
    if len(run) > 1:
        buckets.append(list(run))
    return buckets


def emit_ext_const(symbols, splits):
    rodata = [s for s in symbols if s.kind == 'rodata']
    rodata.sort(key=lambda s: s.addr)
    out = []
    out.append('// ==== external const arrays (ext-const-split-tu-size-ascending-recipe).')
    out.append('// MWCC emits file-scope external consts SIZE-ASCENDING; wrap in a')
    out.append('// `#pragma section RODATA begin/end` (any nitro/section.h name) to merge')
    out.append('// into one packed .rodata, and SPLIT the TU at each `// --- SPLIT` marker')
    out.append('// (retail size drops there). Types are skeleton defaults — refine them.')
    out.append('#pragma section RODATA begin')
    tu = 1
    for i, s in enumerate(rodata):
        if i in splits:
            out.append('#pragma section RODATA end')
            out.append(f'// --- SPLIT: size drops {rodata[i-1].size} -> {s.size} bytes; '
                       f'start src/<name>{tu+1}.c (add its Object line after in main.lsf) ---')
            out.append('#pragma section RODATA begin')
            tu += 1
        typ, n, is_ptr = default_c_type(s)
        bs, relocs = s.bytes_and_relocs
        if is_ptr:
            cells = [(relocs[o] if o in relocs else f'0x{int.from_bytes(bs[o:o+4],"little"):X}')
                     for o in range(0, s.size, 4)]
            out.append(f'const void *const {s.name}[{n}] = {{ {", ".join(cells)} }};'
                       f'  // 0x{s.addr:08X}')
        else:
            cells = (_u16_cells(bs) if typ == 'u16' else
                     _u32_cells(bs) if typ == 'u32' else _u8_cells(bs))
            out.append(f'const {typ} {s.name}[{n}] = {{ {", ".join(cells)} }};'
                       f'  // 0x{s.addr:08X}')
    out.append('#pragma section RODATA end')
    return '\n'.join(out) + '\n'


# ---------------------------------------------------------------------------
# Layout export (consumed by objdiff --rodata and the report).
# ---------------------------------------------------------------------------

def symbol_layout(path):
    """Public API: parse `path` and return a layout dict.

    {
      'file': path, 'recipe': 'one-struct'|'ext-const',
      'bases': {'rodata': addr, 'data': addr},
      'symbols': [ {name, kind, addr, size, offset, is_pointer, reloc_offsets,
                    public}, ... ],   # offset = addr - base(kind)
      'text_refs': {name: [labels]}, 'warnings': [...],
    }
    """
    symbols, publics, text_refs, warnings = parse_sections(path)
    bases = {}
    for kind in ('rodata', 'data'):
        ks = [s for s in symbols if s.kind == kind]
        if ks:
            bases[kind] = min(s.addr for s in ks)
    out_syms = []
    for s in sorted(symbols, key=lambda x: (x.kind, x.addr)):
        bs, relocs = s.bytes_and_relocs
        out_syms.append({
            'name': s.name, 'kind': s.kind, 'addr': s.addr, 'size': s.size,
            'offset': s.addr - bases[s.kind],
            'is_pointer': bool(relocs) and s.size % 4 == 0,
            'reloc_offsets': sorted(relocs.keys()),
            'public': s.public,
        })
    return {
        'file': path, 'recipe': choose_recipe(symbols), 'bases': bases,
        'symbols': out_syms, 'text_refs': text_refs, 'warnings': warnings,
    }


# ---------------------------------------------------------------------------
# Reports.
# ---------------------------------------------------------------------------

def report(path):
    symbols, publics, text_refs, warnings = parse_sections(path)
    recipe = choose_recipe(symbols)
    rodata = sorted([s for s in symbols if s.kind == 'rodata'], key=lambda s: s.addr)
    data = sorted([s for s in symbols if s.kind == 'data'], key=lambda s: s.addr)

    print(f'file:   {path}')
    print(f'recipe: {recipe}')
    for kind, ks in (('rodata', rodata), ('data', data)):
        if not ks:
            continue
        base = ks[0].addr
        span = sum(s.size for s in ks)
        end = ks[-1].addr + ks[-1].size
        print(f'.{kind}: {len(ks)} symbols, base 0x{base:08X}, '
              f'span {span} bytes (0x{span:X}); contiguous={"yes" if end-base==span else "NO"}')

    print('\nlayout (address order):')
    print(f'  {"addr":<10} {"off":>5} {"size":>5} {"src":<6} {"type":<9} name')
    for s in rodata + data:
        typ, n, is_ptr = default_c_type(s)
        base = (rodata[0].addr if s.kind == 'rodata' else data[0].addr)
        tstr = f'{typ}[{n}]'
        print(f'  0x{s.addr:08X} {s.addr-base:>5} {s.size:>5} '
              f'{s.addr_source:<6} {tstr:<9} {s.name}'
              f'{"  (.public)" if s.public else ""}')

    if recipe == 'one-struct':
        ro_base = rodata[0].addr
        ref_syms = [s for s in rodata if s.name in text_refs]
        print(f'\ncode-referenced rodata symbols ({len(ref_syms)}): keep the #define for'
              '\n  these; drop it and use `ldr =sRodata+0xOFF` ONLY for symbols whose'
              '\n  referencing function you transcribe as inline asm.')
        for s in ref_syms:
            print(f'  {s.name:<22} sRodata+0x{s.addr-ro_base:<5X} '
                  f'<- {", ".join(sorted(set(text_refs[s.name])))}')
    else:
        splits = size_ascending_splits(rodata)
        print(f'\next-const split plan: {len(splits)+1} TU(s)')
        prev = 0
        for k, idx in enumerate(splits + [len(rodata)]):
            chunk = rodata[prev:idx]
            if chunk:
                print(f'  TU#{k+1}: {chunk[0].name} .. {chunk[-1].name} '
                      f'(sizes {chunk[0].size}..{chunk[-1].size})')
            prev = idx
        buckets = equal_size_buckets(rodata)
        if buckets:
            print(f'equal-size tie buckets to permute empirically ({len(buckets)}):')
            for b in buckets:
                print(f'  {b[0].size}B x{len(b)}: {", ".join(s.name for s in b)}')

    if warnings:
        print(f'\nwarnings ({len(warnings)}):')
        for w in warnings:
            print(f'  ! {w}')
    else:
        print('\nwarnings: none (parse fully consistent)')


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('asm', help='asm/<name>.s to analyze')
    g = ap.add_mutually_exclusive_group()
    g.add_argument('--emit', action='store_true', help='emit the C skeleton')
    g.add_argument('--json', action='store_true', help='machine-readable layout JSON')
    args = ap.parse_args(argv)

    if not os.path.exists(args.asm):
        print(f'error: no such file: {args.asm}', file=sys.stderr)
        return 2

    if args.json:
        print(json.dumps(symbol_layout(args.asm), indent=2))
        return 0

    symbols, publics, text_refs, warnings = parse_sections(args.asm)
    if args.emit:
        recipe = choose_recipe(symbols)
        if recipe == 'one-struct':
            sys.stdout.write(emit_one_struct(symbols, text_refs))
        else:
            rodata = sorted([s for s in symbols if s.kind == 'rodata'],
                            key=lambda s: s.addr)
            sys.stdout.write(emit_ext_const(rodata, size_ascending_splits(rodata)))
        return 0

    report(args.asm)
    return 0


if __name__ == '__main__':
    sys.exit(main())
