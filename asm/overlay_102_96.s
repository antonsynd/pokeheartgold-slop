	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBB2C
	.public ov102_021EC410

	.text

	thumb_func_start ov102_021EBB2C
ov102_021EBB2C: ; 0x021EBB2C
	push {r3, lr}
	mov r2, #0
	mov r1, #0x10
	add r3, r2, #0
	str r1, [sp]
	add r0, #0x1c
	mov r1, #2
	sub r3, #0xa
	bl ov102_021EC410
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBB2C

