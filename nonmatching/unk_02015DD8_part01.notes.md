# unk_02015DD8 part 01

28 of 30 functions pass.

Not provable with the sandbox (C complete and believed correct): sub_02016044 and sub_02016050. Each is `mov r1, #0; stmia r0!, {r1}; ldr r3, =NNS_G2dInit...Proxy; bx r3`, a tail call. The lifter records `bl` as a call but treats `bx r3` to an address outside the function as leaving the unit, so the original side stops with "returned=0, calls=0" while the C (a `bl` followed by a return) finishes. They are `slot->unk0 = 0; NNS_G2dInitImageProxy(&slot->unk4)` and the same with `NNS_G2dInitImagePaletteProxy`.

Layout found (no header covers it, so local structs are defined in the file):
- manager (0x18 bytes): entries (0x40 each) at 0 with count at 4, image slots (0x28 each: u32 tex key + NNSG2dImageProxy) at 8 with count at 0xC, palette slots (0x18 each: u32 key + NNSG2dImagePaletteProxy) at 0x10 with count at 0x14.
- entry (0x40 bytes, initialised by sub_02016024: zero, +0x3E = 0x1F, +0x3C = 0x7FFF): u16 pairs at 0, 4 and 8, a flag at 0x20 that sub_02015E64 tests before drawing the entry with sub_020161CC.
- sub_02015E64 brackets the draw loop with a matrix push (0x04000444) and pop of 1 (0x04000448).

Sandbox notes: two checks failed first because clang merged `ldr r1, [r2]; adds r2, #4` into `ldm r2!, {r1}`, which ignores a misaligned pointer where the original `ldr` rotates; computing the proxy pointer into a local first avoids the merge. Callees defined in the same file need a prototype above their first use, otherwise the check treats them as 4-argument calls and compares leftover registers.
