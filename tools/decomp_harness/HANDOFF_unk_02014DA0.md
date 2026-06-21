# Handoff: `asm/unk_02014DA0.s` (SPL particle-emitter display + ListMenuCursor)

**Status: 50/63 functions matched (WIP).** `main.lsf` is on `asm/unk_02014DA0.o` so the full
ROM still matches (`chiri pkg -- compare` = EXIT 0). `src/unk_02014DA0.c` is committed but NOT
in the build. To resume: rebuild the asm reference, flip `main.lsf` to `src/`, and fix the 13
remaining functions, then run `chiri pkg -- compare`.

```
cp build/heartgold.us/asm/unk_02014DA0.o /tmp/unk_02014DA0_asm.o   # after a build with asm
gsed -i 's|Object asm/unk_02014DA0.o|Object src/unk_02014DA0.o|' main.lsf
chiri pkg -- build --target main --no-compare
python3 tools/decomp_harness/objdiff.py /tmp/unk_02014DA0_asm.o build/heartgold.us/src/unk_02014DA0.o --summary
```

## What this file is
Two modules in one TU:
1. **SPL (NNS SPLEmitter) particle-display manager** — the `sub_*` functions. Header
   `include/unk_02014DA0.h` (uses `SPLEmitter`, `Camera`, `NNSGfdTexKey/PlttKey`,
   `texAllocFun`/`plttAllocFun`). Used by `intro_movie_scene_4.c`, `unk_020773AC.c`,
   `overlay_06/94`, `frontier/overlay_80_02239960`.
2. **ListMenuCursor** — `ListMenuCursorNew`/`DestroyListMenuCursorObj`/`ListMenuCursorSetColor`/
   `ListMenuUpdateCursorObj` (header `include/list_menu_cursor.h`). **All 4 already MATCH.**

## Key structures / globals (in the .c, verified vs asm)
- `SplSys` (0xdc): spl@0, narcData@4, activeEmitter@8, heapBase@0xc, heapCur@0x10, heapEnd@0x14,
  texAlloc@0x18, plttAlloc@0x1c, camera@0x20, unk24/28/2c@0x24/28/2c, perspAngle(u16)@0x30,
  target@0x34, up@0x40, pos@0x4c, texState[16]@0x58, plttState[16]@0x98, flags(u8)@0xd8,
  slot(u8)@0xda, perspType(u8)@0xdb.
- `sSplState` = combined global for `_021D10A0`(8B) + `_021D10A8`(0x40): `{SplSys *activeSys;
  void *callbackArg; SplSys *slots[16];}`. The 16 table fns access `sSplState.slots[CONST]`
  (= `_021D10A0`+offset) and MATCH; slot-ITERATORS must use the pointer-walk (below).
- `sFuncTable[16]` (`_020F609C`) = the 16 STATIC per-slot allocators sub_02014FA4..sub_02015238 (MATCH).
- 3 rodata VecFx32: sVec_020F6078={0,0x100000,0}, _6084={0,0,0}, _6090={0,0,0x4000}.
- Local externs needed (NOT in spl.h — declaring in spl.h would IPA-cascade): `SPL_Init`
  (`SPLManager *SPL_Init(u32(*)(u32,BOOL), u16,u16,u8,u8,u8)`), and the other SPL_*/NNS_Gfd*.

## Solved pattern — SLOT ITERATION (fixed DA0, DB4, F84, 0201543C)
The asm walks the slots via `=_021D10A8` directly (a pointer), NOT `sSplState.slots[i]` (which
gives base `&sSplState`+8 offset). Use:
```c
SplSys **p = sSplState.slots;
for (i = 0; i < 16; i++) { if (*p ...) {...} p++; }   // or do-while for DB4's find
```
Also use `int i` (asm uses signed `blt`), not `u32 i` (gives `bcc`).

## Remaining 13 mismatches
- **sub_02015420** (6 diffs) — pure register swap: asm i=r2/p=r3, mine i=r3/p=r2. Try swapping
  the `int i;` / `SplSys **p;` declaration order (or `for(i=0;i<16;i++,p++)` comma form).
- **sub_02015460** (SIZE 32v28) — **HEADER-LOCKED like sub_020138E0**: the asm computes a count
  and returns it in r0 (`add r0,r4,#0`), but `unk_02014DA0.h` declares it `void`. All 5 callers
  ignore the return. Either NONMATCHING (keep void, handwrite asm) or split-header to define it
  `int`. (The drafter's `int count;count++;` is dead-eliminated under void → 4 bytes short.)
- **sub_02014EBC** (41 diffs) — destroy: slot-find-and-null loop (needs pointer-walk) + the
  tex/pltt free loops (base-pointer-increment over texState[16]@0x58 / plttState[16]@0x98).
- **sub_0201526C** (9), **sub_02015354/394** (1 each) — texState/plttState scans over
  `activeSys` (`sSplState.activeSys` @offset 0) with the base-pointer-increment idiom
  (`ldr [r2,#0x58]; add r2,#4`); express as `for(i;...){ if(act->texState[i]...) } ` but match
  the advancing-base form.
- **sub_02015550** (156 vs 180, +24) — biggest. Drafter flagged: count is `u16` (ldrh, unsigned
  0..65535 so `ble` only triggers on 0); double early-exit may collapse to one; `fld->p_exec`
  NULL-skip via `continue`.
- **sub_02015494** (4), **sub_020154C4** (2), **sub_02015538** (SIZE 24v20), **sub_0201560C**
  (SIZE 28v34), **sub_02015640/720** (5 each) — small; VecFx16/VecFx32 axis/vec setters,
  likely reload-not-cache or `s16`/halfword access nuances.

## Established this attempt
- `sub_020154E4` takes `const VecFx32 *upVec` (called with const rodata); cast at
  `Camera_SetLookAtCamUp((VecFx32*)upVec, ...)`.
- `Camera_Init_FromTargetAndPos(&sVec_020F6084 /*target*/, &sVec_020F6090 /*pos*/,
  sys->perspAngle, 0, FALSE, sys->camera)` — perspAngle stored via `strh` then reloaded `ldrh`.
- Forward-decl block for all 42 headerless/static functions is required before `sFuncTable`.
