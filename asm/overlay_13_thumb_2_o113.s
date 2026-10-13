	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02224718
	.extern ov13_02225358

	.text

	.text
	thumb_func_start ov13_02224718
ov13_02224718: ; 0x02224718
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r3, #0
	add r6, r0, #0
	add r0, r7, #0
	sub r0, #8
	str r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r2, #0
	mov r5, #0
	strb r5, [r1]
	lsr r0, r0, #0x10
	strb r5, [r1, #1]
	asr r2, r0, #8
	strb r5, [r1, #2]
	lsl r2, r2, #0x18
	strb r5, [r1, #3]
	lsr r3, r2, #0x18
	lsl r2, r0, #8
	mov r0, #0xff
	strb r5, [r1, #4]
	lsl r0, r0, #8
	strb r5, [r1, #5]
	and r0, r2
	strb r5, [r1, #6]
	orr r0, r3
	strb r5, [r1, #7]
	ldr r3, [sp, #0x20]
	add r4, r6, #0
	strh r0, [r1]
	cmp r3, #0
	beq _02224768
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #6
	add r2, r7, #0
	bl ov13_02225358
	add r7, #8
	b _02224770
_02224768:
	add r0, r6, #6
	add r2, r7, #0
	bl memcpy
_02224770:
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	orr r1, r2
	strh r1, [r6]
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r0, r1
	strh r0, [r6, #2]
	add r0, r4, #6
	add r4, r0, r7
	add r1, r6, #0
	cmp r6, r4
	bhs _022247BC
_022247B2:
	ldrb r0, [r1]
	add r1, r1, #1
	add r5, r5, r0
	cmp r1, r4
	blo _022247B2
_022247BC:
	lsl r0, r5, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	add r0, r4, #2
	sub r0, r0, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02224718

