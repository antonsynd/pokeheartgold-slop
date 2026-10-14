	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02243C54
	.extern ov40_02244054

	.text

	.text
	thumb_func_start ov40_02243C54
ov40_02243C54: ; 0x02243C54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [sp]
	add r2, r0, #4
	ldr r1, [r1, r0]
	ldr r7, [sp, #0xc]
	str r1, [sp, #8]
	ldr r1, [sp]
	ldr r1, [r1, r2]
	add r2, sp, #0x10
	str r1, [sp, #4]
	add r1, r0, #0
	sub r1, #0xf4
	strh r1, [r2]
	mov r1, #0xe0
	strh r1, [r2, #2]
	ldr r1, [sp, #0xc]
	sub r0, #0x20
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r1, #0xa
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x1c]
	mov r1, #0xfa
	lsl r1, r1, #2
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	sub r1, r2, #2
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	ldr r1, [sp]
	str r2, [sp, #0x20]
	ldr r0, [r1, r0]
	add r0, r0, #2
	cmp r0, #0
	ble _02243D60
	add r4, r1, #0
	mov r6, #0x4c
	add r5, r1, #0
_02243CB8:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r0, r0, #1
	cmp r7, r0
	add r2, sp, #0x10
	bne _02243D12
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl SpriteSystem_NewSprite
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x57
	lsl r0, r0, #2
	lsl r1, r6, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl ManagedSprite_SetPositionXY
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl ManagedSprite_SetAnim
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ManagedSprite_TickFrame
	ldr r0, [sp, #0xc]
	add r4, #0x1c
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _02243D4E
_02243D12:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl SpriteSystem_NewSprite
	str r0, [r5, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	lsl r1, r6, #0x10
	ldr r0, [r5, #0xc]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov40_02244054
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r5, #0xc]
	bl ManagedSprite_TickFrame
	add r5, #0x1c
_02243D4E:
	mov r0, #0x81
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r7, #1
	add r0, r0, #2
	add r6, #8
	cmp r7, r0
	blt _02243CB8
_02243D60:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov40_02243C54

