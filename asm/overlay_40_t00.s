	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222B6E0
	.extern ov40_0222BA90
	.extern ov40_0222BC68
	.extern ov40_0222BD04
	.extern ov40_0222C360
	.extern ov40_0222C4F8
	.extern ov40_0222FBF8
	.extern ov40_0222FCCC
	.extern ov40_0223D544

	.text

	.text
	thumb_func_start ov40_0222B6E0
ov40_0222B6E0: ; 0x0222B6E0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0222B920 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0222B924 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #4
	mov r1, #0x6d
	bl GF_CreateVramTransferManager
	mov r0, #0xbf
	mov r1, #0x6d
	bl NARC_New
	str r0, [r4, #0x14]
	mov r0, #0x6d
	bl BgConfig_Alloc
	str r0, [r4, #0x24]
	mov r0, #0x6d
	bl PaletteData_Init
	str r0, [r4, #0x28]
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x6d
	mov r2, #1
	add r3, r1, #0
	bl GF_3DVramMan_Create
	str r0, [r4, #0x60]
	mov r0, #0x6d
	bl PokepicManager_Create
	str r0, [r4, #0x64]
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6d
	bl PaletteData_AllocBuffers
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r2, r1, #9
	mov r3, #0x6d
	bl PaletteData_AllocBuffers
	mov r1, #2
	ldr r0, [r4, #0x28]
	lsl r2, r1, #8
	mov r3, #0x6d
	bl PaletteData_AllocBuffers
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x6d
	bl PaletteData_AllocBuffers
	ldr r0, [r4, #0x24]
	bl ov40_0222BA90
	add r0, r4, #0
	bl ov40_0222BC68
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r4, #0
	bl ov40_0222C360
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _0222B928 ; =ov40_0222BD04
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, [r4]
	cmp r0, #0
	beq _0222B826
	add r0, r4, #0
	bl ov40_0223D544
	ldr r1, _0222B92C ; =0x00200010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	ldr r1, _0222B92C ; =0x00200010
	mov r0, #2
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #2
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
	mov r0, #1
	mov r1, #0x6d
	bl sub_0203A948
	mov r0, #0x6d
	bl sub_0203A4AC
	add r1, sp, #0x10
	add r5, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl PaletteData_LoadPalette
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	mov r2, #3
	mov r3, #0xe0
	bl PaletteData_LoadPalette
	add r0, r5, #0
	bl Heap_Free
_0222B826:
	mov r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x6d
	str r0, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #1
	str r0, [sp, #0x20]
	lsl r0, r1, #0x14
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	sub r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldmia r5!, {r0, r1, r2, r3}
	bl sub_02087284
	mov r1, #0x6f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	bl sub_02087878
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020878B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #2
	str r0, [sp, #0x1c]
	lsl r0, r0, #0x13
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	sub r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldmia r5!, {r0, r1, r2, r3}
	bl sub_02087284
	ldr r1, _0222B930 ; =0x000006F4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r4, #0
	add r1, #0x5c
	ldrb r1, [r1]
	bl sub_02087878
	ldr r0, _0222B930 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020878B0
	ldr r0, _0222B930 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #0x14
	mov r1, #0x6d
	bl FontSystem_NewInit
	str r0, [r4, #0x50]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xd
	mov r3, #0x6d
	bl NewMsgDataFromNarc
	str r0, [r4, #0x48]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0x1a
	mov r3, #0x6d
	bl NewMsgDataFromNarc
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov40_0222FCCC
	add r0, r4, #0
	bl sub_02088030
	add r0, r4, #0
	bl ov40_0222C4F8
	add r0, r4, #0
	bl ov40_0222FBF8
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0222B920: .word 0xFFFFE0FF
_0222B924: .word 0x04001000
_0222B928: .word ov40_0222BD04
_0222B92C: .word 0x00200010
_0222B930: .word 0x000006F4
	thumb_func_end ov40_0222B6E0

