	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02260870

	.text

	thumb_func_start ov92_02260870
ov92_02260870: ; 0x02260870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x14]
	ldr r0, [r5, #0x10]
	cmp r0, r2
	blt _02260880
	mov r4, #1
	b _02260888
_02260880:
	add r2, r0, #0
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r4, #0
_02260888:
	ldr r0, [r5, #0xc]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov92_02260870

