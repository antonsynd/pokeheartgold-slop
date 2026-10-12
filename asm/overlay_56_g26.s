	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E6AA4
	.public ov56_021E6BB4
	.extern ov56_021E6DF4
	.extern ov56_021E6E08
	.extern ov56_021E6E38

	.text

	.text
	thumb_func_start ov56_021E6AA4
ov56_021E6AA4: ; 0x021E6AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r7, #0
	add r6, r4, #0
	add r5, r7, #0
	add r6, #0x4c
_021E6AB2:
	ldr r0, [r4, #0x1c]
	add r0, #0x1e
	add r0, r0, r5
	bl MailMsg_IsInit
	cmp r0, #0
	beq _021E6AF4
	ldr r0, [r4, #0x1c]
	ldr r1, [r4]
	add r0, #0x1e
	add r0, r0, r5
	bl MailMsg_GetExpandedString
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6BB0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	mov r3, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	bl String_Delete
	add r0, r6, #0
	bl CopyWindowToVram
_021E6AF4:
	add r7, r7, #1
	add r5, #8
	add r6, #0x10
	cmp r7, #3
	blt _021E6AB2
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _021E6B88
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xe9
	bl NewMsgDataFromNarc
	str r0, [r4, #0x20]
	ldr r1, [r4]
	mov r0, #0x10
	bl String_New
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x4c
	mov r6, #0
	str r0, [sp, #0x18]
_021E6B26:
	add r0, r5, #0
	bl String_SetEmpty
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	add r2, r5, #0
	bl ReadMsgDataIntoString
	mov r0, #1
	add r1, r5, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x40
	sub r7, r1, r0
	add r0, r6, #3
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021E6BB0 ; =0x00010200
	lsr r3, r7, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, r7, r3
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #1
	asr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	bl CopyWindowToVram
	add r6, r6, #1
	cmp r6, #2
	blt _021E6B26
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021E6B88:
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	ldr r0, _021E6BB0 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r2, #0x14]
	add r0, #0x8c
	bl AddTextPrinterParameterizedWithColor
	add r4, #0x8c
	add r0, r4, #0
	bl CopyWindowToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6BB0: .word 0x00010200
	thumb_func_end ov56_021E6AA4

	thumb_func_start ov56_021E6BB4
ov56_021E6BB4: ; 0x021E6BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r5, r0, #0
	bl sub_0203A964
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021E6BC6
	b _021E6D7C
_021E6BC6:
	ldr r1, [r5]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r5]
	bl SpriteSystem_Alloc
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl SpriteManager_New
	add r1, r5, #0
	add r1, #0xb4
	add r2, sp, #0x40
	ldr r4, _021E6D80 ; =ov56_021E6E38
	str r0, [r1]
	ldmia r4!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	ldr r6, _021E6D84 ; =ov56_021E6DF4
	stmia r2!, {r0, r1}
	add r4, sp, #0x2c
	ldmia r6!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _021E6D88 ; =ov56_021E6E08
	str r0, [r4]
	add r4, sp, #0x14
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r5, #0
	add r0, #0xb0
	add r1, r3, #0
	ldr r0, [r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #3
	bl SpriteSystem_InitSprites
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x14
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r5]
	bl thunk_ClearMainOAM
	bl sub_02074490
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x14
	bl SpriteSystem_LoadPlttResObj
	bl sub_02074494
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	mov r6, #0
	add r4, r6, #0
	str r6, [sp, #0x10]
	add r7, r5, #0
_021E6CC4:
	ldr r0, [r5, #0x1c]
	add r3, r0, r4
	ldrh r1, [r3, #0x18]
	ldr r0, _021E6D8C ; =0x0000FFFF
	cmp r1, r0
	beq _021E6D7C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb0
	add r1, #0xb4
	lsl r3, r3, #0x14
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x14
	lsr r3, r3, #0x14
	bl SpriteSystem_LoadCharResObjWithHardwareMappingType
	add r0, sp, #0x60
	mov r1, #0
	mov r2, #0x34
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0x80
	sub r1, r1, r0
	add r0, sp, #0x60
	strh r1, [r0]
	mov r1, #0xa0
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x8c]
	ldr r0, [r5, #0x1c]
	add r2, sp, #0x60
	add r0, r0, r4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	str r0, [sp, #0x6c]
	add r0, r1, #0
	str r0, [sp, #0x90]
	mov r0, #1
	str r0, [sp, #0x70]
	add r0, r1, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x7c]
	str r0, [sp, #0x80]
	sub r0, r1, #1
	str r0, [sp, #0x84]
	sub r0, r1, #1
	str r0, [sp, #0x88]
	add r0, r5, #0
	add r1, r5, #0
	str r6, [sp, #0x74]
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteSystem_NewSprite
	add r1, r7, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	cmp r0, #7
	bne _021E6D6C
	add r0, r7, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_021E6D6C:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x28
	add r4, r4, #2
	add r7, r7, #4
	str r0, [sp, #0x10]
	cmp r6, #3
	blt _021E6CC4
_021E6D7C:
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6D80: .word ov56_021E6E38
_021E6D84: .word ov56_021E6DF4
_021E6D88: .word ov56_021E6E08
_021E6D8C: .word 0x0000FFFF
	thumb_func_end ov56_021E6BB4

