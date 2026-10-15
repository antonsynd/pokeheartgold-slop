#!/usr/bin/env python3
"""Throwaway: test the plan's Phase 3 `lsf` algorithm.
upstream block = skeleton; each upstream Object -> run of our objects that replaced it.
"""
import re, sys, collections, os

D = os.path.dirname(os.path.abspath(__file__))
def rd(p): return open(os.path.join(D, p)).read().splitlines()

head_files = set(rd('head_files.txt'))
sync_files = set(rd('sync_files.txt'))
up_files = set(rd('up_files.txt'))

def parse(lines):
    blocks = []  # (header, [entries]) entry = (kind, name, selector, raw)
    cur = None
    for ln in lines:
        s = ln.split('#', 1)[0].strip()
        if not s:
            continue
        m = re.match(r'^(Static|Autoload|Overlay)\s+(\S+)$', s)
        if m:
            cur = [s, []]
            blocks.append(cur)
            continue
        if s in ('{', '}'):
            continue
        m = re.match(r'^(Object|Library)\s+(\S+)(?:\s+\((\S+)\))?$', s)
        if m:
            cur[1].append((m.group(1), m.group(2), m.group(3)))
            continue
        cur[1].append(('Dir', s, None))
    return blocks

def src_of(objpath, files):
    stem = objpath[:-2]
    cands = [stem + e for e in ('.c', '.s', '.cpp', '.S', '.asm') if stem + e in files]
    return cands

def mangle(src):
    return 'main.nef.p/' + src.replace('/', '_') + '.o'

errs = collections.Counter()
notes = []

def mangle_obj(objpath, files, tag):
    c = src_of(objpath, files)
    if len(c) != 1:
        errs['src_ambiguous_or_missing_' + tag] += 1
        notes.append(f'{tag}: {objpath} -> {c}')
        return None
    return mangle(c[0])

sync = parse(rd('sync.lsf'))
up = parse(rd('up.lsf'))
ours = parse(rd('ours.lsf'))
print('blocks', len(sync), len(up), len(ours))
assert [b[0] for b in sync] == [b[0] for b in up] == [b[0] for b in ours]

