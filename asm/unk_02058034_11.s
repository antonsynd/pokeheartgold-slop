	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020582F4
	.extern _021D41C8

	.text
	thumb_func_start sub_020582F4
sub_020582F4: ; 0x020582F4
	ldr r2, _02058300 ; =_021D41C8
	ldr r3, [r2]
	str r0, [r3, #0x30]
	ldr r0, [r2]
	strh r1, [r0, #0x38]
	bx lr
	.balign 4, 0
_02058300: .word _021D41C8
	thumb_func_end sub_020582F4

