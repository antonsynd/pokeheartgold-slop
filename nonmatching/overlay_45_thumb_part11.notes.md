# overlay_45_thumb part 11

All 30 functions PASS (2000 of 2000 trials each); all 30 were seeded by Platinum twins (overlay066 ov66_02231428.c and ov66_0223177C.c).

- The work struct returned by ov45_0222D860 is 0x230 bytes: a word at +0, a flag at +4 (set by ov45_0222D8BC, returned by ov45_0222DCF4), the 0x54-byte slot table at +8 and the 0x1D4-byte entry list at +0x5C (same layout as part 12).
- ov45_0222D7CC differs from the twin: when the error code is 11 or the argument is 25 it returns 11 if the second argument is 2, else 14; for 26 it returns 13; otherwise the code, or 11 if negative.
- Tables defined here and checked against the ROM: `ov45_02254BB4` (18 bytes), `ov45_02254BC8` (3 bytes {11, 10, 9}; the third byte shares its address with the start of the next label `ov45_02254BCA`) and `ov45_02254BDC` (three u32: 4, 3, 2).
- ov45_0222D740 uses the SDK inlines NNS_G3dGetMdlByIdx and NNS_G3dMdlUseGlb* (the asm has them expanded; flags 0x40, 0x80, 0x200, 0x400).
- ov45_0222D724, D79C, D940 and following take u8 / u16 arguments as in the twin; check.py shapes arguments from the declared types.
