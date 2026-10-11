	.include "asm/macros.inc"
	.include "overlay_41_02247828.inc"
	.include "global.inc"
	.public ov41_02248120

    .text

	.text
	thumb_func_start ov41_02248120
ov41_02248120: ; 0x02248120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	neg r4, r2
	neg r7, r1
	add r0, r5, #4
	add r1, r7, #0
	add r2, r4, #0
	add r6, r3, #0
	bl ov41_02249BE8
	ldr r2, [sp, #0x18]
	add r0, r5, #4
	add r1, r6, #0
	bl ov41_02249BE8
	add r0, r5, #0
	add r0, #0x14
	add r1, r7, #0
	add r2, r4, #0
	bl ov41_02249BE8
	add r5, #0x14
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov41_02249BE8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248120

