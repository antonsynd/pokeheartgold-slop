	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02058024
	.extern _021D41C4

	.text
	thumb_func_start sub_02058024
sub_02058024: ; 0x02058024
	ldr r0, _02058030 ; =_021D41C4
	mov r1, #8
	ldr r0, [r0]
	add r0, #0xf0
	strb r1, [r0]
	bx lr
	.balign 4, 0
_02058030: .word _021D41C4
	thumb_func_end sub_02058024
