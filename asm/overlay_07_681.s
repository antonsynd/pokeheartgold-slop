	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02233B04
	.extern ov07_02232D20
	.extern ov07_02232D80
	.extern ov07_02232DF4
	.extern ov07_02232E10
	.extern ov07_022344C0

	.text

	.text
	thumb_func_start ov07_02233B04
ov07_02233B04: ; 0x02233B04
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #7
	bls _02233B12
	b _02233C8A
_02233B12:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02233B1E: ; jump table
	.short _02233B2E - _02233B1E - 2 ; case 0
	.short _02233B6C - _02233B1E - 2 ; case 1
	.short _02233B9C - _02233B1E - 2 ; case 2
	.short _02233BD2 - _02233B1E - 2 ; case 3
	.short _02233BE2 - _02233B1E - 2 ; case 4
	.short _02233C10 - _02233B1E - 2 ; case 5
	.short _02233C3E - _02233B1E - 2 ; case 6
	.short _02233C6C - _02233B1E - 2 ; case 7
_02233B2E:
	mov r1, #0
	bl ov07_022344C0
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnim
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #2
	blt _02233B82
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233B6C:
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #2
	bge _02233B84
_02233B82:
	b _02233C90
_02233B84:
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl ManagedSprite_SetAnimationFrame
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233B9C:
	add r0, #0xa0
	ldr r0, [r0]
	add r2, sp, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, sp, #0
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x30]
	add r2, #2
	bl ManagedSprite_GetPositionXY
	add r0, sp, #0
	bl ov07_02232D20
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233BD2:
	add r0, #0xd0
	ldr r0, [r0]
	bl ov07_02232D80
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233BE2:
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #6
	blt _02233C90
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl ManagedSprite_SetAnimationFrame
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233C10:
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #6
	blt _02233C90
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnimationFrame
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233C3E:
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #6
	blt _02233C90
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233C6C:
	add r0, #0xd0
	ldr r0, [r0]
	bl ov07_02232DF4
	cmp r0, #0
	bne _02233C90
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl ov07_02232E10
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233C90
_02233C8A:
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, pc}
_02233C90:
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov07_02233B04

