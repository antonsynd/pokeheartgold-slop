# overlay_85 part 06

All 30 functions (ov85_021E834C to ov85_021E87F0) are translations of Platinum twins (overlay109, ov109_021D0D80.c). 29 pass check.py with 2000 trials; ov85_021E83E0 passes the first 1757 trials and fails trial 1758 for a reason in the sandbox, not in the C:

- ov85_021E83E0: in trial 1758 the first argument is 0x021E7798, so `memset(arg + 0xC4C, 0, 0x50)` writes zeros over 0x021E83E4..0x021E8434, which is this function's own code and literal pool in the overlay image. The original then loads its constants (`ldr r1, =0xDC4`, `ldr r0, =ov85_021E83C0`) from the zeroed words and stores the task to a different address, so its call count differs. Clang's code has its constants elsewhere. A real object is a heap allocation and can never overlap the overlay's code. The same C passes `--trials 1750` with 0 inconclusive.
- ov85_021E84EC: the second argument is declared `BOOL`. The asm indexes a two-word stack array `{0, 8}` (copied from the literal pool at ov85_021EA4F0 + 0x1C) with it, stores 0 or 8 as the starting fade value, and `ov85_021E84A4` treats 1 as "fade out". Both callers (ov85_021E5F84 and ov85_021E61C8) pass the constants 1 and 0. With an `int` parameter the gate draws values far outside the array, reads stack memory at different addresses on the two sides and reports "memory differs"; the Platinum twin has `int`.

Layout used (offsets from the main object, all confirmed against the asm):
- 0x08 `int` frame counter (ov85_021E8570), 0x20 `u32` mask, 0x24 `Party *`.
- 0x2C: a 0x80 byte sub-object: 0x00 `u32` own index, 0x04 `int` count, 0x08 `u32`, 0x10 `int`, 0x14 `int` flag, 0x18 `int[5]`, 0x2C four `u16`, 0x34 eight `u16`, 0x44 five `{u16, u16}` entries.
- 0xAC `u8[0x20]`, 0xCC and 0xD0 pointers to external structs (0xCC: `+4` and `+8` `int`; 0xD0: `+0x40` `u16`, `+0x42` `u16`, `+0x46` `s16`), 0xD4 a sub-object whose `fx32` at +0x3C (0x110) is the angle offset used by ov85_021E8764.
- 0x2D0: array of 0xB0 byte entries (`+0` `int`, `+0xC` `int`, `+0x50` a `VecFx32`); 0xC44 `u16 x2`; 0xC4C five 0x10 byte task records `{int state, int, int, entry *}`; 0xD80 `NARC *`; 0xDC4 `SysTask *`.
- `_021EAA80` (the 16 entry bounce table) is defined in the C; `ov85_021EA758` (six `{count, u16 pair *}` entries) is declared extern.
- ov85_021E8720 reads a `s16` that is widened to `u32` before the shift loop, so a negative value counts 32 bits, as in the asm.
- sub_02097018 is declared locally as returning `Party *`.
