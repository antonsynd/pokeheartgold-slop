	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034870
	.extern _021D4130

	.text
	thumb_func_start sub_02034870
sub_02034870: ; 0x02034870
	add r1, r0, #0
	ldr r0, _0203487C ; =_021D4130
	ldr r3, _02034880 ; =sub_0203A378
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx r3
	.balign 4, 0
_0203487C: .word _021D4130
_02034880: .word sub_0203A378
	thumb_func_end sub_02034870

