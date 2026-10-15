	.include "macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022392F4
	.extern ov57_02238DAC
	.extern ov57_0223927C

	.text

	.text
	thumb_func_start ov57_022392F4
ov57_022392F4: ; 0x022392F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	mov r0, #0x12
	add r4, r1, #0
	str r0, [sp, #8]
	mov r1, #1
	add r2, r5, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	str r4, [sp, #0x18]
	add r0, #0xdc
	add r1, #0xe0
	add r2, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	mov r3, #0x11
	bl ov57_0223927C
	mov r0, #5
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r1, #1
	add r2, r5, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	str r4, [sp, #0x18]
	add r0, #0xdc
	add r1, #0xe0
	add r2, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	mov r3, #0x20
	bl ov57_0223927C
	mov r6, #0
	add r4, r5, #0
	add r7, sp, #0x1c
_02239362:
	mov r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	strh r0, [r7, #0xe]
	mov r0, #0x28
	sub r0, r0, r6
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x34]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, _022394A0 ; =0x00002B09
	add r1, #0xe0
	str r0, [sp, #0x38]
	sub r0, #0xe
	str r0, [sp, #0x3c]
	ldr r0, _022394A4 ; =0x00002B0B
	add r2, sp, #0x24
	str r0, [sp, #0x40]
	sub r0, r0, #1
	str r0, [sp, #0x44]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteSystem_NewSprite
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, sp, #0x20
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0x20
	bl ov57_02238DAC
	mov r0, #0xa5
	mov r1, #6
	mov r2, #4
	lsl r0, r0, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #0xc
	blt _02239362
	mov r1, #0
	add r0, sp, #0x1c
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r0, #0x14
	str r0, [sp, #0x2c]
	mov r0, #1
	str r1, [sp, #0x30]
	str r1, [sp, #0x54]
	ldr r1, _022394A8 ; =0x00002B18
	str r0, [sp, #0x34]
	add r0, r1, #0
	sub r0, #0x1b
	str r0, [sp, #0x3c]
	add r0, r1, #2
	mov r2, #2
	str r0, [sp, #0x40]
	add r0, r1, #1
	str r0, [sp, #0x44]
	sub r0, r2, #3
	str r1, [sp, #0x38]
	add r1, r5, #0
	str r2, [sp, #0x50]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xdc
	add r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, #0xcc
	ldr r0, [r5, r1]
	add r1, sp, #0x1c
	add r1, #2
	add r2, sp, #0x1c
	bl ov57_02238DAC
	mov r0, #0xc7
	lsl r0, r0, #2
	add r3, sp, #0x1c
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	mov r0, #0x32
	lsl r0, r0, #4
	add r3, sp, #0x1c
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x19
	bl ManagedSprite_SetDrawPriority
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022394A0: .word 0x00002B09
_022394A4: .word 0x00002B0B
_022394A8: .word 0x00002B18
	thumb_func_end ov57_022392F4

