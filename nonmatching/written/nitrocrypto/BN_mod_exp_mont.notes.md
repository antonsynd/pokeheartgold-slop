The standard check only reaches the path where the exponent-bits buffer is empty: BN_gen_exp_bits is a
recorded stub that never writes through its out-pointer, so wp stays NULL and every wp[] read is 0
(window table size 0, single copy, no squaring loop). Mutations of the loop bodies (table stride,
b0 >> 1 index) pass it. To check the loops, a private copy of the sandbox (outside the fork) made the
BN_gen_exp_bits stub write a generated exponent stream (header, (value,count) pairs, escaped long
counts, (0,0)/(1,0) terminators) at a fixed address; with that, this C agrees on 1999 trials and
mutations of the table stride and the b0 >> 1 index are caught. Escaped long counts are exercised but
counts that large only change the number of bn_sqr_normal calls beyond the check's 512-call record.
The ARM asm stores locals on the stack at sp+0x34 (wp), +0x1c (callback), +0x20 (callback count).

PASS-RESTRICTED: The stubbed BN_gen_exp_bits never writes its out-pointer, so the check never reaches the exponentiation loops.
