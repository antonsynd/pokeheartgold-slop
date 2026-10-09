# overlay_85 part 01

30 functions (ov85_021E5900 to ov85_021E5F9C). 28 pass with check.py (ov85_021E5EB4 and ov85_021E5F9C have some inconclusive trials and no failures; ov85_021E5AAC passes with 31 inconclusive after its indirect call stores the target in a local first). Two do not pass:

- ov85_021E5900: passes the call sequence up to trial 256, then differs on the first argument of `Main_SetVBlankIntrCB(ov85_021E6764, v0)`. The gate gives the decomp NULL for the address of ov85_021E6764 (defined in another part of this overlay), so the callback address is not recovered. Not a C issue; needs ov85_021E6764 to resolve.
- ov85_021E5E30: memory differs at trial 1 on an address that looks like `ov85_021E8610`'s returned entry plus 0x10 (the remainder store). Replacing the `_s32_div_f` remainder with a 64-bit return (the struct return was a hidden pointer under AAPCS) did not change it. Not resolved; the call count is 2 on both sides.

Layout notes (from the asm, which differs from Platinum's offsets in places):
- The fx32 written at +0x114 by ov85_021E5900 and ov85_021E5DAC (the `unk_D4.unk_40` slot) is the same field overlay_85_part06.c calls `unk110`; that file reads 0x110, so one of the two may be off by 4. Worth checking when part 06 is revisited.
- `ov85_021E5DAC` stores the name pointers at main+0x84 + 4*i and main+0x98 + 4*i, which overlap the 0x28-byte `unk58` array, as the asm does.
- The argument object (CC) has the main object at +0x34, the D0 object at +0x30 and the save data at +0x1C.
- `_s32_div_f` is declared as returning `u64` (remainder in the high word), since a struct return would use a hidden pointer.
