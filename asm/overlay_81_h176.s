	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243298
	.extern ov81_022413F4
	.extern ov81_0224141C

	.text

	.text
	thumb_func_start ov81_02243298
ov81_02243298: ; 0x02243298
	push {r3, lr}
	cmp r1, #6
	blt _022432A4
	bl ov81_0224141C
	pop {r3, pc}
_022432A4:
	bl ov81_022413F4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov81_02243298

