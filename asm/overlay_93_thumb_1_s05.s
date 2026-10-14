	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225C768
	.extern ov93_0225CEA0
	.extern ov93_0225CF14
	.extern ov93_0225CFC0
	.extern ov93_0225D07C
	.extern ov93_0225D1D8
	.extern ov93_0225D380
	.extern ov93_0225D468
	.extern ov93_0225D4EC
	.extern ov93_0225D5AC
	.extern ov93_0225D674
	.extern ov93_0225D78C
	.extern ov93_0225DA40
	.extern ov93_0225DB2C
	.extern ov93_0225DBC8
	.extern ov93_0225DD2C
	.extern ov93_0225E7B0
	.extern ov93_02262A7C
	.extern ov93_02262A90
	.extern ov93_02262AA8

	.text

	.text
	thumb_func_start ov93_0225C768
ov93_0225C768: ; 0x0225C768
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	ldr r2, _0225CA54 ; =0xFFFFE0FF
	and r1, r2
	str r1, [r0]
	ldr r1, _0225CA58 ; =0x04001000
	ldr r3, [r1]
	and r2, r3
	str r2, [r1]
	ldr r3, [r0]
	ldr r2, _0225CA5C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r0]
	ldr r3, [r1]
	add r0, #0x50
	and r2, r3
	str r2, [r1]
	mov r3, #0x10
	mov r1, #1
	mov r2, #0x3f
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #3
	str r0, [sp]
	ldr r0, _0225CA60 ; =0x04001050
	mov r1, #8
	mov r2, #0x1f
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	ldr r1, _0225CA64 ; =0x00003850
	add r0, r4, #0
	mov r2, #0x75
	bl OverlayManager_CreateAndGetData
	ldr r2, _0225CA64 ; =0x00003850
	add r5, r0, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0xa8
	mov r1, #0x75
	mov r2, #0x20
	bl HeapExp_FndInitAllocator
	mov r0, #0x75
	bl ov93_0225CF14
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r4, #0
	bl OverlayManager_GetArgs
	str r0, [r5]
	add r0, r5, #0
	bl ov93_022626FC
	mov r0, #0x75
	bl PaletteData_Init
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x75
	bl PaletteData_AllocBuffers
	add r0, r5, #0
	add r0, #0x8c
	mov r1, #1
	ldr r0, [r0]
	lsl r2, r1, #9
	mov r3, #0x75
	bl PaletteData_AllocBuffers
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #7
	ldr r0, [r0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x75
	bl PaletteData_AllocBuffers
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x75
	bl PaletteData_AllocBuffers
	mov r0, #0x75
	bl BgConfig_Alloc
	str r0, [r5, #0x2c]
	mov r0, #0x40
	mov r1, #0x75
	bl GF_CreateVramTransferManager
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	ldr r0, [r5, #0x2c]
	bl ov93_0225D1D8
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	add r0, r5, #0
	bl ov93_0225CFC0
	mov r0, #0x75
	bl SpriteSystem_Alloc
	ldr r1, _0225CA68 ; =ov93_02262AA8
	ldr r2, _0225CA6C ; =ov93_02262A7C
	mov r3, #0x20
	str r0, [r5, #0x24]
	bl SpriteSystem_Init
	ldr r1, _0225CA70 ; =0x00100010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	ldr r0, [r5, #0x24]
	bl SpriteManager_New
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, #0xe0
	bl SpriteSystem_InitSprites
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _0225CA74 ; =ov93_02262A90
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r5, #0x24]
	bl SpriteSystem_GetRenderer
	mov r2, #0x16
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	add r0, r5, #0
	bl ov93_0225D674
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xc
	mov r3, #0x75
	bl NewMsgDataFromNarc
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #0x75
	bl MessageFormat_New
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x75
	bl String_New
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	mov r0, #0x13
	mov r1, #0x75
	bl FontSystem_NewInit
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	ldr r1, _0225CA78 ; =0x00001468
	add r0, r5, #0
	add r1, r5, r1
	bl ov93_02261310
	mov r0, #0xc9
	mov r1, #0x75
	bl NARC_New
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov93_0225DB2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov93_0225DBC8
	add r0, r5, #0
	bl ov93_0225D380
	add r0, r5, #0
	add r1, r4, #0
	bl ov93_0225D78C
	add r0, r5, #0
	add r1, r4, #0
	bl ov93_0225DA40
	add r0, r5, #0
	add r1, r4, #0
	bl ov93_0225DD2C
	add r0, r4, #0
	bl NARC_Delete
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0x75
	bl PaletteData_LoadNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0x75
	bl PaletteData_LoadNarc
	add r0, r5, #0
	bl ov93_0225D4EC
	add r0, r5, #0
	mov r1, #0
	bl ov93_0225D5AC
	add r0, r5, #0
	bl ov93_0225D468
	bl sub_0203A880
	add r0, r5, #0
	bl ov93_0225E7B0
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x75
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x1b
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, _0225CA7C ; =ov93_0225D07C
	ldr r2, _0225CA80 ; =0x0000EA60
	add r1, r5, #0
	bl SysTask_CreateOnMainQueue
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	ldr r0, _0225CA84 ; =gSystem + 0x60
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
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r5, #0x28]
	bl SpriteManager_GetSpriteList
	mov r1, #0x75
	bl ov90_02258BD4
	str r0, [r5, #0x1c]
	bl ov90_02258C74
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	lsl r2, r2, #0x14
	ldr r0, [r0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x60
	bl PaletteData_LoadPaletteSlotFromHardware
	ldr r0, _0225CA88 ; =ov93_0225CEA0
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	ldr r0, [r5]
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225CA4C
	mov r0, #0x75
	bl ov00_021E69A8
_0225CA4C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225CA54: .word 0xFFFFE0FF
_0225CA58: .word 0x04001000
_0225CA5C: .word 0xFFFF1FFF
_0225CA60: .word 0x04001050
_0225CA64: .word 0x00003850
_0225CA68: .word ov93_02262AA8
_0225CA6C: .word ov93_02262A7C
_0225CA70: .word 0x00100010
_0225CA74: .word ov93_02262A90
_0225CA78: .word 0x00001468
_0225CA7C: .word ov93_0225D07C
_0225CA80: .word 0x0000EA60
_0225CA84: .word gSystem + 0x60
_0225CA88: .word ov93_0225CEA0
	thumb_func_end ov93_0225C768

