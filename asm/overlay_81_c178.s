	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224335C
	.extern ov81_0224141C
	.extern ov81_02241650

	.text

	.text
	thumb_func_start ov81_0224335C
ov81_0224335C: ; 0x0224335C
	push {r3, lr}
	cmp r1, #4
	blt _02243368
	bl ov81_0224141C
	pop {r3, pc}
_02243368:
	bl ov81_02241650
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov81_0224335C

