# overlay_12_battle_controller_opponent part 08

All 6 functions pass.

- `include/pokepic.h` declares `Pokepic_StartAnim(Pokepic *)` with one parameter but `ov12_02261F38` passes a second argument (r1 = 1), as `src/unk_0208DE40.c` already notes. The C renames the header declaration with a `#define` around the includes and declares the two-parameter form itself, so the argument is part of what the check compares.
- `ov12_02261DC8` takes a local struct (`UnkStruct_Ov12_02261DC8`): a `ManagedSprite *` at 0xC and a flag bit in the u16 at 0x16 that guards creating the brightness-fade task. The caller also passes the sprite in r1, which the function ignores.
- `ov12_02261E40` is a SysTask callback over an 8-byte heap block (state, unused word): fade out, fade in, then free the block and destroy the task.
- `ov12_02261F38` has nine parameters; the last five are on the stack (narc, species, a6, a7, a8). `a7 == 2` selects the pan sign (+0x75 or -0x75).
