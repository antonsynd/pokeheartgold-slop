	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037190
	.extern _021D4140

	.text
	thumb_func_start sub_02037190
sub_02037190: ; 0x02037190
	ldr r0, _0203719C ; =_021D4140
	ldr r3, _020371A0 ; =sub_02033BE4
	ldr r1, [r0, #8]
	ldr r0, _020371A4 ; =0x00000498
	add r0, r1, r0
	bx r3
	.balign 4, 0
_0203719C: .word _021D4140
_020371A0: .word sub_02033BE4
_020371A4: .word 0x00000498
	thumb_func_end sub_02037190

