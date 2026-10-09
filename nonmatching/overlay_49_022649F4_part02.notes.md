# overlay_49_022649F4 part 2 (ov49_022652E8 .. ov49_02265434)

Passing: ov49_0226535C, ov49_02265378, ov49_02265398, ov49_022653C0, ov49_022653F0, ov49_0226540C,
ov49_02265434.

## Failing: ov49_022652E8 (check.py limit, not a known difference)

The function allocates 0x1082C bytes with Heap_Alloc, `memset`s them and then stores four fields and keeps a
NARC across several calls. check.py's `memset` helper writes up to 0x10000 bytes, and the write log holds only
MAX_WRITES = 65536 distinct addresses. Once memset has filled it, every later write to a new address is silently
dropped. That makes the result depend on how many distinct stack bytes were written before the memset:

- The original writes 32 (six pushed registers plus two spills). clang -O0 writes 36 (push, four parameter
  spills, `work`, a spilled copy of the 0x1082C constant and later the `narc` slot). The `narc` slot is first
  written after the memset and is dropped, so ov49_02265698 receives a stale value (first failure: the call
  argument differs).
- Initialising `narc = NULL` before the memset records the slot but adds 4 more pre-memset bytes, so the log
  runs out 4 bytes earlier in the memset range and the last bytes of the block differ (memory differs at
  work + 0xFFDC..).

I could not get both the slot and the count right with plain C (the constant spill comes from clang -O0
reusing one materialised 0x1082C for Heap_Alloc and memset), so the plain version is kept.

## Tool bug found on the way

check.py decides whether to compare the high word of the return value with `re.search(r"64|long long", returns)`
on the return type text. A pointer-to-struct return type whose name contains "64" (the natural
UnkStruct_ov49_022649F4 does) is taken as a 64-bit return and fails with "the high word of the return value
differs". The struct is therefore called UnkOv49_Work here.

## Structure

- UnkOv49_Work is 0x1082C bytes: four words (owner, system pointer used by ov49_02258D70/ov49_02258DAC, two
  ints), 20 elements of 0xD10 bytes at 0x10 and an NNSFndAllocator at 0x1081C. ov49_022652E8 loads NARC 209.
- UnkOv49_Lerp (0x28 bytes) is a three-axis fixed point interpolator: ov49_0226540C fills in frame count,
  current x/y/z (+4, +8, +C), deltas (+0x10, +0x18, +0x20) and origins (+0x14, +0x1C, +0x24);
  ov49_02265434 advances it to the given frame (clamped to the total, returning TRUE when the end is reached)
  with FX32_CONST/FX_Mul/FX_Div on the int frame numbers.
