	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02229FC4
	.extern ov07_0221C448
	.extern ov07_02222268
	.extern ov07_022222F0
	.extern ov07_02236774
	.extern ov07_022367AE
	.extern ov07_022367B0
	.extern ov07_022367B2
	.extern ov07_022367B4

	.text

	.text
	thumb_func_start ov07_02229FC4
ov07_02229FC4: ; 0x02229FC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	ldrb r0, [r4]
	mov r6, #0
	cmp r0, #3
	bls _02229FD6
	b _0222A17C
_02229FD6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02229FE2: ; jump table
	.short _02229FEA - _02229FE2 - 2 ; case 0
	.short _0222A01E - _02229FE2 - 2 ; case 1
	.short _0222A0F6 - _02229FE2 - 2 ; case 2
	.short _0222A142 - _02229FE2 - 2 ; case 3
_02229FEA:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bhs _02229FF4
	add r0, r0, #1
	strb r0, [r4, #9]
_02229FF4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _02229FFE
	sub r0, r0, #1
	strb r0, [r4, #0xa]
_02229FFE:
	ldrb r0, [r4, #9]
	cmp r0, #0xf
	bne _0222A010
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0222A010
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222A010:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222A1D8 ; =0x04000052
	strh r1, [r0]
	b _0222A1A8
_0222A01E:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bhi _0222A084
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222A030: ; jump table
	.short _0222A038 - _0222A030 - 2 ; case 0
	.short _0222A052 - _0222A030 - 2 ; case 1
	.short _0222A06C - _0222A030 - 2 ; case 2
	.short _0222A06C - _0222A030 - 2 ; case 3
_0222A038:
	ldr r0, [r4, #0x18]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _0222A084
_0222A052:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _0222A084
_0222A06C:
	ldr r0, [r4, #0x28]
	mov r1, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_0222A084:
	add r1, sp, #8
	ldr r0, [r4, #0x34]
	add r1, #2
	add r2, sp, #8
	bl ManagedSprite_GetPositionXY
	ldr r1, [r4, #0x30]
	ldr r0, _0222A1DC ; =ov07_022367B0
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222A1E0 ; =ov07_022367AE
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222A1E4 ; =ov07_02236774
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x3c
	bl ov07_02222268
	add r1, sp, #8
	ldr r0, [r4, #0x38]
	add r1, #2
	add r2, sp, #8
	bl ManagedSprite_GetPositionXY
	ldr r1, [r4, #0x30]
	ldr r0, _0222A1E8 ; =ov07_022367B4
	lsl r2, r1, #3
	ldrsh r0, [r0, r2]
	ldr r5, _0222A1EC ; =ov07_022367B2
	add r3, sp, #8
	str r0, [sp]
	ldr r0, _0222A1E4 ; =ov07_02236774
	ldrsh r2, [r5, r2]
	ldrb r0, [r0, r1]
	mov r1, #2
	mov r5, #0
	str r0, [sp, #4]
	ldrsh r1, [r3, r1]
	add r0, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x60
	bl ov07_02222268
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A1A8
_0222A0F6:
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x3c
	add r5, r6, #0
	bl ov07_022222F0
	cmp r0, #0
	bne _0222A108
	add r5, r5, #1
_0222A108:
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	add r0, #0x60
	bl ov07_022222F0
	cmp r0, #0
	bne _0222A118
	add r5, r5, #1
_0222A118:
	cmp r5, #2
	blt _0222A1A8
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bgt _0222A13A
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _0222A1A8
_0222A13A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222A1A8
_0222A142:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0222A14C
	sub r0, r0, #1
	strb r0, [r4, #9]
_0222A14C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xf
	bhs _0222A156
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0222A156:
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	blo _0222A15E
	mov r6, #1
_0222A15E:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0222A16E
	cmp r1, #0xf
	bne _0222A16E
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222A16E:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222A1D8 ; =0x04000052
	strh r1, [r0]
	b _0222A1A8
_0222A17C:
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222A196
	add r5, r4, #0
_0222A186:
	ldr r0, [r5, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222A186
_0222A196:
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222A1A8:
	ldrb r0, [r4]
	cmp r0, #3
	bhs _0222A1CE
	cmp r6, #0
	bne _0222A1CE
	ldrb r0, [r4, #8]
	mov r6, #0
	cmp r0, #0
	ble _0222A1CE
	add r5, r4, #0
_0222A1BC:
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222A1BC
_0222A1CE:
	ldr r0, [r4, #0x14]
	bl SpriteSystem_DrawSprites
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A1D8: .word 0x04000052
_0222A1DC: .word ov07_022367B0
_0222A1E0: .word ov07_022367AE
_0222A1E4: .word ov07_02236774
_0222A1E8: .word ov07_022367B4
_0222A1EC: .word ov07_022367B2
	thumb_func_end ov07_02229FC4

