	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"
	.public ov41_02249B44

    .text

	.text
	thumb_func_start ov41_02249B44
ov41_02249B44: ; 0x02249B44
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #3
	bge _02249B5C
	ldr r0, [r0]
	bl ov41_02245FA8
	add sp, #8
	pop {r4, r5, r6, pc}
_02249B5C:
	ldr r6, [r0]
	add r0, r6, #0
	bl ov41_02249780
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_022497A0
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	ldr r0, [r5]
	sub r0, r0, r2
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r4]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_02249B44

