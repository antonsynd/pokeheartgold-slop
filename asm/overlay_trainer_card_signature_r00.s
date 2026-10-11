#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public TrainerCardSignature_Init
	.public TrainerCardSignature_Main
	.extern ov52_021E837C
	.extern ov52_021E83A4
	.extern ov52_021E83C4
	.extern ov52_021E84CC
	.extern ov52_021E85DC
	.extern ov52_021E86DC
	.extern ov52_021E870C
	.extern ov52_021E888C
	.extern ov52_021E89D4
	.extern ov52_021E921C
	.extern ov52_021E96C0

	.text

	.text
	thumb_func_start TrainerCardSignature_Init
TrainerCardSignature_Init: ; 0x021E80C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #0
	beq _021E80D6
	cmp r1, #1
	bne _021E80D4
	b _021E8216
_021E80D4:
	b _021E8224
_021E80D6:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E822C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E8230 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #3
	mov r1, #0x27
	lsl r2, r2, #6
	bl Heap_Create
	ldr r1, _021E8234 ; =0x00005CB0
	add r0, r6, #0
	mov r2, #0x27
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E8234 ; =0x00005CB0
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x27
	bl BgConfig_Alloc
	str r0, [r4]
	mov r0, #0x5b
	mov r1, #0x27
	bl NARC_New
	add r7, r0, #0
	mov r0, #0x27
	bl MessageFormat_New
	str r0, [r4, #0x10]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xfc
	mov r3, #0x27
	bl NewMsgDataFromNarc
	str r0, [r4, #0x14]
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	bl ov52_021E83A4
	ldr r0, [r4]
	bl ov52_021E83C4
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r6, #0
	bl OverlayManager_GetArgs
	bl Save_TrainerCard_Get
	bl TrainerCard_GetSignature
	ldr r1, _021E8238 ; =0x00005B98
	str r0, [r4, r1]
	add r0, r6, #0
	bl OverlayManager_GetArgs
	bl Save_GameStats_Get
	str r0, [r4, #8]
	add r0, r6, #0
	bl OverlayManager_GetArgs
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov52_021E85DC
	bl sub_020210BC
	mov r0, #1
	bl sub_02021148
	ldr r0, _021E823C ; =ov52_021E837C
	ldr r1, [r4]
	bl Main_SetVBlankIntrCB
	mov r0, #2
	mov r1, #0x27
	bl FontID_Alloc
	add r0, r4, #0
	bl ov52_021E84CC
	bl ov52_021E86DC
	add r0, r4, #0
	add r1, r7, #0
	bl ov52_021E870C
	add r0, r4, #0
	bl ov52_021E888C
	add r0, r4, #0
	add r1, r6, #0
	bl ov52_021E89D4
	mov r1, #0
	mov r0, #0x38
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r2, _021E8240 ; =0x04000304
	ldr r0, _021E8244 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r7, #0
	bl NARC_Delete
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E8224
_021E8216:
	bl OverlayManager_GetData
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E8224:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E822C: .word 0xFFFFE0FF
_021E8230: .word 0x04001000
_021E8234: .word 0x00005CB0
_021E8238: .word 0x00005B98
_021E823C: .word ov52_021E837C
_021E8240: .word 0x04000304
_021E8244: .word 0xFFFF7FFF
	thumb_func_end TrainerCardSignature_Init

	thumb_func_start TrainerCardSignature_Main
TrainerCardSignature_Main: ; 0x021E8248
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021E8262
	cmp r1, #1
	beq _021E8270
	cmp r1, #2
	beq _021E828E
	b _021E829A
_021E8262:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E829A
	mov r0, #1
	str r0, [r5]
	b _021E829A
_021E8270:
	mov r2, #0xc3
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r3, r2, #2
	ldr r2, _021E82A4 ; =ov52_021E96C0
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _021E8284
	blx r2
	str r0, [r5]
_021E8284:
	ldr r0, _021E82A8 ; =0x00004318
	add r0, r4, r0
	bl ov52_021E921C
	b _021E829A
_021E828E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E829A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E829A:
	ldr r0, [r4, #0x3c]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E82A4: .word ov52_021E96C0
_021E82A8: .word 0x00004318
	thumb_func_end TrainerCardSignature_Main

