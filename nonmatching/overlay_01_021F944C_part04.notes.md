# overlay_01_021F944C part 4 (ov01_021FA228 .. ov01_021FA6E0)

- 29 of 30 functions pass; all 30 started from Platinum twins (overlay005 ov5_021ECE40.c, the field object billboard/model code).
- ov01_021FA564 (the per-frame task that drains the model load queue) does not pass, but the C is right: the gate fails on 107 of
  1668 conclusive trials, always "memory differs", always in the compaction loop at the end. The loop copies a 16-byte queue entry
  (`entries[i] = entries[j]`). The original does it with `ldmia`/`stmia`, which ignore the low two address bits; clang -O0 emits four
  `ldr`/`str` pairs, and the lifted `ldr` rotates the word when the address is not 4-byte aligned. The entry array pointer is read
  from a random fill, so it is misaligned in three trials out of four whenever a copy happens, and the copied words come out rotated
  (the writes at the first failing address are the original's words with the two halfwords swapped). A scratch copy of the C with
  `entries = (void *)((u32)queue->unk_0C & ~3)` passes 1668 of 1668 (with 332 inconclusive, as before), so nothing else differs; that
  mask is not in the file because no real code would have it.
- Differences from the Platinum twins:
  - sub_021FA248 returns a pointer into the 8-byte-entry table ov01_02207318 (u16 id, u8 at +2, u8 at +3, pointer at +4), picked by
    the 6-bit field at bit 10 of the 6-byte entry of ov01_022074A8 (the existing ObjectEventGraphicsInfo, field unk4_10).
    ov01_021FA28C returns the u8 at +2, ov01_021FA2A0 the u8 at +3, ov01_021FA2AC the pointer at +4, ov01_021FA298 is a thunk to
    ov01_021FA28C. The twin's names (modelID, frameSeqID, animations, fog) do not apply.
  - ov01_021FA31C takes three arguments (no fog flag) and calls sub_02023F90(billboard) before ov01_021EA3B0.
  - ov01_021FA370 stores ov01_021FA2AC(id) at +8 of the resources.
  - ov01_021FA3E8 returns 0 (BOOL); include/overlay_01_021F944C.h declares it `void`, so that header is not included here.
- Tables defined here under their asm names (checked against the ROM by the gate): ov01_02208B64 (VecFx32 {1, 1, 1} in fx32),
  ov01_02208B70, ov01_02208B80, ov01_02208B90 (int[4] lookup tables). ov01_022074A8 and ov01_02207318 live in the sprite data and are
  only declared.
- Layout facts for the field model manager (the object sub_0205F1A0 returns): +0x18 and +0x1C ints, +0xE0 billboard list,
  +0xF0 GF_3DGfxRawResMan *, +0xF8 and +0xFC the two resource heaps, +0x100 the load queue, +0x104 the mmodel narc. The load queue:
  +0 s16 capacity, +2 s16 per-frame limit, +4 s16 loaded this frame, +6 u16 busy flag, +0xC array of 0x10-byte pending loads
  (file id, gfx id, flag, resource manager or NULL), +0x10 array of 0xC-byte texture uploads (done flag, gfx id, resource manager).
