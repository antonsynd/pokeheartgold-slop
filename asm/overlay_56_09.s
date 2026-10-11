	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E5FDC
	.public ov56_021E609C
	.public ov56_021E60F4
	.public ov56_021E614C
	.public ov56_021E6228
	.public ov56_021E63C0
	.public ov56_021E63FC
	.extern ov56_021E5D08
	.extern ov56_021E647C
	.extern ov56_021E64C8
	.extern ov56_021E6DE4

	.text

	.text
	thumb_func_start ov56_021E5FDC
ov56_021E5FDC: ; 0x021E5FDC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5, #8]
	mov r0, #0
	add r4, r0, #0
	cmp r1, #0
	beq _021E5FF2
	cmp r1, #1
	beq _021E603E
	b _021E6088
_021E5FF2:
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	mov r2, #0xa
	mov r3, #6
	bl DrawFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0xff
	bl FillWindowPixelBuffer
	ldr r1, [r5]
	mov r0, #0x4c
	bl String_New
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #2
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6094 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	b _021E6088
_021E603E:
	ldr r1, _021E6098 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _021E604E
	mov r4, #1
	strb r0, [r5, #0xa]
	b _021E6060
_021E604E:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021E6060
	mov r4, #1
	add r0, r5, #0
	strb r4, [r5, #0xa]
	bl ov56_021E5D08
_021E6060:
	cmp r4, #0
	bne _021E606A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E606A:
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #0
	strh r0, [r5, #8]
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021E6088:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6094: .word 0x0001020F
_021E6098: .word gSystem
	thumb_func_end ov56_021E5FDC

	thumb_func_start ov56_021E609C
ov56_021E609C: ; 0x021E609C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021E60F0 ; =0x000001BB
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0x18
	strb r0, [r1, #0x10]
	mov r0, #0xa
	strb r0, [r1, #0x11]
	ldrb r3, [r1, #0x12]
	mov r0, #0xf
	ldrb r2, [r4, #0xa]
	bic r3, r0
	mov r0, #0xf
	and r0, r2
	orr r0, r3
	strb r0, [r1, #0x12]
	ldrb r2, [r1, #0x12]
	mov r0, #0xf0
	bic r2, r0
	strb r2, [r1, #0x12]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	ldr r2, [r4, #0x30]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplateWithPalette
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E60F0: .word 0x000001BB
	thumb_func_end ov56_021E609C

	thumb_func_start ov56_021E60F4
ov56_021E60F4: ; 0x021E60F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E610A
	cmp r0, #2
	beq _021E610E
	b _021E6112
_021E610A:
	mov r4, #1
	b _021E6118
_021E610E:
	mov r4, #0
	b _021E6118
_021E6112:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021E6118:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl YesNoPrompt_IsInTouchMode
	add r6, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r6, r0
	beq _021E613E
	cmp r0, #0
	bne _021E6136
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	blx r1
	b _021E613C
_021E6136:
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	blx r1
_021E613C:
	strb r6, [r5, #0xa]
_021E613E:
	add r5, #0xac
	ldr r0, [r5]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov56_021E60F4

	thumb_func_start ov56_021E614C
ov56_021E614C: ; 0x021E614C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5, #8]
	cmp r1, #0
	beq _021E6162
	cmp r1, #1
	beq _021E61BC
	cmp r1, #2
	beq _021E61D4
	b _021E6212
_021E6162:
	mov r1, #1
	add r0, #0x9c
	mov r2, #0xa
	mov r3, #6
	strb r1, [r5, #0x13]
	bl DrawFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0xff
	bl FillWindowPixelBuffer
	ldr r1, [r5]
	mov r0, #0x4c
	bl String_New
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #3
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldrb r0, [r5, #0x10]
	mov r1, #1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, _021E6220 ; =0x0001020F
	str r0, [sp, #8]
	add r0, r5, #0
	str r3, [sp, #0xc]
	add r0, #0x9c
	bl AddTextPrinterParameterizedWithColor
	strb r0, [r5, #0xf]
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl ov56_021E5D08
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x17]
	b _021E6212
_021E61BC:
	ldrb r0, [r5, #0xf]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021E61CC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E61CC:
	add r0, r5, #0
	bl ov56_021E609C
	b _021E6212
_021E61D4:
	bl ov56_021E60F4
	add r4, r0, #0
	bpl _021E61E2
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E61E2:
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x9c
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #0
	strh r0, [r5, #8]
	cmp r4, #0
	beq _021E6208
	ldr r1, _021E6224 ; =0x0000FFFF
	ldr r0, [r5, #0x1c]
	add sp, #0x10
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6208:
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, pc}
_021E6212:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E6220: .word 0x0001020F
_021E6224: .word 0x0000FFFF
	thumb_func_end ov56_021E614C

	thumb_func_start ov56_021E6228
ov56_021E6228: ; 0x021E6228
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #5
	bls _021E6236
	b _021E639A
_021E6236:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6242: ; jump table
	.short _021E624E - _021E6242 - 2 ; case 0
	.short _021E6294 - _021E6242 - 2 ; case 1
	.short _021E62DE - _021E6242 - 2 ; case 2
	.short _021E62FA - _021E6242 - 2 ; case 3
	.short _021E6334 - _021E6242 - 2 ; case 4
	.short _021E6386 - _021E6242 - 2 ; case 5
_021E624E:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E63A8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E63AC ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	b _021E639A
_021E6294:
	bl ov56_021E647C
	cmp r0, #0
	bne _021E62A2
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E62A2:
	ldr r0, _021E63B0 ; =ov56_021E63C0
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0
	bl SetMasterBrightnessNeutral
	mov r1, #4
	ldr r0, _021E63B4 ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021E63B8 ; =0x0000FFFF
	sub r3, r1, #6
	bl PaletteData_BeginPaletteFade
	b _021E639A
_021E62DE:
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _021E62EA
	bl SpriteSystem_DrawSprites
_021E62EA:
	ldr r0, [r4, #0x30]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _021E639A
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E62FA:
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _021E6306
	bl SpriteSystem_DrawSprites
_021E6306:
	ldrb r1, [r4, #0xc]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021E63BC ; =ov56_021E6DE4
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021E631C
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E631C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021E63B8 ; =0x0000FFFF
	sub r3, r1, #6
	bl PaletteData_BeginPaletteFade
	b _021E639A
_021E6334:
	ldr r0, [r4, #0x30]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _021E6350
	add r4, #0xb4
	ldr r0, [r4]
	cmp r0, #0
	beq _021E634A
	bl SpriteSystem_DrawSprites
_021E634A:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E6350:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E63A8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E63AC ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	b _021E639A
_021E6386:
	bl ov56_021E64C8
	cmp r0, #0
	beq _021E6394
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E6394:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E639A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E63A8: .word 0xFFFFE0FF
_021E63AC: .word 0x04001000
_021E63B0: .word ov56_021E63C0
_021E63B4: .word 0x04000050
_021E63B8: .word 0x0000FFFF
_021E63BC: .word ov56_021E6DE4
	thumb_func_end ov56_021E6228

	thumb_func_start ov56_021E63C0
ov56_021E63C0: ; 0x021E63C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021E63CE
	bl PaletteData_PushTransparentBuffers
_021E63CE:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E63DC
	bl SpriteSystem_TransferOam
_021E63DC:
	bl NNS_GfdDoVramTransfer
	ldr r0, [r4, #0x18]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E63F4 ; =0x027E0000
	ldr r1, _021E63F8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E63F4: .word 0x027E0000
_021E63F8: .word 0x00003FF8
	thumb_func_end ov56_021E63C0

	thumb_func_start ov56_021E63FC
ov56_021E63FC: ; 0x021E63FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4, #0x30]
	cmp r1, #0
	bne _021E6410
	bl SysTask_Destroy
	add sp, #8
	pop {r4, pc}
_021E6410:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _021E6474
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _021E6474
	ldrb r1, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	cmp r1, r0
	beq _021E642E
	add r0, r4, #0
	bl ov56_021E5D08
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
_021E642E:
	ldrb r0, [r4, #0x14]
	mov r1, #0
	mov r3, #1
	str r0, [sp]
	ldr r0, _021E6478 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, [r4, #0x30]
	add r2, #0x22
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl PaletteData_BlendPalette
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	cmp r0, #0
	beq _021E6464
	sub r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #1
	bne _021E6474
	ldrb r1, [r4, #0x15]
	mov r0, #1
	add sp, #8
	eor r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
_021E6464:
	add r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #0xc
	bne _021E6474
	ldrb r1, [r4, #0x15]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #0x15]
_021E6474:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E6478: .word 0x00007FFF
	thumb_func_end ov56_021E63FC

