	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_022655E0

    .text

	.text
	thumb_func_start ov49_022655E0
ov49_022655E0: ; 0x022655E0
	push {r3, r4}
	ldr r4, [r0, #4]
	str r4, [r1]
	ldr r1, [r0, #8]
	str r1, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov49_022655E0

