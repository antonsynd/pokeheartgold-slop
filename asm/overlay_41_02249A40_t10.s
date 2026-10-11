	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"
	.public ov41_02249BE8
	.extern ov41_02249AF4
	.extern ov41_02249B44

    .text

	.text
	thumb_func_start ov41_02249BE8
ov41_02249BE8: ; 0x02249BE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	add r7, r2, #0
	cmp r4, r5
	beq _02249C1A
_02249BF8:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249B44
	ldr r0, [sp, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [sp, #4]
	add r2, r0, r7
	str r2, [sp]
	add r0, r4, #0
	bl ov41_02249AF4
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02249BF8
_02249C1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02249BE8

