	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020588CC
	.extern _021D41C8

	.text
	thumb_func_start sub_020588CC
sub_020588CC: ; 0x020588CC
	ldr r1, _020588D8 ; =_021D41C8
	mov r2, #1
	ldr r1, [r1]
	add r0, r1, r0
	strb r2, [r0, #0x10]
	bx lr
	.balign 4, 0
_020588D8: .word _021D41C8
	thumb_func_end sub_020588CC

