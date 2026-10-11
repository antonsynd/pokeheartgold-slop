	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02261208
	.extern ov92_02263E04
	.extern ov92_02263E3C

	.text

	.text
	thumb_func_start ov92_02261208
ov92_02261208: ; 0x02261208
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, _02261354 ; =ov92_02263E04
	add r3, sp, #0x20
	ldrh r1, [r0]
	add r6, sp, #0x14
	ldr r2, _02261358 ; =ov92_02263E3C
	strh r1, [r6, #4]
	ldrh r1, [r0, #2]
	add r4, r3, #0
	add r7, sp, #0x18
	strh r1, [r6, #6]
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #6]
	strh r1, [r6, #8]
	strh r0, [r6, #0xa]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0226123A
	b _0226134E
_0226123A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0226124A
	cmp r0, #1
	beq _022612BA
	cmp r0, #2
	beq _022612D2
	b _02261332
_0226124A:
	mov r0, #0
	str r0, [sp, #0x10]
	str r5, [sp, #8]
_02261250:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02261284
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	mov r0, #0
	ldrsh r1, [r6, r0]
	ldrsh r0, [r7, r0]
	cmp r1, r0
	ble _02261284
	sub r0, r1, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp, #0xc]
	bl ManagedSprite_SetPositionXY
	mov r0, #0
	str r0, [r4]
_02261284:
	ldr r0, [sp, #8]
	add r7, r7, #2
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02261250
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226133A
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226133A
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226133A
	beq _0226133A
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0226133A
_022612BA:
	ldr r0, [r5, #0x50]
	cmp r0, #1
	bne _0226133A
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
	cmp r0, #0xf
	blt _0226133A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0226133A
_022612D2:
	mov r0, #0
	str r0, [sp, #4]
	add r7, r5, #0
_022612D8:
	ldr r0, [r7, #8]
	str r0, [sp]
	cmp r0, #0
	beq _02261308
	add r1, sp, #0x14
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	mov r0, #0
	ldrsh r0, [r6, r0]
	cmp r0, #0xe0
	bge _02261308
	add r0, r0, #6
	strh r0, [r6]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [sp]
	bl ManagedSprite_SetPositionXY
	mov r0, #0
	str r0, [r4]
_02261308:
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _022612D8
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0226133A
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0226133A
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0226133A
	beq _0226133A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0226133A
_02261332:
	mov r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #4]
	str r0, [r5]
_0226133A:
	mov r4, #0
_0226133C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02261346
	bl ManagedSprite_TickTwoFrames
_02261346:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226133C
_0226134E:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261354: .word ov92_02263E04
_02261358: .word ov92_02263E3C
	thumb_func_end ov92_02261208

