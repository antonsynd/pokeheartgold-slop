	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057F18
	.extern _021D41C4

	.text
	thumb_func_start sub_02057F18
sub_02057F18: ; 0x02057F18
	ldr r1, _02057F24 ; =_021D41C4
	ldr r1, [r1]
	add r0, r1, r0
	add r0, #0xdc
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
_02057F24: .word _021D41C4
	thumb_func_end sub_02057F18

