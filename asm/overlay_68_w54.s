	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E73A4
	.public ov68_021E7424

	.text

	.text
	thumb_func_start ov68_021E73A4
ov68_021E73A4: ; 0x021E73A4
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #4
	bhs _021E73D2
	mov r0, #0x4b
	lsl r2, r3, #5
	lsl r0, r0, #2
	add r2, #0x20
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	b _021E7414
_021E73D2:
	cmp r3, #6
	bhs _021E73FA
	mov r0, #0x4b
	lsl r0, r0, #2
	sub r2, r3, #4
	mov r1, #0x28
	mul r1, r2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimationFrame
	b _021E7414
_021E73FA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc0
	mov r2, #0xa0
	bl ManagedSprite_SetPositionXY
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ManagedSprite_SetAnimationFrame
_021E7414:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov68_021E73A4

	thumb_func_start ov68_021E7424
ov68_021E7424: ; 0x021E7424
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r6, #0
	bne _021E7442
	cmp r7, #0
	beq _021E7442
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #1
	bl ManagedSprite_ResetSpriteAnimCtrlState
	b _021E7444
_021E7442:
	mov r4, #0
_021E7444:
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	add r2, r0, #4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r2, r1
	bge _021E7460
	sub r0, #0x94
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ManagedSprite_SetAnim
	b _021E746A
_021E7460:
	sub r0, #0x94
	ldr r0, [r5, r0]
	add r1, r4, #2
	bl ManagedSprite_SetAnim
_021E746A:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ManagedSprite_SetAnimateFlag
	cmp r6, #1
	bne _021E748C
	cmp r7, #0
	beq _021E748C
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #1
	bl ManagedSprite_ResetSpriteAnimCtrlState
	b _021E748E
_021E748C:
	mov r4, #0
_021E748E:
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _021E74A4
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #4
	bl ManagedSprite_SetAnim
	b _021E74B0
_021E74A4:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #6
	bl ManagedSprite_SetAnim
_021E74B0:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ManagedSprite_SetAnimateFlag
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov68_021E7424

