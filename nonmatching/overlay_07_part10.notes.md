# overlay_07 part 10

28 of the 30 functions pass check.py (2000 trials each): ov07_02221DC4 to ov07_02221EC4 except EEC, the F04 to 0222204C group, 0222207C to 022220FC, 02222180 to 022223CC.

Still failing:

- ov07_02221EEC (dispatcher: `ov07_02236444[idx](emitter, data)`, returns the callee's r0). FAIL on an out-of-table index (trial 3, idx 0x33): the original returns the callee's raw r0 while the C returns 0. Tried a local function pointer and a defined table of the nine entries; neither changed the result, so the difference is in what the call target resolves to for an index past the table. Given up.
- ov07_0222212C (RevolutionContext_InitWithStepSize). FAIL on memory at the caller's stack argument slot (`stepSizeX`, entry sp+0xC). When sx > ex the asm negates stepSizeX in place in the caller's frame; clang at -O0 copies stack parameters into the callee's own frame, so the write-back cannot be expressed in C. The rest matches. Given up.

Twins that were wrong for this part (matched by name order, asm decides):

- ov07_02221E24 uses table entry 0 (the twin's constants are entry 1's values, which ov07_02221E60 uses).
- ov07_02221E9C and ov07_02221EC4 are emitter callbacks (startBattler and endBattler at 0x24 and 0x28), not AllocMemory wrappers.
- ov07_02221EEC is a dispatcher taking (idx, emitter, data), not the ApplyEndBattlerTarget callback.
- ov07_02222004 and ov07_0222202C compare the result of ov07_0223192C with 3/4 (not BattleAnimUtil_GetBattlerSide).
- ov07_02221E60 has no twin; it uses table entry 1.

Shared data and types:

- `ov07_02236414` is an array of CameraAngle (8 bytes each, the last halfword unused); entries 0, 1, 2 and 5 are read here.
- `ov07_02236444` is the table of nine emitter callback function pointers; declared extern.
- `ov07_02236468` is `s16 [2][6][2]` (x, y per battler type; row stride 0x18); declared extern as the struct array, so the y table `ov07_0223646A` is not referenced separately.
- GenericEmitterCallbackData is local: battleAnimSys at 0x0, particleSys at 0x4, startBattler at 0x24, endBattler at 0x28.
- XYTransformContext is local: x and y (s16) at 0 and 2, data[7] (s32) at 4. Lerp indices are steps, step size x and y, cur x and y (data 0 to 4); revolution indices are steps, cur x, radius x, cur y, radius y, step size x and y (data 0 to 6).
- ov07_02222644, ov07_02231D70, ov07_0223192C, ov07_02231924, ov07_0221BFC0, ov07_0221FAB0 are declared with the prototypes the asm implies.
- `_s32_div_f` and `FX_Modf` are declared locally; the fork's headers do not declare them.
- The 0x3FFF and 0xBFFF arguments in ov07_02222338 are the literal values in the asm (the Platinum twin's DEG_TO_IDX constants are not used).
