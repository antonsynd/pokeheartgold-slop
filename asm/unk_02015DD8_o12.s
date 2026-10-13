	.include "asm/macros.inc"
	.include "unk_02015DD8.inc"
	.include "global.inc"
	.public sub_02015FCC

	.text

	.text
	thumb_func_start sub_02015FCC
sub_02015FCC: ; 0x02015FCC
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FCC

