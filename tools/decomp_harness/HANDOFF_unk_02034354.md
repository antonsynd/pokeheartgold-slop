# Handoff: `asm/unk_02034354.s` (link-battle comm PlayerProfile manager)

**Status: 21/30 functions matched (WIP).** `main.lsf` is on `asm/unk_02034354.o` so the full ROM
still matches (`chiri pkg -- compare` = EXIT 0). `src/unk_02034354.c` is committed but NOT in the
build. To resume: flip `main.lsf` to `src/`, rebuild the asm ref, fix the 9 remaining functions.

```
cp build/heartgold.us/asm/unk_02034354.o /tmp/unk_02034354_asm.o   # after a build with asm
gsed -i 's|Object asm/unk_02034354.o|Object src/unk_02034354.o|' main.lsf
chiri pkg -- build --target main --no-compare
python3 tools/decomp_harness/objdiff.py /tmp/unk_02034354_asm.o build/heartgold.us/src/unk_02034354.o --summary
```

## What it is
A wireless/link-battle player-data manager. Single global `_021D4130` → heap `Mgr` struct
(0xea<<2 = 0x3a8 bytes) built lazily by sub_02034354. Header `include/unk_02034354.h` (frozen).
`sub_02034818` (used by unk_02096C88) returns slot[a0] if its status is 1/2/3.

## Mgr struct (VERIFIED correct in the .c):
```
typedef struct PlayerRecord {        // 0x68 bytes
    LinkBattleRuleset ruleset;       // 0x00 (0x20)
    PlayerProfile profile;           // 0x20
    u8 dwcToken[0x0c];               // 0x40
    u8 friendName[0x10];             // 0x4c
    u8 macAddr[6];                   // 0x5c
    u8 unk_62, country, region, unk_65; u8 pad[2];  // 0x62..0x67
} PlayerRecord;
typedef struct Mgr {
    void *unk_00; u32 param; SaveData *saveData;   // 0x00,0x04,0x08
    PlayerRecord records[8];         // 0x0c  (slot[i].profile lands at 0x2c+i*0x68)
    PlayerProfile *slotPtrs[8];      // 0x34c
    u16 battleRecord[8][3];          // 0x36c
    u8 status[8];                    // 0x39c
    u8 unk_3a4, unk_3a5, unk_3a6, pad;  // 0x3a4..
} Mgr;                               // 0x3a8
static Mgr *sMgr;  // = _021D4130
```

## SOLVED patterns (already applied, matched):
- **sub_02034818**: `st == 1 || st == 2 || st == 3` was range-peepholed (`sub#1; cmp #2; bhi`).
  Use a `switch (st) { case 1: case 2: case 3: return slotPtrs[a0]; } return NULL;`.
- **Getters 8A8/8CC/484C/884**: drafter wrote `if (status==0) return 0; return field;` → block
  order swapped. Invert to `if (sMgr->status[a0] != 0) return field; return 0;` (field-first).
- **sub_02034870**: tail-calls sub_0203A378; for the `bx` tail call (no truncation) declare the
  local extern as `u8 sub_0203A378(...)` (matches 870's u8 return), not int.
- **sub_02034638**: returns int (asm `mov r0,#0/#1; pop`) but the FROZEN header declares it
  `void` (13 files include the header → changing it IPA-cascades). Shipped as NONMATCHING
  `asm void sub_02034638(void)` (the int return in r0 is harmless; the sole caller overlay_44
  ignores it). C documentation kept under `#ifdef NONMATCHING`.

## REMAINING 9 (to fix):
- **sub_02034780** (28 vs 32, +4): status==1 scan loop; asm keeps `mgr` base advancing by 1 with
  the 0x39c field offset in the ldrb (`ldrb [r3, r1=0x39c]; add r3,#1`), NOT a precomputed
  `&status[0]` pointer. Neither `&status[0]` walk nor `mgr->status[i]` index matched yet — try
  `((u8*)mgr)[0x39c + i]` or a different loop var.
- **sub_02034960** (184 vs 188) + **sub_02034AEC** (18 vs 20): sub_02034960 is 2-arg `(a0,a1)`
  but AEC's asm calls it with ONLY r0=2 (no `mov r1`) — a1 is unused on the a0==2 path. The
  drafter passes `sub_02034960(2, 0)` (sets r1=0). Need the call to not set r1 (the original
  relied on r1 leftover); investigate 960's a1 usage / whether AEC should pass r1 unset.
- **sub_0203453C** (140 vs 136), **sub_02034730** (DIFF), **sub_020347A0** (DIFF 17),
  **sub_020347CC** (72 vs 76), **sub_020348F0** (104 vs 112), **sub_02034A20** (152 vs 148) —
  need per-function disasm (likely more block-order / cast / reload nuances; 8F0 has a nested
  i/j compare loop the drafter flagged; A20 calls sub_0202C4F0 with battleRecord[i][2] order).
