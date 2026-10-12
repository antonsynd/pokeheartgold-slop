	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_02258800
	.public ov89_02258B04
	.extern ov89_02258FF4
	.extern ov89_0225901C
	.extern ov89_0225905C
	.extern ov89_02259264
	.extern ov89_02259408
	.extern ov89_02259588
	.extern ov89_02259734
	.extern ov89_022597FC
	.extern ov89_022598D0
	.extern ov89_02259B00
	.extern ov89_02259BAC
	.extern ov89_02259CD0
	.extern ov89_02259D70
	.extern ov89_02259E18
	.extern ov89_02259E28
	.extern ov89_02259E50
	.extern ov89_02259EC4
	.extern ov89_02259F9C
	.extern ov89_0225A16C
	.extern ov89_0225A21C
	.extern ov89_0225A398
	.extern ov89_0225A41C
	.extern ov89_0225A468
	.extern ov89_0225A46C
	.extern ov89_0225A4F4
	.extern ov89_0225C84C
	.extern ov89_0225C8DC
	.extern ov89_0225C91C
	.extern ov89_0225C9EC
	.extern ov89_0225CA00
	.extern ov89_0225CA58

	.text

	.text
	thumb_func_start ov89_02258800
ov89_02258800: ; 0x02258800
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _02258AC4 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _02258AC8 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _02258ACC ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1]
	ldr r3, [r0]
	add r1, #0x50
	and r2, r3
	str r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #5
	mov r0, #3
	mov r1, #0x7d
	lsl r2, r2, #0x10
	bl Heap_Create
	ldr r1, _02258AD0 ; =0x000019E4
	add r0, r4, #0
	mov r2, #0x7d
	bl OverlayManager_CreateAndGetData
	ldr r2, _02258AD0 ; =0x000019E4
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl OverlayManager_GetArgs
	str r0, [r5]
	ldr r0, [r0]
	bl ov45_0222A2C8
	str r0, [r5, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl ov45_0222A2CC
	ldr r1, _02258AD4 ; =0x000019E0
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov89_02259E18
	ldr r0, [r5]
	ldr r2, _02258AD8 ; =0x000008D8
	ldrb r0, [r0, #4]
	ldr r1, [r5, #4]
	add r2, r5, r2
	bl ov89_02259E50
	mov r1, #2
	ldr r0, _02258ADC ; =0x000019D4
	lsl r1, r1, #0xc
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x7d
	bl ov89_02259D70
	str r0, [r5, #0x14]
	mov r0, #0x7d
	bl PaletteData_Init
	str r0, [r5, #0xc]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x7d
	bl PaletteData_AllocBuffers
	mov r1, #1
	ldr r0, [r5, #0xc]
	lsl r2, r1, #9
	mov r3, #0x7d
	bl PaletteData_AllocBuffers
	mov r2, #7
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x7d
	bl PaletteData_AllocBuffers
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x7d
	bl PaletteData_AllocBuffers
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	mov r0, #0x7d
	bl BgConfig_Alloc
	str r0, [r5, #8]
	mov r0, #0x40
	mov r1, #0x7d
	bl GF_CreateVramTransferManager
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	ldr r0, [r5, #8]
	bl ov89_0225905C
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #2
	mov r1, #0x7d
	bl FontID_Alloc
	mov r0, #0x7d
	bl MessageFormat_New
	str r0, [r5, #0x2c]
	ldr r2, _02258AE0 ; =0x000002F2
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x7d
	bl NewMsgDataFromNarc
	str r0, [r5, #0x30]
	mov r0, #4
	mov r1, #0x7d
	bl FontSystem_NewInit
	str r0, [r5, #0x10]
	mov r0, #0xd2
	mov r1, #0x7d
	bl NARC_New
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x45
	mov r1, #0x7d
	bl NARC_New
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov89_02259264
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov89_02259BAC
	add r0, r5, #0
	bl ov89_02259B00
	add r0, r5, #0
	bl ov89_02259CD0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x7d
	bl String_New
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	mov r0, #0x7d
	bl SpriteSystem_Alloc
	ldr r1, _02258AE4 ; =ov89_0225CA58
	ldr r2, _02258AE8 ; =ov89_0225C9EC
	mov r3, #0x20
	str r0, [r5, #0x1c]
	bl SpriteSystem_Init
	ldr r1, _02258AEC ; =0x00200010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	ldr r0, [r5, #0x1c]
	bl SpriteManager_New
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r2, #0x80
	bl SpriteSystem_InitSprites
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldr r2, _02258AF0 ; =ov89_0225CA00
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r5, #0x1c]
	bl SpriteSystem_GetRenderer
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	bl sub_0203A880
	ldr r1, _02258AD4 ; =0x000019E0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov89_0225A46C
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov89_02259408
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov89_02259734
	add r0, r5, #0
	bl ov89_02259588
	add r0, r5, #0
	bl ov89_022597FC
	add r0, r5, #0
	bl ov89_022598D0
	mov r0, #0x7d
	bl YesNoPrompt_Create
	str r0, [r5, #0x24]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x7d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	beq _02258A4A
	mov r1, #1
	bl ov45_0222A520
_02258A4A:
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _02258AF4 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	bl GfGfx_BothDispOn
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02258AF8 ; =ov89_02258FF4
	ldr r2, _02258AFC ; =0x0000EA60
	add r1, r5, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #0x18]
	ldr r0, _02258B00 ; =ov89_0225901C
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02258AC4: .word 0xFFFFE0FF
_02258AC8: .word 0x04001000
_02258ACC: .word 0xFFFF1FFF
_02258AD0: .word 0x000019E4
_02258AD4: .word 0x000019E0
_02258AD8: .word 0x000008D8
_02258ADC: .word 0x000019D4
_02258AE0: .word 0x000002F2
_02258AE4: .word ov89_0225CA58
_02258AE8: .word ov89_0225C9EC
_02258AEC: .word 0x00200010
_02258AF0: .word ov89_0225CA00
_02258AF4: .word gSystem + 0x60
_02258AF8: .word ov89_02258FF4
_02258AFC: .word 0x0000EA60
_02258B00: .word ov89_0225901C
	thumb_func_end ov89_02258800

	thumb_func_start ov89_02258B04
ov89_02258B04: ; 0x02258B04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r3, [r4]
	add r1, r4, #0
	ldr r2, _02258E5C ; =0x000009BC
	mov r0, #0x65
	add r1, #0xcc
	lsl r0, r0, #2
	ldrb r3, [r3, #4]
	ldr r1, [r1]
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ov89_0225A4F4
	ldr r0, [r5]
	cmp r0, #0xa
	bls _02258B30
	b _02258E40
_02258B30:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258B3C: ; jump table
	.short _02258B52 - _02258B3C - 2 ; case 0
	.short _02258B70 - _02258B3C - 2 ; case 1
	.short _02258B88 - _02258B3C - 2 ; case 2
	.short _02258C56 - _02258B3C - 2 ; case 3
	.short _02258CAC - _02258B3C - 2 ; case 4
	.short _02258CF0 - _02258B3C - 2 ; case 5
	.short _02258D7A - _02258B3C - 2 ; case 6
	.short _02258DD0 - _02258B3C - 2 ; case 7
	.short _02258DE6 - _02258B3C - 2 ; case 8
	.short _02258E04 - _02258B3C - 2 ; case 9
	.short _02258E30 - _02258B3C - 2 ; case 10
_02258B52:
	mov r0, #0x5a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov89_0225C8DC
	add r0, r4, #0
	add r1, sp, #0x20
	bl ov89_02259E28
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258B70:
	bl IsPaletteFadeFinished
	cmp r0, #1
	beq _02258B7A
	b _02258E4A
_02258B7A:
	ldr r0, _02258E5C ; =0x000009BC
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258B88:
	ldr r0, _02258E60 ; =gSystem + 0x40
	ldrh r1, [r0, #0x24]
	cmp r1, #0
	beq _02258BF4
	ldrh r0, [r0, #0x22]
	cmp r0, #0xa0
	bhs _02258BF4
	ldr r1, _02258E64 ; =0x00000555
	add r0, r4, #0
	bl ov89_0225A41C
	cmp r0, #1
	bne _02258BF4
	mov r2, #0x92
	lsl r2, r2, #4
	ldrb r1, [r4, r2]
	ldr r7, _02258E60 ; =gSystem + 0x40
	mov r3, #0xc
	add r6, r1, #0
	mul r6, r3
	add r1, r2, #0
	ldrh r0, [r7, #0x20]
	add r6, r4, r6
	sub r1, #0x3f
	strb r0, [r6, r1]
	ldrb r1, [r4, r2]
	ldrh r0, [r7, #0x22]
	add r6, r1, #0
	mul r6, r3
	add r1, r2, #0
	add r6, r4, r6
	sub r1, #0x3e
	strb r0, [r6, r1]
	add r1, r2, #0
	ldrb r2, [r4, r2]
	sub r1, #0x48
	add r1, r4, r1
	mul r3, r2
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r1, r3
	bl ov89_02259EC4
	ldr r0, _02258E68 ; =0x000008D8
	add r2, r4, r0
	add r0, #0x48
	ldrb r1, [r4, r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	bl ov89_0225C91C
_02258BF4:
	ldr r1, _02258E68 ; =0x000008D8
	add r0, r4, r1
	add r1, #0x48
	ldrb r1, [r4, r1]
	bl ov89_0225C84C
	add r1, r0, #0
	cmp r1, #6
	bge _02258C14
	mov r0, #0x92
	lsl r0, r0, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov89_0225A16C
	b _02258E4A
_02258C14:
	ldr r0, [r5]
	cmp r0, #2
	bne _02258D0A
	cmp r1, #0xfe
	bne _02258D0A
	ldr r0, _02258E6C ; =0x000005E5
	bl PlaySE
	mov r0, #8
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r2, #9
	mov r3, #1
	bl PaletteData_BlendPalette
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, _02258E70 ; =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl PaletteData_BlendPalette
	mov r0, #3
	str r0, [r5]
	b _02258E4A
_02258C56:
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl DrawFrameAndWindow2
	add r2, r4, #0
	add r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2]
	mov r1, #2
	bl ReadMsgDataIntoString
	ldr r0, [r4, #4]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	add r0, r4, #0
	str r3, [sp, #8]
	add r2, #0xc4
	ldr r2, [r2]
	add r0, #0xb4
	mov r1, #1
	bl AddTextPrinterParameterized
	add r1, r4, #0
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258CAC:
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02258D0A
	ldr r0, [r4, #8]
	mov r1, #0x19
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x1f
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	mov r1, #0
	strb r1, [r0, #0x13]
	ldr r0, [r4, #0x24]
	add r1, sp, #0xc
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258CF0:
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0xb0
	mov r3, #0x40
	bl PaletteData_LoadPaletteSlotFromHardware
	ldr r0, [r4, #0x24]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02258D0C
	cmp r0, #2
	beq _02258D36
_02258D0A:
	b _02258E4A
_02258D0C:
	ldr r0, [r4, #0x24]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	bl ClearFrameAndWindow2
	mov r0, #0x5a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _02258E5C ; =0x000009BC
	mov r1, #3
	str r1, [r4, r0]
	mov r0, #9
	str r0, [r5]
	b _02258E4A
_02258D36:
	ldr r0, [r4, #0x24]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	bl ClearFrameAndWindow2
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r2, #9
	mov r3, #1
	bl PaletteData_BlendPalette
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02258E70 ; =0x00000921
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, r2]
	mov r1, #2
	mov r3, #0x10
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl PaletteData_BlendPalette
	mov r0, #2
	str r0, [r5]
	b _02258E4A
_02258D7A:
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl DrawFrameAndWindow2
	add r2, r4, #0
	add r2, #0xc4
	ldr r0, [r4, #0x30]
	ldr r2, [r2]
	mov r1, #3
	bl ReadMsgDataIntoString
	ldr r0, [r4, #4]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	add r2, r4, #0
	add r0, r4, #0
	str r3, [sp, #8]
	add r2, #0xc4
	ldr r2, [r2]
	add r0, #0xb4
	mov r1, #1
	bl AddTextPrinterParameterized
	add r1, r4, #0
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258DD0:
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02258E4A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258DE6:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x5a
	bls _02258E4A
	mov r0, #9
	str r0, [r5]
	b _02258E4A
_02258E04:
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _02258E10
	bl sub_0200FB70
_02258E10:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x7d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258E30:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02258E4A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02258E4A
_02258E40:
	bl ov45_0222EEB8
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02258E4A:
	add r0, r4, #0
	bl ov89_0225A21C
	add r0, r4, #0
	bl ov89_0225A398
	ldr r0, _02258E5C ; =0x000009BC
	b _02258E74
	nop
_02258E5C: .word 0x000009BC
_02258E60: .word gSystem + 0x40
_02258E64: .word 0x00000555
_02258E68: .word 0x000008D8
_02258E6C: .word 0x000005E5
_02258E70: .word 0x00000921
_02258E74:
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02258EEC
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	ble _02258E94
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov89_02259F9C
_02258E94:
	bl ov45_0222D844
	cmp r0, #1
	beq _02258EA8
	ldr r0, [r4]
	ldr r0, [r0]
	bl ov45_0222A330
	cmp r0, #1
	bne _02258EEC
_02258EA8:
	ldr r0, [r5]
	cmp r0, #4
	beq _02258EEC
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258EBE
	ldr r0, [r4, #0x24]
	bl YesNoPrompt_Reset
_02258EBE:
	mov r0, #0x5a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _02258EF8 ; =0x000009BC
	mov r1, #3
	str r1, [r4, r0]
	bl ov45_0222D844
	cmp r0, #1
	bne _02258EDA
	mov r0, #9
	str r0, [r5]
	b _02258EEC
_02258EDA:
	ldr r0, _02258EFC ; =0x000005F1
	bl PlaySE
	ldr r0, [r4]
	ldr r0, [r0]
	bl ov45_0222A4A8
	mov r0, #6
	str r0, [r5]
_02258EEC:
	add r0, r4, #0
	bl ov89_0225A468
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02258EF8: .word 0x000009BC
_02258EFC: .word 0x000005F1
	thumb_func_end ov89_02258B04

