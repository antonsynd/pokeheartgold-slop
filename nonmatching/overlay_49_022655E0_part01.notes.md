# overlay_49_022655E0 part 1 (ov49_022655E0 .. ov49_02265C98)

Failing, not resolved:

- ov49_02265698: the model pointer computed by the inlined NNS_G3dGetMdlByIdx(set, 0) differs from the
  original (first failure: trial 134, the NNS_G3dMdlSetMdlEmiAll call for element 11). The inline logic
  matches the asm line by line (integer-arithmetic variant gives the same result). Not found after 3 attempts.
- ov49_02265980: fails only when idx >= 0x12 (the GF_AssertFail path). The original passes the caller's r3
  left over from GF_AssertFail as the 4th argument of sub_020181B0; the decomp passes param3. Not expressible in C.

Things reproduced that the gate needs:

- Calls through the tables in ov49_02265890 and ov49_022658E4 leave r2 = the function pointer and r3 = idx << 2
  in the original. The C calls the table entry through a four-argument pointer to match that.
- Inlined SDK code kept inline: FX_SinIdx/FX_Mul (as 64-bit _ll_mul plus 0x800 >> 12), NNS_G3dGetMdlByIdx(set, 0).
- memset tail call in ov49_02265948 is a plain memset(elem, 0, 0xD10).
- Work struct (UnkStruct_ov49p1_Work) and element struct (0xD10 bytes) use the Platinum ov70 layout offsets
  (unk_10550 at 0x10550, unk_106DC at 0x106DC, unk_1081C at 0x1081C; element unk_87C at 0x87C).
