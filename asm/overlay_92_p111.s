	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02261A18
	.extern ov92_022616D8
	.extern ov92_02261850
	.extern ov92_02263EA0
	.extern ov92_02263EA4
	.extern ov92_02263EA8
	.extern ov92_02263EC4

	.text

	.text
	thumb_func_start ov92_02261A18
ov92_02261A18: ; 0x02261A18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x56
	add r6, r1, #0
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r4, [r0]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02261A3C
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261A44
_02261A3C:
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, r6, r7, pc}
_02261A44:
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02261AD8
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02261A5C
	add r0, r6, #0
	bl ov92_022616D8
_02261A5C:
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _02261AF2
	cmp r4, #0
	beq _02261AF2
	cmp r4, #8
	bge _02261AF2
	add r2, r4, #0
	mov r0, #0x28
	mul r2, r0
	str r2, [sp]
	ldr r2, _02261B04 ; =ov92_02263EA0
	ldr r3, [sp]
	mov r7, #0
	ldr r3, [r2, r3]
	ldr r4, _02261B08 ; =ov92_02263EA4
	str r3, [r6, r1]
	add r3, r1, #4
	str r7, [r6, r3]
	ldr r3, [sp]
	lsl r0, r0, #3
	ldr r3, [r4, r3]
	add r5, r6, #0
	sub r3, r3, #1
	str r3, [r6, r0]
	ldr r3, _02261B0C ; =ov92_02263EA8
	ldr r0, [sp]
	ldr r3, [r3, r0]
	add r0, r1, #0
	sub r0, #0x20
	str r3, [r6, r0]
	add r0, r3, #5
	sub r1, #0x1c
	str r0, [r6, r1]
	ldr r0, [sp]
	add r4, r2, r0
_02261AA8:
	ldr r1, [r4, #0xc]
	ldr r0, [r5]
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverrideOffset
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldr r1, [r4, #0x18]
	bl ManagedSprite_SetPaletteOverrideOffset
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x50
	cmp r7, #2
	blt _02261AA8
	ldr r1, _02261B10 ; =ov92_02263EC4
	ldr r0, [sp]
	ldr r2, _02261B14 ; =0x00001001
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl SysTask_CreateOnMainQueue
	b _02261AF2
_02261AD8:
	bne _02261AF2
	add r0, r1, #0
	sub r0, #0x18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02261AF2
	sub r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _02261AF2
	add r0, r6, #0
	bl ov92_02261850
_02261AF2:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02261B00
	sub r1, r1, #1
	str r1, [r6, r0]
_02261B00:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261B04: .word ov92_02263EA0
_02261B08: .word ov92_02263EA4
_02261B0C: .word ov92_02263EA8
_02261B10: .word ov92_02263EC4
_02261B14: .word 0x00001001
	thumb_func_end ov92_02261A18

