# overlay_45_thumb part 2

All 30 functions PASS (2000 of 2000 trials each); all 30 were seeded by Platinum twins (overlay066 ov66_0222DDF0.c).

- Offsets agree with the twin's UnkStruct_ov66_0222DFF8 except where noted. The plaza work struct used here is a local view: SaveData pointer at +0, a 0xB8-byte container at +0x108 whose profile starts at +0x128, a u16 at +0x1C4 (the 0x1C0 block passed to ov45_0222BD5C), a 0x10-byte state block at +0x1FC, opaque blocks at +0x3A0 (passed to ov45_0222BCA0/BCA8/BD24/BD2C) and +0x4BC (passed to ov45_0222CB74), four bytes at +0x3E0 (the twin says 0x3DF; the asm base is 0x3E0), an int at +0x50C and an int flag at +0x52C.
- State block at +0x1FC: bit 4 of byte 0, bytes 2 and 3, s16 at +6 and +0xA, bytes at +0xC and +0xD, low nibble of byte +0xF.
- Profile (at +0x128): s32 id at +0, name u16[8] at +8, bytes +0x41 and +0x43, byte array of 12 at +0x4C (24 means empty), s32 array of 12 at +0x58, two u16 at +0x88, words at +0x8C and +0x90.
- twin.py's renames are wrong in two places: ov45_0222A4A8 tail-calls ov45_0222BD24 (not BCB8), and ov45_0222A4D0 plays SEQ_GS_WIFIPARADE (0x481) or SEQ_GS_WIFIUNION (0x47F) in scene 21.
- ov45_0222A844 reads message file 777 of NARC_msgdata_msg (msg.naix is generated at build time, so the number is written out) and entry 64.
- ov45_0222A43C and ov45_0222A498 are tail calls to MIi_CpuClear32 / MI_CpuCopy8 (written as the MI_ inlines); ov45_0222A404, A414, A4A8, A4B8 and A548 are tail calls too.
- Signed versus unsigned asserts follow the asm: A5E8 (`< 15`), A704 (`< 24`), A770 (`< 18`) use signed compares, A450, A578, A72C, A7DC, A92C and A964 unsigned.
