# overlay_01_021FE780

Started from the unlinked attempt in src/field/overlay_01_021FE780.c; fixed ov01_021FE8B0 (returns nothing, so
the callback slot is a void callback), the extern table below, and the callbacks' linkage.

## Passing

ov01_021FE780, ov01_021FE79C, ov01_021FE7AC, ov01_021FE7DC, ov01_021FE8B0, ov01_021FE8C8, ov01_021FE970,
ov01_021FE9F4.

## Failing, and why (both are check.py limits, not known differences in the C)

- ov01_021FE7D0: the original is `ldr r3, =sub_02069784; add r0, r0, #4; bx r3`, a tail call through a register.
  The lifted original jumps to a unit the sandbox does not have, so it never reaches the return sentinel
  ("original ... calls=0 returned=0"); the C, which calls and returns, does. (Similar tail calls in overlay_81
  are recorded as calls and verify, so the cause is narrower than "tail calls" in general; not found.) r0 = arg + 4 on the original side
  matches `sub_02069784(&manager->unk4)`. A `musttail` version does not compile (signature mismatch), and one
  that did would only make every trial inconclusive.
- ov01_021FE868: the original copies the 16-byte object returned by sub_02068D98 with two `ldmia`/`stmia`
  pairs; clang -O0 for Thumb emits four `ldr`/`str` instead. The sandbox returns random, often unaligned
  pointers from mocked calls. `ldmia` ignores the low address bits while an unaligned `ldr` rotates the word,
  so the copied words differ only for those unaligned pointers (original 0x021a01d4, C 0x1a01d402). With the
  copy written as `work->data = *(UnkOv01_021FE780_Data *)((u32)data & ~3);` the function passes 500 of 500
  trials, so everything else in it agrees. The plain `work->data = *data;` is kept because real object
  pointers are word aligned and the mask would not exist in the source.

## Data

- ov01_022090DC (the task template passed to ov01_021F1620) stays in the asm .rodata and is declared extern:
  check.py compares the pointer argument of the call by value, and a copy in the C would sit at another address
  (ov01_021FE7DC then fails on the return value, which is a hash of the call arguments). Its entries are
  { 0x34, ov01_021FE868, ov01_021FE8B0, ov01_021FE8C8, ov01_021FE970 }, so those four callbacks are global.
- ov01_022090C4 { 0x1000, 0x1000, 0x1000 } and ov01_022090D0 { 0, 0x4000, 0x4000 } are only read by value and
  are defined in the C.

## Structure findings

- The manager from ov01_021F1430 is 0x6c bytes: void *unk0, a 0x14 byte UnkOv01_021FFECC_sub at 4, and an
  NNSG3dRenderObj (0x54 bytes) at 0x18.
- The 0x34 byte task work: unk0 done flag, unk4 facing direction, unk8 cached direction, unkC object id,
  unk10 map id, unk14 frame counter, unk18 flag from sub_02068D90, unk1c/unk20 scale and step, and at 0x24 a
  16 byte copy of the data given to ov01_021F1620 (direction, FieldSystem *, manager, LocalMapObject *).
  UnkOv01_021FFFCC_common in unk_020689C8.h is 0x14 bytes; only 0x10 are copied here.
- ov01_021F1620 returns the task pointer, so ov01_021FE7DC returns it (the header says u32).
- sub_0206121C takes a FieldSystem * here although unk_0205FD20.h declares a TaskManager *.
