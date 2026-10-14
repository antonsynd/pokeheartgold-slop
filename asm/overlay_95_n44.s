	.include "macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public HatchEggApp_Init
	.extern ov95_021E5900
	.extern ov95_021E5928
	.extern ov95_021E5954
	.extern ov95_021E59F8
	.extern ov95_021E5A38
	.extern ov95_021E5B24
	.extern ov95_021E619C
	.extern ov95_021E6FC4
	.extern ov95_021E7020

	.text

	.text
	thumb_func_start HatchEggApp_Init
HatchEggApp_Init: ; 0x021E6D70
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r2, #1
	mov r0, #3
	mov r1, #0x46
	lsl r2, r2, #0x12
	bl Heap_Create
	add r0, r5, #0
	mov r1, #0x8c
	mov r2, #0x46
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x8c
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	ldr r0, [r0, #0x10]
	bl Options_GetTextFrameDelay
	str r0, [r4, #0x10]
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl Options_GetFrame
	str r0, [r4, #0x14]
	bl ov95_021E5954
	str r0, [r4, #0x38]
	mov r0, #0x46
	bl PokepicManager_Create
	str r0, [r4, #0x3c]
	mov r0, #0xb4
	mov r1, #0x46
	bl NARC_New
	str r0, [r4, #0x40]
	mov r0, #0x46
	bl BgConfig_Alloc
	str r0, [r4, #4]
	mov r0, #0x40
	mov r1, #0x46
	bl GF_CreateVramTransferManager
	mov r0, #0x46
	mov r1, #1
	mov r2, #0
	bl sub_02016EDC
	str r0, [r4, #0x58]
	mov r0, #0x46
	bl PaletteData_Init
	mov r1, #1
	str r0, [r4, #8]
	bl PaletteData_SetAutoTransparent
	mov r2, #2
	ldr r0, [r4, #8]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x46
	bl PaletteData_AllocBuffers
	mov r1, #2
	ldr r0, [r4, #8]
	lsl r2, r1, #8
	mov r3, #0x46
	bl PaletteData_AllocBuffers
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r2, r1, #9
	mov r3, #0x46
	bl PaletteData_AllocBuffers
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0x10
	mov r2, #9
	mov r3, #0x46
	bl PaletteData_LoadNarc
	bl ov95_021E5900
	bl ov95_021E5928
	bl ov95_021E59F8
	ldr r0, [r4, #4]
	bl ov95_021E5A38
	ldr r0, [r4, #4]
	bl ov95_021E6FC4
	add r0, r4, #4
	bl ov95_021E619C
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x54]
	ldr r2, [r4, #0x50]
	mov r3, #0x46
	bl ov95_021E7020
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	bl Sound_Stop
	ldr r0, _021E6E84 ; =ov95_021E5B24
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E6E84: .word ov95_021E5B24
	thumb_func_end HatchEggApp_Init

