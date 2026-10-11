	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222A1F0
	.extern ov07_0221BFD0
	.extern ov07_0221C3F4
	.extern ov07_0221C4A8
	.extern ov07_0221F9E8
	.extern ov07_02229FC4
	.extern ov07_02231E08
	.extern ov07_02236796

	.text

	.text
	thumb_func_start ov07_0222A1F0
ov07_0222A1F0: ; 0x0222A1F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov07_0221BFD0
	mov r1, #0x84
	bl Heap_Alloc
	add r4, r0, #0
	bne _0222A20E
	bl GF_AssertFail
_0222A20E:
	mov r0, #0
	strb r0, [r4, #7]
	strb r0, [r4]
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	str r0, [r4, #0x30]
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r4, #0xc]
	add r0, sp, #4
	bl ov07_0221F9E8
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov07_02231E08
	mov r1, #0
	strb r1, [r4, #9]
	mov r0, #0xf
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xa]
	ldrb r2, [r4, #9]
	lsl r0, r0, #8
	orr r2, r0
	ldr r0, _0222A318 ; =0x04000052
	strh r2, [r0]
	ldr r0, [r4, #0xc]
	bl ov07_0221C4A8
	strb r0, [r4, #8]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #8]
	mov r6, #1
	cmp r0, #1
	ble _0222A272
	add r5, r4, #4
	add r7, sp, #4
_0222A25C:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r7, #0
	bl SpriteSystem_NewSprite
	str r0, [r5, #0x18]
	ldrb r0, [r4, #8]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0222A25C
_0222A272:
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ManagedSprite_SetFlipMode
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ManagedSprite_SetFlipMode
	ldrb r0, [r4, #8]
	mov r7, #0
	cmp r0, #0
	ble _0222A2E8
	ldr r6, _0222A31C ; =ov07_02236796
	add r5, r4, #0
_0222A2BE:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x18]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	ldrb r0, [r4, #8]
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, r0
	blt _0222A2BE
_0222A2E8:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	ldr r1, _0222A320 ; =ov07_02229FC4
	ldr r3, _0222A324 ; =0x0000044C
	add r2, r4, #0
	bl ov07_0221C3F4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A318: .word 0x04000052
_0222A31C: .word ov07_02236796
_0222A320: .word ov07_02229FC4
_0222A324: .word 0x0000044C
	thumb_func_end ov07_0222A1F0

