	.include "asm/macros.inc"
	.include "overlay_18_021F8AB8.inc"
	.include "global.inc"

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	thumb_func_start ov18_021F8AB8
ov18_021F8AB8: ; 0x021F8AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl AcquireMonLock
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x91
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	mov r1, #0x92
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	mov r1, #0xb1
	mov r2, #0
	bl GetMonData
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	mov r1, #0xb2
	mov r2, #0
	bl GetMonData
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ReleaseMonLock
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8AB8

	thumb_func_start ov18_021F8B10
ov18_021F8B10: ; 0x021F8B10
	push {r4, r5, lr}
	sub sp, #0x64
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r5, _021F8BE0 ; =ov18_021FBD7C
	add r3, sp, #0x48
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r4]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r3, [r4, #0x14]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r5, _021F8BE4 ; =ov18_021FBD60
	add r3, sp, #0x2c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r4]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r5, _021F8BE8 ; =ov18_021FBD98
	add r3, sp, #0x10
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r4]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4]
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4]
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x14]
	mov r2, #0x12
	bl PaletteData_LoadOpenNarc
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_021F8BE0: .word ov18_021FBD7C
_021F8BE4: .word ov18_021FBD60
_021F8BE8: .word ov18_021FBD98
	thumb_func_end ov18_021F8B10

	thumb_func_start ov18_021F8BEC
ov18_021F8BEC: ; 0x021F8BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8BEC

	thumb_func_start ov18_021F8C0C
ov18_021F8C0C: ; 0x021F8C0C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, _021F8C44 ; =0x0000FFFF
	mov r1, #5
	mov r3, #1
	bl PaletteData_BeginPaletteFade
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x20]
	mov r1, #0x10
	add r3, r2, #0
	bl Pokepic_StartPaletteFade
	ldr r0, [r4, #4]
	mov r1, #0
	bl PaletteData_SetAutoTransparent
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F8C44: .word 0x0000FFFF
	thumb_func_end ov18_021F8C0C

	thumb_func_start ov18_021F8C48
ov18_021F8C48: ; 0x021F8C48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _021F8C64
	ldr r0, [r4, #0x20]
	bl Pokepic_ResumePaletteFade
	cmp r0, #0
	bne _021F8C64
	mov r0, #1
	pop {r4, pc}
_021F8C64:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov18_021F8C48

	thumb_func_start ov18_021F8C68
ov18_021F8C68: ; 0x021F8C68
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021F8CC8 ; =0x00000242
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x10
	bne _021F8C9E
	mov r0, #0x20
	str r0, [sp]
	mov r1, #2
	mov r2, #0
	str r1, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldr r0, [r4]
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r3, r4, pc}
_021F8C9E:
	cmp r0, #0x20
	bne _021F8CC4
	mov r0, #0x20
	str r0, [sp]
	mov r1, #2
	mov r2, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4]
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F8CC8 ; =0x00000242
	mov r1, #0
	strh r1, [r4, r0]
_021F8CC4:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F8CC8: .word 0x00000242
	thumb_func_end ov18_021F8C68

	thumb_func_start ov18_021F8CCC
ov18_021F8CCC: ; 0x021F8CCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	ldr r6, _021F8F04 ; =ov18_021FBDB4
	mov r7, #0
	add r4, #0x24
