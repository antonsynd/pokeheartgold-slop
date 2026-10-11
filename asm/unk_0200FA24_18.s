	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FEB0
	.extern sub_02010014

	.text
	thumb_func_start sub_0200FEB0
sub_0200FEB0: ; 0x0200FEB0
	mov r3, #0
	ldr r1, _0200FEC8 ; =sub_02010014
	add r2, r3, #0
_0200FEB6:
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #0x10]
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #2
	blt _0200FEB6
	bx lr
	nop
_0200FEC8: .word sub_02010014
	thumb_func_end sub_0200FEB0

