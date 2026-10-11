	.include "asm/macros.inc"
	.include "unk_02015DD8.inc"
	.include "global.inc"
	.public sub_02015FE8

	.text

	.text
	thumb_func_start sub_02015FE8
sub_02015FE8: ; 0x02015FE8
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FE8

