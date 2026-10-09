# unk_0205FD20 part 3 (sub_02061200, sub_0206121C, sub_02061248)

- sub_02061200 passes.
- sub_0206121C and sub_02061248 fail only because of how check.py treats an uninitialised out-parameter.
  Both pass `&selector` (a u8 on the stack) as the fifth argument of sub_02054940 and then read it back. The
  mocked callee never writes through the pointer, so the byte read back is the sandbox's address-seeded random
  fill, which depends on the absolute stack address. The original keeps it at STACK_TOP - 12 (sub_0206121C) and
  its frame is 8 bytes; clang -O0 spills every parameter and the return value first, so `selector` sits at
  STACK_TOP - 24 and the two sides read different fill. With the read pointed at the original's address
  (`(u8 *)0x0AFFFFF4`, the slot the -O0 frame leaves unwritten) sub_0206121C passes 500 of 500 trials, so the
  logic and the call arguments agree. sub_02061248 has its slot at STACK_TOP - 20, which the -O0 frame
  overwrites, so the same experiment could not be repeated there; the C is the same shape as sub_0206121C with the
  extra `selector == 2 && a2 == 0` exit from the asm.
- sub_0206121C takes a FieldSystem * and returns BOOL (unk_0205FD20.h says `void sub_0206121C(TaskManager *, VecFx32 *)`);
  it replaces pos->y with the height from sub_02054940 when the selector is non-zero. sub_02061248 additionally
  refuses selector 2 unless its third argument is non-zero. sub_02061200 returns a facing direction (2 west,
  3 east, 0 north, 1 south) from the comparison of two coordinate pairs.
