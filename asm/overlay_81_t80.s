	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224218C
	.extern ov81_02242D88
	.extern ov81_02242DCC
	.extern ov81_02242F30

	.text

	.text
	thumb_func_start ov81_0224218C
ov81_0224218C: ; 0x0224218C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0xea
	add r5, r0, #0
	mov r4, #3
	lsl r7, r7, #2
_02242198:
	sub r0, r4, #3
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r5, #0x11]
	cmp r1, r0
	bhs _022421F8
	lsl r0, r1, #1
	add r1, r5, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F30
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #4]
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r2, #0
	bl ov81_02242DCC
	ldr r0, [r6, r7]
	mov r1, #1
	bl ov81_02242D88
	b _02242208
_022421F8:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242D88
_02242208:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _02242198
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_0224218C

