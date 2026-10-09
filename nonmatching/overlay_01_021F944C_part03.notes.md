# overlay_01_021F944C part 3

- `UnkStruct_Ov01_021F944C` is a local view of the structure `sub_0205F1A0(MapObjectManager *)` returns. Only the fields these functions touch are named: ints at 0x04..0x14, int arrays at 0x20, 0x40 and 0x60 (8, 8 and 32 entries, the accessors return their addresses), pointers at 0xE0, 0xE8, 0xEC, 0xF0 (a `GF_3DGfxRawResMan *`), 0xF8 and 0xFC (the two resource heaps handed to `ov01_021FC588`).
- `ov01_021FA01C` and `ov01_021FA094` differ from the Platinum twins: no berry patch handling, and the model type test reads the low 4 bits of the `u16` that `ov01_021F9318(object)` points to. `ov01_021FA094` tests `r4` against 0xFFFF before it has ever been assigned in the first iteration (the caller's register); the C starts it at 0, and it carries the value of the previous iteration afterwards, as the asm does.
- `ov01_021FA108` uses `ov01_021FA28C` for the first id and `ov01_021FA2A0` for the second (the twin guessed `ov01_021FA298` for the second).
- The Platinum twin offered for `ov01_021FA1C8` and `ov01_021FA1D0` was a getter and an unrelated function; both are plain accessors at +0xE0 here.
- `include/overlay_01_021F944C.h` is included; its prototypes for `ov01_021F9FB0`, `ov01_021FA108` and `ov01_021FA1D0` agree with the asm.