_021F8CDA:
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r6, #0
	bl AddWindow
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	cmp r7, #9
	blo _021F8CDA
	ldr r2, _021F8F08 ; =0x00000322
	ldr r3, [r5, #0x14]
	mov r0, #0
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl MessageFormat_New
	add r6, r0, #0
	mov r0, #1
	ldr r1, [r5, #0x14]
	lsl r0, r0, #0xa
	bl String_New
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F8F0C ; =0x00020100
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x24
	mov r2, #0x90
	mov r3, #0x70
	bl ov18_021F9648
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r5, #0x10]
	ldr r1, [r5, r1]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r4, #0
	mov r1, #9
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #4
	str r0, [sp]
	ldr r0, _021F8F0C ; =0x00020100
	ldr r1, [sp, #0x10]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	add r0, #0x34
	mov r2, #1
	str r3, [sp, #8]
	bl ov18_021F95FC
	add r0, r7, #0
	bl String_Delete
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x14]
	mov r1, #2
	bl ov18_021E590C
	add r7, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021F8F0C ; =0x00020100
	mov r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x44
	add r1, r7, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov18_021F95FC
	add r0, r7, #0
	bl String_Delete
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x14]
	mov r1, #2
	bl ov18_021E595C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x54
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r2, r0, #4
	mov r0, #4
	str r0, [sp]
	ldr r0, _021F8F0C ; =0x00020100
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x54
	mov r3, #0
	bl ov18_021F95FC
	add r0, r7, #0
	bl String_Delete
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, #0x14]
	mov r1, #2
	mov r2, #0
	bl ov18_021E59A8
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x64
	bl GetWindowWidth
	str r0, [sp, #0x14]
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	ldr r1, [sp, #0x14]
	mov r3, #0
	lsl r1, r1, #3
	sub r0, r1, r0
	lsr r2, r0, #1
	ldr r0, _021F8F0C ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x64
	add r1, r7, #0
	str r3, [sp, #8]
	bl ov18_021F95FC
	add r0, r7, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F8F0C ; =0x00020100
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x74
	mov r2, #0xa
	mov r3, #0x14
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F8F0C ; =0x00020100
	add r1, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x94
	mov r2, #0xb
	mov r3, #0x14
	bl ov18_021F9648
	add r0, r6, #0
	bl MessageFormat_Delete
	add r0, r4, #0
	bl DestroyMsgData
	bl GetDexHeightMsgBank
	add r2, r0, #0
	ldr r3, [r5, #0x14]
	mov r0, #0
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r2, #0x91
	ldr r0, _021F8F0C ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x84
	add r1, r4, #0
	mov r3, #4
	bl ov18_021F9648
	add r0, r4, #0
	bl DestroyMsgData
	bl GetDexWeightMsgBank
	add r2, r0, #0
	ldr r3, [r5, #0x14]
	mov r0, #0
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r2, #0x91
	ldr r0, _021F8F0C ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0xa4
	add r1, r4, #0
	mov r3, #4
	bl ov18_021F9648
	add r0, r4, #0
	bl DestroyMsgData
	ldr r0, [sp, #0x10]
	bl String_Delete
	mov r4, #0
	add r5, #0x24
_021F8EF2:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #9
	blo _021F8EF2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8F04: .word ov18_021FBDB4
_021F8F08: .word 0x00000322
_021F8F0C: .word 0x00020100
	thumb_func_end ov18_021F8CCC

	thumb_func_start ov18_021F8F10
ov18_021F8F10: ; 0x021F8F10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x24
_021F8F18:
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #9
	blo _021F8F18
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_021F8F10

	thumb_func_start ov18_021F8F28
ov18_021F8F28: ; 0x021F8F28
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, _021F8F50 ; =ov18_021FBD50
	add r3, sp, #0
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x14]
	ldr r1, _021F8F54 ; =0x00100010
	str r0, [sp, #0xc]
	add r0, r2, #0
	mov r2, #0x10
	bl ObjCharTransfer_InitEx
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021F8F50: .word ov18_021FBD50
_021F8F54: .word 0x00100010
	thumb_func_end ov18_021F8F28

	thumb_func_start ov18_021F8F58
ov18_021F8F58: ; 0x021F8F58
	ldr r3, _021F8F5C ; =ObjCharTransfer_Destroy
	bx r3
	.balign 4, 0
_021F8F5C: .word ObjCharTransfer_Destroy
	thumb_func_end ov18_021F8F58

	thumb_func_start ov18_021F8F60
ov18_021F8F60: ; 0x021F8F60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r7, #0x1e
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_021F8F6C:
	ldr r2, [r6, #0x14]
	mov r0, #8
	add r1, r4, #0
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F8F6C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8F60

	thumb_func_start ov18_021F8F84
ov18_021F8F84: ; 0x021F8F84
	push {r4, r5, r6, lr}
	mov r6, #0x1e
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #4
_021F8F8E:
	ldr r0, [r5, r6]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F8F8E
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8F84

	thumb_func_start ov18_021F8FA0
ov18_021F8FA0: ; 0x021F8FA0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r2, [r4, #0x14]
	mov r0, #0x20
	add r1, #0xb8
	bl G2dRenderer_Init
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	ldr r0, [r4, #0x14]
	bl ClearMainOAM
	add r0, r4, #0
	bl ov18_021F8F28
	add r0, r4, #0
	bl ov18_021F8F60
	add r0, r4, #0
	bl ov18_021F8FF8
	add r0, r4, #0
	bl ov18_021F9068
	add r0, r4, #0
	bl ov18_021F9150
	add r0, r4, #0
	bl ov18_021F94BC
	add r0, r4, #0
	bl ov18_021F9370
	add r0, r4, #0
	bl ov18_021F9518
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8FA0

	thumb_func_start ov18_021F8FF8
ov18_021F8FF8: ; 0x021F8FF8
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0x1f
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021F9050 ; =0x0000C618
	mov r1, #0x7d
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x14
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x1c]
	add r1, r4, r1
	bl ov18_021F922C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl SpriteTransfer_GetPlttOffset
	add r2, r0, #0
	lsl r2, r2, #0x14
	ldr r0, [r4, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x40
	bl PaletteData_LoadPaletteSlotFromHardware
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_021F9050: .word 0x0000C618
	thumb_func_end ov18_021F8FF8

	thumb_func_start ov18_021F9054
ov18_021F9054: ; 0x021F9054
	mov r1, #0x7d
	add r2, r0, #0
	lsl r1, r1, #2
	add r0, r2, r1
	sub r1, #0x14
	ldr r3, _021F9064 ; =ov18_021F92DC
	add r1, r2, r1
	bx r3
	.balign 4, 0
_021F9064: .word ov18_021F92DC
	thumb_func_end ov18_021F9054

	thumb_func_start ov18_021F9068
ov18_021F9068: ; 0x021F9068
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov18_021F967C
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r0, #0x22
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r0, _021F9100 ; =0x0000C619
	mov r1, #0x82
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x28
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x1c]
	add r1, r4, r1
	bl ov18_021F922C
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov18_021F967C
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r0, #0x22
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r0, _021F9104 ; =0x0000C61A
	mov r1, #0x87
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x3c
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x1c]
	add r1, r4, r1
	bl ov18_021F922C
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl SpriteTransfer_GetPlttOffset
	add r2, r0, #0
	lsl r2, r2, #0x14
	ldr r0, [r4, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x80
	bl PaletteData_LoadPaletteSlotFromHardware
	add sp, #0x24
	pop {r3, r4, pc}
	.balign 4, 0
_021F9100: .word 0x0000C619
_021F9104: .word 0x0000C61A
	thumb_func_end ov18_021F9068

	thumb_func_start ov18_021F9108
ov18_021F9108: ; 0x021F9108
	push {r4, lr}
	mov r1, #0x82
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x28
	add r1, r4, r1
	bl ov18_021F92DC
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200AEB0
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl DestroySingle2DGfxResObj
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl DestroySingle2DGfxResObj
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl DestroySingle2DGfxResObj
	pop {r4, pc}
	thumb_func_end ov18_021F9108

	thumb_func_start ov18_021F9150
ov18_021F9150: ; 0x021F9150
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov18_021E5900
	ldr r1, [r5, #0x14]
	bl NARC_New
	add r4, r0, #0
	mov r0, #0x4d
	str r0, [sp]
	sub r0, #0x4e
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #0x4f
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021F91D8 ; =0x0000C61B
	mov r1, #0x23
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x50
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x1c]
	add r1, r5, r1
	bl ov18_021F922C
	bl ov18_021E5908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F91D8 ; =0x0000C61B
	add r2, r4, #0
	str r0, [sp, #4]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x14]
	bl ov18_021F92AC
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl SpriteTransfer_GetPlttOffset
	add r2, r0, #0
	lsl r2, r2, #0x14
	ldr r0, [r5, #4]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl PaletteData_LoadPaletteSlotFromHardware
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021F91D8: .word 0x0000C61B
	thumb_func_end ov18_021F9150

	thumb_func_start ov18_021F91DC
ov18_021F91DC: ; 0x021F91DC
	mov r1, #0x23
	add r2, r0, #0
	lsl r1, r1, #4
	add r0, r2, r1
	sub r1, #0x50
	ldr r3, _021F91EC ; =ov18_021F92DC
	add r1, r2, r1
	bx r3
	.balign 4, 0
_021F91EC: .word ov18_021F92DC
	thumb_func_end ov18_021F91DC

	thumb_func_start ov18_021F91F0
ov18_021F91F0: ; 0x021F91F0
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F959C
	add r0, r4, #0
	bl ov18_021F94A0
	add r0, r4, #0
	bl ov18_021F9508
	add r0, r4, #0
	bl ov18_021F91DC
	add r0, r4, #0
	bl ov18_021F9108
	add r0, r4, #0
	bl ov18_021F9054
	add r0, r4, #0
	bl ov18_021F8F84
	bl ov18_021F8F58
	add r4, #0xb4
	ldr r0, [r4]
	bl SpriteList_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F91F0

	thumb_func_start ov18_021F922C
ov18_021F922C: ; 0x021F922C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	add r7, r3, #0
	add r6, r2, #0
	add r4, r1, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r5]
	bl sub_0200ADA4
	ldr r0, [r5]
	bl sub_0200A740
	mov r0, #0
	ldr r3, [sp, #0x24]
	mvn r0, r0
	cmp r3, r0
	beq _021F9276
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl ov18_021F92AC
	str r0, [r5, #4]
_021F9276:
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	add r1, r7, #0
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #8]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F922C

	thumb_func_start ov18_021F92AC
ov18_021F92AC: ; 0x021F92AC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	add r1, r2, #0
	add r2, r3, #0
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	add r4, r0, #0
	bl sub_0200B00C
	add r0, r4, #0
	bl sub_0200A740
	add r0, r4, #0
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F92AC

	thumb_func_start ov18_021F92DC
ov18_021F92DC: ; 0x021F92DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_0200AEB0
	ldr r0, [r5, #4]
	bl sub_0200B0A8
	ldr r0, [r4]
	ldr r1, [r5]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl DestroySingle2DGfxResObj
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_021F92DC

	thumb_func_start ov18_021F9310
ov18_021F9310: ; 0x021F9310
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl GF2DGfxResObj_GetResID
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F9310

	thumb_func_start ov18_021F9370
ov18_021F9370: ; 0x021F9370
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	mov r1, #0x82
	add r5, r0, #0
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x28
	add r1, r5, r1
	add r2, sp, #0x2c
	mov r3, #1
	bl ov18_021F9310
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	str r0, [sp, #0x54]
	mov r0, #1
	str r0, [sp, #0x68]
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x6c]
	mov r0, #0x2a
	lsl r0, r0, #0xe
	str r0, [sp, #0x58]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x5c]
	add r0, sp, #0x50
	bl Sprite_Create
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0x48
	ldr r0, [r5, r1]
	bl ov18_021F9688
	add r1, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_SetPalIndexRespectVramOffset
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF2DGfxResObj_GetResID
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF2DGfxResObj_GetResID
	add r6, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF2DGfxResObj_GetResID
	add r7, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF2DGfxResObj_GetResID
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	add r3, r7, #0
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x2c
	add r1, r4, #0
	bl CreateSpriteResourcesHeader
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	str r0, [sp, #0x54]
	mov r0, #1
	str r0, [sp, #0x68]
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x6c]
	mov r0, #0xd9
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x5c]
	add r0, sp, #0x50
	bl Sprite_Create
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F947A
	add r1, #0x34
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021F948A
_021F947A:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021F948A:
	bl ov18_021F9688
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_SetPalIndexRespectVramOffset
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F9370

	thumb_func_start ov18_021F94A0
ov18_021F94A0: ; 0x021F94A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_Delete
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F94A0

	thumb_func_start ov18_021F94BC
ov18_021F94BC: ; 0x021F94BC
	push {r3, r4, lr}
	sub sp, #0x44
	mov r1, #0x7d
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x14
	add r1, r4, r1
	add r2, sp, #0
	mov r3, #1
	bl ov18_021F9310
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #1
	str r0, [sp, #0x24]
	add r0, sp, #0
	str r0, [sp, #0x28]
	mov r0, #0
	str r1, [sp, #0x3c]
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x40]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x2c]
	lsl r0, r1, #0x11
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl Sprite_Create
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add sp, #0x44
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F94BC

	thumb_func_start ov18_021F9508
ov18_021F9508: ; 0x021F9508
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r3, _021F9514 ; =Sprite_Delete
	ldr r0, [r0, r1]
	bx r3
	nop
_021F9514: .word Sprite_Delete
	thumb_func_end ov18_021F9508

	thumb_func_start ov18_021F9518
ov18_021F9518: ; 0x021F9518
	push {r4, r5, lr}
	sub sp, #0x44
	mov r1, #0x23
	add r5, r0, #0
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x50
	add r1, r5, r1
	add r2, sp, #0
	mov r3, #1
	bl ov18_021F9310
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	str r0, [sp, #0x24]
	add r0, sp, #0
	str r0, [sp, #0x28]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x40]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #0x2c]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl Sprite_Create
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0x18
	ldr r0, [r5, r1]
	ldr r1, [r5, #0x14]
	bl ov18_021F9694
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_GetImageProxy
	mov r1, #1
	bl NNS_G2dGetImageLocation
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x80
	bl DC_FlushRange
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x80
	bl GX_LoadOBJ
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x44
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F9518

	thumb_func_start ov18_021F959C
ov18_021F959C: ; 0x021F959C
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r3, _021F95A8 ; =Sprite_Delete
	ldr r0, [r0, r1]
	bx r3
	nop
_021F95A8: .word Sprite_Delete
	thumb_func_end ov18_021F959C

	thumb_func_start ov18_021F95AC
ov18_021F95AC: ; 0x021F95AC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, #0x1f
	add r5, r0, #0
	add r7, r4, #0
	lsl r6, r6, #4
_021F95B8:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blo _021F95B8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F95AC

	thumb_func_start ov18_021F95CC
ov18_021F95CC: ; 0x021F95CC
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	add r0, sp, #0x10
	mov r2, #2
	bl GetPokemonSpriteCharAndPlttNarcIds
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	mov r2, #0x30
	mov r3, #0x48
	bl PokepicManager_CreatePokepic
	str r0, [r4, #0x20]
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov18_021F95CC

	thumb_func_start ov18_021F95F8
ov18_021F95F8: ; 0x021F95F8
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov18_021F95F8

	thumb_func_start ov18_021F95FC
ov18_021F95FC: ; 0x021F95FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #1
	bne _021F961A
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	sub r5, r5, r0
	b _021F962A
_021F961A:
	cmp r0, #2
	bne _021F962A
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	lsr r0, r0, #1
	sub r5, r5, r0
_021F962A:
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F95FC

	thumb_func_start ov18_021F9648
ov18_021F9648: ; 0x021F9648
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov18_021F95FC
	add r0, r4, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov18_021F9648

	thumb_func_start ov18_021F967C
ov18_021F967C: ; 0x021F967C
	lsl r1, r0, #2
	ldr r0, _021F9684 ; =ov18_021FBE10
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021F9684: .word ov18_021FBE10
	thumb_func_end ov18_021F967C

	thumb_func_start ov18_021F9688
ov18_021F9688: ; 0x021F9688
	ldr r1, _021F9690 ; =ov18_021FBDFC
	ldrb r0, [r1, r0]
	bx lr
	nop
_021F9690: .word ov18_021FBDFC
	thumb_func_end ov18_021F9688

	thumb_func_start ov18_021F9694
ov18_021F9694: ; 0x021F9694
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl ov18_021E5900
	add r6, r0, #0
	add r0, r5, #0
	bl ov18_021E5904
	add r1, r0, #0
	str r4, [sp]
	add r0, r6, #0
	mov r2, #1
	add r3, sp, #4
	bl GfGfxLoader_GetCharData
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0x80
	ldr r5, [r0, #0x14]
	add r0, r4, #0
	bl Heap_AllocAtEnd
	mov r1, #0
	mov r2, #0x80
	add r4, r0, #0
	bl memset
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x80
	mov r2, #0x40
	bl memcpy
	add r0, r4, #0
	add r0, #0x40
	add r1, r5, #0
	mov r2, #0x40
	bl memcpy
	add r0, r6, #0
	bl Heap_Free
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov18_021F9694


    .rodata

ov18_021FBD50:
	.word 0x00000020, 0x00010000, 0x00004000, 0x00000000
	.size ov18_021FBD50,.-ov18_021FBD50

	.global ov18_021FBD60
	.balign 4, 0
ov18_021FBD60:
	.word 0x00000000, 0x00000000, 0x00000800, 0x00000000
	.byte 0x01, 0x00, 0x1E, 0x04, 0x00, 0x02, 0x00, 0x00
	.word 0x00000000
	.size ov18_021FBD60,.-ov18_021FBD60

	.global ov18_021FBD7C
	.balign 4, 0
ov18_021FBD7C:
	.word 0x00000000, 0x00000000, 0x00000800, 0x00000000
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x01, 0x00, 0x00
	.word 0x00000000
	.size ov18_021FBD7C,.-ov18_021FBD7C

	.global ov18_021FBD98
	.balign 4, 0
ov18_021FBD98:
	.word 0x00000000, 0x00000000, 0x00000800, 0x00000000
	.byte 0x01, 0x00, 0x1D, 0x04, 0x00, 0x03, 0x00, 0x00
	.word 0x00000000
	.size ov18_021FBD98,.-ov18_021FBD98

	.global ov18_021FBDB4
	.balign 2, 0
ov18_021FBDB4:
	.byte 0x01, 0x02, 0x00, 0x1C, 0x02, 0x02
	.short 0x03C8
	.byte 0x01, 0x0F, 0x03, 0x04, 0x02, 0x00
	.short 0x03C0
	.byte 0x01, 0x13, 0x03, 0x09, 0x02, 0x00
	.short 0x03AE
	.byte 0x01, 0x0D, 0x05, 0x12, 0x02, 0x00
	.short 0x038A
	.byte 0x01, 0x02, 0x11, 0x1C, 0x06, 0x01
	.short 0x02E2
	.byte 0x01, 0x12, 0x0B, 0x05, 0x02, 0x01
	.short 0x02D8
	.byte 0x01, 0x17, 0x0B, 0x08, 0x02, 0x01
	.short 0x02C8
	.byte 0x01, 0x12, 0x0D, 0x05, 0x02, 0x01
	.short 0x02BE
	.byte 0x01, 0x17, 0x0D, 0x08, 0x02, 0x01
	.short 0x02AE
	.size ov18_021FBDB4,.-ov18_021FBDB4

	.global ov18_021FBDFC
ov18_021FBDFC:
	.byte 0x00, 0x02, 0x00, 0x03
	.byte 0x01, 0x01, 0x03, 0x02, 0x00, 0x00, 0x02, 0x02, 0x01, 0x01, 0x01, 0x00, 0x02, 0x03, 0x00, 0x00
	.size ov18_021FBDFC,.-ov18_021FBDFC

	.global ov18_021FBE10
	.balign 4, 0
ov18_021FBE10:
	.word 0x00000024
	.word 0x0000002A
	.word 0x00000032
	.word 0x0000002E
	.word 0x0000002C
	.word 0x00000029
	.word 0x0000002F
	.word 0x0000002B
	.word 0x0000002D
	.word 0x00000024
	.word 0x00000025
	.word 0x00000027
	.word 0x00000026
	.word 0x00000028
	.word 0x00000033
	.word 0x00000031
	.word 0x00000034
	.word 0x00000030
	.size ov18_021FBE10,.-ov18_021FBE10
