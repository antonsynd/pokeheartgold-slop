	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F314
	.public ov81_0223F320

	.text

	thumb_func_start ov81_0223F314
ov81_0223F314: ; 0x0223F314
	push {r3, lr}
	bl ov81_0223F320
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov81_0223F314

