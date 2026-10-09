# overlay_45_thumb part 18 (ov45_02230920 .. ov45_02230E28)

- 29 of 30 functions pass; all 30 started from Platinum twins (overlay066 ov66_022343A8.c, the Wi-Fi plaza avatar billboard code).
- ov45_02230ACC does not pass, but the C reads the same as the asm. The failing trial is the indirect call `ov45_02254F28[v0](arg0)` with
  an out-of-range `v0` (the stubbed ov42_02228188 returns a random word). The target is then not a known function, so check.py compares
  all four argument registers at the call, and the original has `v0 * 4` left in r2 (`lsl r2, r4, #2` for the table index) while clang
  -O0 has the constant 0x86 there (left from the store of unk_86). Everything else agrees (return, the other five calls with their
  arguments, memory). Eight forms of the call were compiled to find one that leaves the scaled index in r2 (locals for the table and the
  index, a pointer into the table, offset arithmetic); none does, because there is no second argument to keep the offset live, unlike
  ov45_0222CE2C in part 09.
- Bit-field layout of the avatar billboard state (UnkStruct_ov45_02230920, 0x90 bytes) read from the asm: byte 0 bits 0-3 (u8 unk_00_0, zero
  means inactive), bits 4-5 (unk_00_4, hidden), bits 6-7 (unk_00_6, visibility mode, 1 shows); byte 1 bit 0 (unk_01_0, animation active)
  and bits 1-7 (unk_01_1, animation kind 0..2); +2 and +3 animation counter and step; +4 pointer to the state object queried through
  ov42_02228188; +8 Sprite * (the billboard); +0xC the 0x78-byte UnkStruct_020181B0 (Easy3D object); +0x84 u8 state, +0x85 u8 anim
  number, +0x86 u16 last frame count, +0x88 fx32 saved frame.
- ov45_022309D0 takes its first argument without truncation to 16 bits (the asm uses r0 as is, only `arg1 + 1` is truncated), so the
  parameters are u32 here; its callers pass u16 values.
- ov45_022309E8 passes r1 to r3 through to ov49_02258830, so it has four parameters; it fills an UnkStruct_02018030 (resFile, mdlSet,
  model, tex) at +0 and stores the alpha in a word at +0x10 (ov45_02230A4C/A58). The model is found with the inline
  NNS_G3dGetMdlByIdx(mdlSet, 0).
- Tables defined here under their asm names (checked against the ROM by the gate): ov45_02254C34 (u8[4] frame order), ov45_02254C48
  (20 pairs of u16: id and value, searched by ov45_0223099C), ov45_02254F1C (3 animation updaters) and ov45_02254F28 (11 state
  updaters followed by a zero word).
