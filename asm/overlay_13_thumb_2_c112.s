	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226C38

	.text

	.text
	thumb_func_start ov13_02226C38
ov13_02226C38: ; 0x02226C38
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r2, #0
	bls _02226C5E
_02226C40:
	add r6, r1, r7
	ldrb r3, [r6, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r6, #2]
	ldrb r6, [r6, #1]
	lsl r4, r3, #0x10
	ldrb r3, [r1, r7]
	lsl r6, r6, #8
	add r7, r7, #4
	orr r3, r6
	orr r3, r4
	orr r3, r5
	stmia r0!, {r3}
	cmp r7, r2
	blo _02226C40
_02226C5E:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov13_02226C38

