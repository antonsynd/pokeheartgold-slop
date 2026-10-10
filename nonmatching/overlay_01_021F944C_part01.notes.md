# overlay_01_021F944C part 1 (ov01_021F944C .. ov01_021F99FC)

All 30 functions started from the Platinum twins (overlay005/ov5_021ECE40.c, the field object billboard/model manager). `twin.py`'s renaming is unreliable
in places (ov01_021F97BC was matched to a one-line getter and ov01_021F95A8 to an unrelated accessor), so those were written from the asm.

- `UnkStruct_Ov01_021F944C` is the same local view of the structure `sub_0205F1A0` returns as in parts 2 and 3, plus +0x100 (the load queue, see part 4) and
  +0x104, the `MapObjectManager *` that `ov01_021F944C` stores and `ov01_021F98CC` hands to `MapObjectManager_GetMapModelNarc`.
- The sprite slots (+0xF4) are 8-byte `{u32 id; resources *}` pairs, 0xFFFF marks a free one; each points into a block of 0x28-byte resources at +0xE4
  (`ov01_021F9698` allocates both with HEAP_ID_FIELD1, `ov01_021F96E4` frees them). `ov01_021F9744` copies one 0x28-byte block out.
- Differences from the twins: the model and sprite id lists end in 0xFF here (the texture list in 0xFFFF); `ov01_021F98B4` walks 4-byte entries `{u16 id; u16 narcIdx}`
  until the id equals the terminator argument; `ov01_021F9918` has three arguments (the table is not passed; the model number comes from
  `GetMoveModelNoBySpriteId`, a negative value returns 2); `ov01_021F9528` calls `ov01_021FA31C` with three arguments; `ov01_021F944C` ignores its fourth argument.
- `sub_02023EA4` is declared `u8` in this file because the asm masks the argument to a byte; `include/unk_02023694.h` declares it `int` (not included here).
  `sub_02023EB8` / `sub_02023F30` return words and `sub_02023EF4` a halfword; `sub_02023EE0` takes a halfword and `sub_02023F1C` a word.
- `ov01_022072CC` is not used here; the model table passed by `ov01_021F99A4` and `ov01_021F99D0` is `ov01_02207294`, the id lists are `ov01_02207260` and `ov01_02206CF0`.
  All are only declared (extern).

Gate results (default symbols.json): everything passes except

- `ov01_021F9798` fails on trial 991 with "memory differs", and the C is right. Trial 991 has a slot count of 48400 (ROM word at +4 of the random object), so the
  loop writes 4 bytes per slot for far more than the 65536 distinct bytes the harness logs (MAX_WRITES in sandbox.c). The stack writes share that log: the original
  pushes 8 bytes, the clang -O0 build spills more, so the two sides drop different words at the end. `check.py --trials 990` prints PASS (301 agree, 689 inconclusive).
- `ov01_021F97BC` (and any function with `do { ... } while (--count)` over a count that comes from a stubbed call, here `MapObjectManager_GetObjectCount`) is
  INCONCLUSIVE or times out: the harness answers calls with random 32-bit values, so the loop bound is huge and the original never finishes within its budget.
  In a scratch copy that declares `MapObjectManager_GetObjectCount` as returning `u8` (the real return is `u32`) it passes 228 of 300 trials (72 inconclusive).
- `ov01_021F9698`, `ov01_021F9704`, `ov01_021F9744`, `ov01_021F9778`, `ov01_021F98B4` and `ov01_021F9980` pass with many inconclusive trials (large random counts).

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C. These now have their verified C in another file, so their C here was not checked again:

- `ov01_021F9798`: `ghidra/overlay_01_021F944C/ov01_021F9798.c`
- `ov01_021F97BC`: `ghidra/overlay_01_021F944C/ov01_021F97BC.c`
