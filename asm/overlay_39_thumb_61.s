#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02228140
	.public ov39_02228308
	.extern ov39_02228418
	.extern ov39_02228440
	.extern ov39_022285CC
	.extern ov39_022288A0
	.extern ov39_02228B6C
	.extern ov39_0222AA20

	.text

	.text
	thumb_func_start ov39_02228140
ov39_02228140: ; 0x02228140
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
	ldr r2, _022282EC ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _022282F0 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _022282F4 ; =0xFFFF1FFF
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
	mov r1, #0x7c
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r1, #0xf6
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x7c
	bl OverlayManager_CreateAndGetData
	mov r2, #0xf6
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl OverlayManager_GetArgs
	str r0, [r5]
	mov r0, #0x7c
	bl BgConfig_Alloc
	str r0, [r5, #4]
	mov r0, #0x40
	mov r1, #0x7c
	bl GF_CreateVramTransferManager
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	ldr r0, [r5, #4]
	bl ov39_02228440
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x7c
	bl MessageFormat_New_Custom
	str r0, [r5, #0x20]
	ldr r2, _022282F8 ; =0x00000307
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x7c
	bl NewMsgDataFromNarc
	str r0, [r5, #0x24]
	ldr r2, _022282FC ; =0x0000030A
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x7c
	bl NewMsgDataFromNarc
	mov r2, #0x32
	str r0, [r5, #0x28]
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #4
	mov r3, #0x7c
	bl NewMsgDataFromNarc
	str r0, [r5, #0x2c]
	mov r0, #0xb4
	mov r1, #0x7c
	bl String_New
	str r0, [r5, #0x34]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x7c
	bl String_New
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	mov r1, #0x1f
	bl NewString_ReadMsgData
	str r0, [r5, #0x38]
	add r0, r5, #0
	bl ov39_022285CC
	add r0, r5, #0
	bl ov39_022288A0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x7c
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _02228300 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02228304 ; =ov39_02228418
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	ldr r1, [r5]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _022282B8
	bl sub_0203A880
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #8
	bl ov39_02228B6C
	b _022282CA
_022282B8:
	ldr r0, [r1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _022282C6
	mov r0, #1
	str r0, [r5, #8]
	b _022282CA
_022282C6:
	mov r0, #0
	str r0, [r5, #8]
_022282CA:
	ldr r0, [r5]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #0x7c]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022282EC: .word 0xFFFFE0FF
_022282F0: .word 0x04001000
_022282F4: .word 0xFFFF1FFF
_022282F8: .word 0x00000307
_022282FC: .word 0x0000030A
_02228300: .word gSystem + 0x60
_02228304: .word ov39_02228418
	thumb_func_end ov39_02228140

	thumb_func_start ov39_02228308
ov39_02228308: ; 0x02228308
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _02228322
	cmp r1, #1
	beq _02228330
	cmp r1, #2
	beq _0222835C
	b _02228368
_02228322:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02228368
	mov r0, #1
	str r0, [r5]
	b _02228368
_02228330:
	ldr r6, [r4, #8]
	ldr r1, _0222836C ; =ov39_0222AA20
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _02228352
	add r1, r4, #0
	mov r2, #0
	add r1, #0x94
	str r2, [r1]
	add r1, r4, #0
	add r1, #0x9c
	str r2, [r1]
	add r4, #0x98
	str r2, [r4]
_02228352:
	cmp r0, #1
	bne _02228368
	mov r0, #2
	str r0, [r5]
	b _02228368
_0222835C:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02228368
	mov r0, #1
	pop {r4, r5, r6, pc}
_02228368:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222836C: .word ov39_0222AA20
	thumb_func_end ov39_02228308

