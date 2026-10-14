#!/usr/bin/env python3
"""R10: delete local SDK stand-ins that the real NitroSDK/NitroSystem headers now define (plan §5).

Works from r10_report.json (r10_report.py). For each fork file, deletes the whole statement
that holds each flagged local definition: a typedef/struct/enum stand-in, a duplicate inline
function, or a prototype that conflicts with the SDK's. The SDK's declaration then applies.
Only statements in the fork's own .c file are touched, never headers.

Every stand-in checked by hand was a verbatim copy of the SDK's definition (pasted in because
pret's old headers lacked it), so all flagged definitions are deleted; KNOWN_SAME records the ones
compared field by field or body by body. A layout or ABI difference elsewhere (a u16 vs u32
parameter in a prototype, say) changes codegen, which the ROM check and object parity catch.

Usage: r10_fix.py [--dry-run]   (run from the repo root, after r10_report.py)
"""
import collections, json, re, sys

# SDK types checked by hand to have the same layout and member names as the stand-ins.
KNOWN_SAME = {
    'GXPolygonAttrMisc', 'NNSGfdFrmTexVramState', 'NNSGfdFrmPlttVramState', 'WMErrCode', 'WMGameInfo',
    'MATHRandContext32', 'G2_ChangeBlendAlpha', 'VEC_Set', 'MATH_IAbs',
    *(f'GX_POLYGON_ATTR_MISC_{n}' for n in ('NONE', 'XLU_DEPTH_UPDATE', 'FAR_CLIPPING', 'DISP_1DOT',
                                             'DEPTHTEST_DECAL', 'FOG')),
}
TYPE_KINDS = ('redefinition of enumerator', 'typedef redefinition', 'redefinition of')


def statement_span(text, line_no):
    """(start, end) offsets of the top-level statement covering 1-based line_no."""
    lines = text.split('\n')
    offs = [0]
    for l in lines:
        offs.append(offs[-1] + len(l) + 1)
    # Walk up to the statement's first line: stop after a line that ends a statement.
    i = line_no - 1
    while i > 0:
        prev = lines[i - 1].rstrip()
        if (not prev or prev.endswith((';', '}')) or prev.lstrip().startswith(('#', '//'))
                or prev.endswith('*/')):
            break
        i -= 1
    # A line inside a braced body: keep walking up until brace depth balances.
    depth_before = sum(l.count('{') - l.count('}') for l in lines[:i])
    while depth_before > 0 and i > 0:
        i -= 1
        depth_before = sum(l.count('{') - l.count('}') for l in lines[:i])
        while i > 0:
            prev = lines[i - 1].rstrip()
            if not prev or prev.endswith((';', '}')) or prev.lstrip().startswith(('#', '//')):
                break
            i -= 1
    start = offs[i]
    depth, j, seen_brace = 0, start, False
    while j < len(text):
        c = text[j]
        if c == '{':
            depth += 1
            seen_brace = True
        elif c == '}':
            depth -= 1
            if depth == 0 and seen_brace:
                # function definition ends here; typedef/struct continue to ';'
                k = j + 1
                while k < len(text) and text[k] in ' \t':
                    k += 1
                rest = text[k:k + 200]
                if not re.match(r'[A-Za-z_\w\s,\*]*;', rest):
                    end = j + 1
                    break
        elif c == ';' and depth == 0:
            end = j + 1
            break
        j += 1
    else:
        return None
    # swallow the newline
    if end < len(text) and text[end] == '\n':
        end += 1
    return start, end


def main():
    dry = '--dry-run' in sys.argv
    report = json.load(open('r10_report.json'))
    deleted, review = collections.Counter(), []
    files_changed = 0
    for src, found in sorted(report.items()):
        spans = []
        for f in found:
            if f['file'] != src or not f['prev'] or not f['prev'][0].startswith('subprojects/'):
                continue
            kind, sym = f['kind'], f['sym']
            if kind in TYPE_KINDS:
                name = re.sub(r'^(enum|struct|union) ', '', sym)
                if name not in KNOWN_SAME and not name.startswith('GX_POLYGON_ATTR_MISC_') \
                        and 'unnamed struct' not in name:
                    review.append((src, f['line'], kind, sym))
            elif kind != 'conflicting types for':
                continue
            text = open(src, encoding='latin-1').read()
            sp = statement_span(text, f['line'])
            if sp:
                spans.append((sp, kind, sym))
        if not spans:
            continue
        text = open(src, encoding='latin-1').read()
        uniq = sorted({s for s, _, _ in spans}, reverse=True)
        # drop spans nested in another
        keep = [s for s in uniq if not any(o != s and o[0] <= s[0] and s[1] <= o[1] for o in uniq)]
        for st, en in keep:
            text = text[:st] + text[en:]
        for _, kind, sym in spans:
            deleted[kind] += 1
        files_changed += 1
        if not dry:
            with open(src, 'w', encoding='latin-1') as fh:
                fh.write(text)
    print(f'r10_fix: {files_changed} files {"would change" if dry else "changed"}; deletions by kind: {dict(deleted)}')
    print(f'r10_fix: {len(review)} of the deleted type stand-ins were not compared by hand:')
    by_sym = collections.defaultdict(list)
    for src, line, kind, sym in review:
        by_sym[sym].append(f'{src}:{line}')
    for sym, locs in sorted(by_sym.items(), key=lambda kv: -len(kv[1])):
        print(f'  {sym[:60]}: {len(locs)} e.g. {locs[0]}')


if __name__ == '__main__':
    main()
