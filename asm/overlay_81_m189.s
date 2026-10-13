	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243444
	.extern ov81_0224141C
	.extern ov81_022416CC

	.text

	.text
	thumb_func_start ov81_02243444
ov81_02243444: ; 0x02243444
	push {r3, lr}
	cmp r1, #6
	blt _02243450
	bl ov81_0224141C
	pop {r3, pc}
_02243450:
	bl ov81_022416CC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov81_02243444

