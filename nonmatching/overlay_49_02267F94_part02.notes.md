# overlay_49_02267F94 part 2 (ov49_02268ADC .. ov49_02268D0C)

Passing: ov49_02268ADC, ov49_02268B04, ov49_02268B08, ov49_02268B0C, ov49_02268C2C, ov49_02268C74,
ov49_02268CEC, ov49_02268D0C.

## Failing, both for check.py reasons

- ov49_02268CAC, ov49_02268CBC, ov49_02268CCC, ov49_02268CDC are tail calls
  (`ldr r3, =ov49_0225E82C; ... bx r3`). The lifted original leaves the unit through the register jump and
  never reaches the return sentinel, so every trial reads "only one side returned" (calls=0 returned=0 against
  calls=1 returned=1). The same shape in overlay_81 (targets in the main binary and in its own overlay) does
  verify, so this is not every tail call; the lifter reports one instruction "left to the interpreter" for these
  four, which the overlay_81 ones do not have. r0 on the original side is the work->unk4 that the C passes on; the other arguments
  are the constants in the asm: (unk4, 0, 0x1000) for CAC, CCC and CDC, (unk4, 1, 0x1000) for CBC.
- ov49_02268B90 passes 10 trials and then fails when the original loops until MAX_CALLS. The count it loops on
  is read from a local struct that ov49_02268D0C is supposed to fill in, but the mocked callee never writes
  through its pointer argument, so both sides read the sandbox's address-seeded random fill from their own stack
  slot. The original's slot is at STACK_TOP - 24, clang -O0's is elsewhere, so the loop bounds disagree. Same
  cause as the out-parameter reads in unk_0205FD20 part 3.

## Data

All tables stay in the asm .rodata and are declared extern: the function pointer tables ov49_0226A84C and
ov49_0226A87C (a local copy would put blob addresses in the calls, which the sandbox then runs instead of
recording them), ov49_0226A83C (pairs of u8, labelled ov49_0226A83C/ov49_0226A83D in the asm),
ov49_0226A864 (u32 frames, fx32 value) x3, ov49_0226A894 (u32 pairs) and ov49_0226A8B4 (17 u8), and the small
byte lists ov49_0226A81C..ov49_0226A834 whose addresses ov49_02268D0C stores. The tables are indexed with
unvalidated values in places, so a local copy would also read different memory out of range.

## Structure

The work struct has a handle at +4 (first argument of ov49_0225E85C and friends), a u8 state at +8 and a u32
counter at +0xC. ov49_02268C74 clears the counter with four strb in the asm; a plain `work->unkC = 0` writes
the same bytes. The state numbers dispatch through ov49_0226A84C (per frame update, entries 0 and 1 are the same
empty function ov49_02268B04) and ov49_0226A87C (state entry). PlaySE(1460) is SEQ_SE_PL_140_2.
