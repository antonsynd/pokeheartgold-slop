	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248D0C
	.public ov71_02248D80
	.extern ov71_02248BBC

	.text

	.text
	thumb_func_start ov71_02248D0C
ov71_02248D0C: ; 0x02248D0C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x17
	add r6, r0, #0
	mov r0, #0x39
	lsl r1, r1, #4
	bl Heap_Alloc
	add r4, r0, #0
	beq _02248D78
	str r6, [r4]
	add r6, #0xc0
	mov r0, #0x55
	ldr r1, [r6]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	mov r1, #2
	bl Bg_GetYpos
	lsl r1, r0, #0xc
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl Bg_GetYpos
	mov r1, #0x57
	lsl r0, r0, #0xc
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	str r5, [r4, r0]
	add r1, #0x10
	str r2, [r4, r1]
	ldr r0, _02248D7C ; =ov71_02248D80
	add r1, r4, #0
	bl SysTask_CreateOnVBlankQueue
	str r0, [r5]
	cmp r0, #0
	bne _02248D78
	add r0, r4, #0
	bl Heap_Free
_02248D78:
	pop {r4, r5, r6, pc}
	nop
_02248D7C: .word ov71_02248D80
	thumb_func_end ov71_02248D0C

	thumb_func_start ov71_02248D80
ov71_02248D80: ; 0x02248D80
	push {r4, r5, r6, lr}
	mov r3, #0x59
	add r4, r1, #0
	lsl r3, r3, #2
	mov r0, #2
	ldr r1, [r4, r3]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _02248E02
	sub r0, r3, #4
	ldr r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x44
	add r1, r1, r0
	sub r0, r3, #4
	str r1, [r4, r0]
	add r5, r3, #0
	ldr r1, [r4, r3]
	ldr r0, [r4, r0]
	sub r5, #0xc
	add r0, r1, r0
	str r0, [r4, r3]
	add r0, r3, #0
	sub r0, #0x10
	ldr r5, [r4, r5]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	sub r3, r5, r3
	mov r1, #2
	mov r2, #3
	asr r3, r3, #0xc
	bl BgSetPosTextAndCommit
	mov r5, #0x55
	lsl r5, r5, #2
	add r3, r5, #0
	ldr r0, [r4, r5]
	add r3, #8
	add r5, #0x10
	ldr r6, [r4, r3]
	ldr r3, [r4, r5]
	mov r1, #6
	sub r3, r6, r3
	mov r2, #3
	asr r3, r3, #0xc
	bl BgSetPosTextAndCommit
	mov r1, #0x59
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x12
	cmp r2, r0
	blt _02248E02
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02248E02
	add r1, #8
	ldr r0, [r4]
	add r1, r4, r1
	add r2, r4, #4
	bl ov71_02248BBC
_02248E02:
	pop {r4, r5, r6, pc}
	thumb_func_end ov71_02248D80

