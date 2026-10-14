	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02224694

	.text

	.text
	thumb_func_start ov13_02224694
ov13_02224694: ; 0x02224694
	push {r3, r4, r5, r6}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, r1
	blo _022246A4
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_022246A4:
	ldrh r5, [r0]
	asr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsl r1, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r1, r5
	orr r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r2]
	ldrh r6, [r0, #2]
	add r0, r0, #4
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r2, [r3]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	sub r1, r2, #4
	add r1, r0, r1
	str r1, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov13_02224694

