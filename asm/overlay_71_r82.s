	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248B54
	.public ov71_02248B60
	.public ov71_02248BBC
	.public ov71_02248C24

	.text

	.text
	thumb_func_start ov71_02248B54
ov71_02248B54: ; 0x02248B54
	mov r1, #0x5a
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov71_02248B54

	thumb_func_start ov71_02248B60
ov71_02248B60: ; 0x02248B60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x5a
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02248BB4
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xc0
	mov r3, #0xff
	ldr r0, [r0]
	mov r1, #2
	mov r2, #3
	mvn r3, r3
	bl BgSetPosTextAndCommit
	add r4, #0xc0
	ldr r0, [r4]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #7
	mov r1, #1
	bl ToggleBgLayer
	ldr r2, _02248BB8 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl SysTask_Destroy
_02248BB4:
	pop {r3, r4, r5, pc}
	nop
_02248BB8: .word 0x04000304
	thumb_func_end ov71_02248B60

	thumb_func_start ov71_02248BBC
ov71_02248BBC: ; 0x02248BBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r5, [r2, #4]
	add r0, r2, #0
	str r1, [r0]
	mov r1, #0x52
	mov r7, #0
	lsl r1, r1, #2
	str r7, [r0, r1]
	add r1, r1, #4
	str r2, [sp]
	str r7, [r0, r1]
	add r4, r2, #0
	add r6, r2, #0
_02248BD8:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0x1c]
	bl Sprite_GetMatrixPtr
	add r2, r6, #0
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r7, r7, #1
	str r0, [r2]
	add r4, r4, #4
	add r5, #8
	add r6, #0xc
	cmp r7, #0x14
	blt _02248BD8
	ldr r0, _02248C20 ; =ov71_02248C24
	ldr r1, [sp]
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, [sp]
	ldr r1, [r1]
	str r0, [r1]
	ldr r0, [sp]
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _02248C1C
	ldr r0, [sp]
	bl Heap_Free
_02248C1C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248C20: .word ov71_02248C24
	thumb_func_end ov71_02248BBC

	thumb_func_start ov71_02248C24
ov71_02248C24: ; 0x02248C24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0xc
	ble _02248C58
	mov r0, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0x14
	bge _02248C58
	lsl r0, r0, #2
	mov r2, #1
	add r0, r5, r0
	str r2, [r0, #8]
	add r0, r1, #4
	ldr r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
_02248C58:
	mov r0, #0
	add r7, r5, #0
	str r0, [sp, #4]
	add r6, r5, #0
	str r5, [sp]
	add r4, r0, #0
	add r7, #0x58
_02248C66:
	mov r1, #0x21
	ldr r2, [r6, #0x5c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0x6a
	add r0, r6, #0
	lsl r1, r1, #0xe
	add r0, #0x5c
	str r2, [r6, #0x5c]
	cmp r2, r1
	blt _02248CA6
	mov r1, #0x71
	ldr r2, [r0]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	str r1, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02248CA6
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl Sprite_SetDrawFlag
_02248CA6:
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl Sprite_SetMatrix
	add r2, r6, #0
	add r2, #0x58
	add r3, sp, #8
	ldmia r2!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	mov r0, #0xe
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, ip
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl Sprite_SetMatrix
	ldr r0, [sp]
	add r6, #0xc
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r7, #0xc
	str r0, [sp, #4]
	cmp r0, #0x14
	blt _02248C66
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov71_02248C24