out_blocks = []
amb = []
for (hs, es), (hu, eu), (ho, eo) in zip(sync, up, ours):
    dirs_s = [e for e in es if e[0] == 'Dir']
    dirs_u = [e for e in eu if e[0] == 'Dir']
    dirs_o = [e for e in eo if e[0] == 'Dir']
    if not (dirs_s == dirs_u == dirs_o):
        notes.append(f'{hs}: directive mismatch {dirs_s} {dirs_u} {dirs_o}')
    so = [(e[1], e[2]) for e in es if e[0] == 'Object']
    oo = [(e[1], e[2]) for e in eo if e[0] == 'Object']
    uo = [e for e in eu if e[0] != 'Dir']
    # sync objects mangled with sync tree
    smang = {}
    for (p, sel) in so:
        smang[(p, sel)] = (mangle_obj(p, sync_files, 'sync'), sel)
    up_obj_set = {(e[1], e[2]) for e in uo if e[0] == 'Object'}
    # which sync objects survive upstream as Objects?
    s_in_up = [k for k in so if smang[k] in up_obj_set]
    s_not_up = [k for k in so if smang[k] not in up_obj_set]
    # upstream objects not from sync
    sm_vals = set(smang.values())
    u_new = [e for e in uo if e[0] == 'Object' and (e[1], e[2]) not in sm_vals]
    if u_new:
        notes.append(f'{hs}: upstream objects not in sync: {u_new[:5]}')
    # anchors: common between sync and ours (by path,sel)
    oset = set(oo)
    sset = set(so)
    anchors_s = [k for k in so if k in oset]
    anchors_o = [k for k in oo if k in sset]
    if anchors_s != anchors_o:
        notes.append(f'{hs}: anchor order differs')
        errs['anchor_order'] += 1
        continue
    # build gaps: gap i = between anchor i-1 and anchor i (gap 0 before first, gap n after last)
    def gaps(seq, anchors):
        g = [[] for _ in range(len(anchors) + 1)]
        i = 0
        for k in seq:
            if i < len(anchors) and k == anchors[i]:
                i += 1
            else:
                g[i].append(k)
        return g
    gs = gaps(so, anchors_s)
    go = gaps(oo, anchors_o)
    # map each sync object -> (gap index) for removed ones
    gap_of = {}
    for gi, g in enumerate(gs):
        for k in g:
            gap_of[k] = gi
    # Walk upstream skeleton. For each upstream entry determine its position class:
    #   anchor j, removed-sync in gap gi (pos within gap), lib Library line, other
    # Our output: emit anchors (mangled with HEAD), emit O-gap gi when first reaching gap gi's
    # region in upstream order.
    inv_s = {v: k for k, v in smang.items()}
    out = []
    emitted_gap = set()
    anchor_idx = {k: i for i, k in enumerate(anchors_s)}
    # positions: we need to know, for each gap gi, where in upstream skeleton it lands.
    # gap gi lies between anchor gi-1 and anchor gi. Upstream entries between those two anchors
    # include: removed sync objects of gap gi (if still Object upstream), Library lines (new or converted).
    # Determine upstream index of each anchor
    up_keys = []
    for e in uo:
        if e[0] == 'Object' and (e[1], e[2]) in inv_s:
            up_keys.append(('S', inv_s[(e[1], e[2])]))
        else:
            up_keys.append(('U', e))
    # anchors that are lib objects become Library in upstream -> they are not in up as Object.
    # treat anchors absent from upstream specially.
    a_pos = {}
    for ui, (t, k) in enumerate(up_keys):
        if t == 'S' and k in anchor_idx:
            a_pos[anchor_idx[k]] = ui
    lib_anchor_missing = [a for a in anchors_s if anchor_idx[a] not in a_pos]
    for gi in range(len(gs)):
        if not go[gi] and not gs[gi]:
            continue
        if not go[gi]:
            # deletion in ours of sync objects (or lib objects converted)
            continue
        # Find the region in upstream between anchor gi-1 and anchor gi
        # (only anchors present upstream are positioned)
        lo = max([a_pos[j] for j in range(gi) if j in a_pos], default=-1)
        hi = min([a_pos[j] for j in range(gi, len(anchors_s)) if j in a_pos], default=len(up_keys))
        region = up_keys[lo + 1:hi]
        # removed sync objects of this gap that are still Objects upstream
        members = [ui for ui, (t, k) in enumerate(region) if t == 'S' and gap_of.get(k) == gi]
        others = [(ui, k) for ui, (t, k) in enumerate(region) if not (t == 'S' and gap_of.get(k) == gi)]
        if not members:
            amb.append((hs, gi, 'gap has our objects but no upstream member to replace',
                        gs[gi][:3], go[gi][:3], [k for _, k in others][:4]))
            continue
        span = (members[0], members[-1])
        inner_others = [k for ui, k in others if span[0] < ui < span[1]]
        if inner_others:
            amb.append((hs, gi, 'non-member entries inside the replaced span', gs[gi][:6], inner_others[:4]))
        if len(members) != len(gs[gi]):
            amb.append((hs, gi, f'only {len(members)}/{len(gs[gi])} replaced sync objects are Objects upstream',
                        gs[gi], go[gi][:3]))
        # entries in region outside the member span but not anchored -> placement relative to run
        outer = [k for ui, k in others if not (span[0] < ui < span[1])]
        if outer and len(members) > 0:
            # fine: placement determined by upstream relative to members
            pass
    # lib anchors adjacent to game gaps
    out_blocks.append((hs, len(so), len(oo), len(uo), len(lib_anchor_missing)))

print('errors', dict(errs))
for n in notes[:40]:
    print('NOTE', n)
print('ambiguities', len(amb))
for a in amb:
    print('AMB', a)
