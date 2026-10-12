#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222F6C4
	.public ov74_0222F7D4
	.public ov74_0222FB8C
	.extern gApp_MainMenu_SelectOption_MysteryGift
	.extern ov74_0222EC60
	.extern ov74_0222ECD4
	.extern ov74_0222ECEC
	.extern ov74_0222EDC0
	.extern ov74_0222EFF0
	.extern ov74_0222F024
	.extern ov74_0222F1BC
	.extern ov74_0222F314
	.extern ov74_0222F404
	.extern ov74_0222F624
	.extern ov74_0222F688
	.extern ov74_0222FCA4
	.extern ov74_0222FCC4
	.extern ov74_022358BC
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_0222F6C4
ov74_0222F6C4: ; 0x0222F6C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0222F7CC ; =0x000030E8
	mov r5, #0x15
	add r4, r0, r1
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	lsl r5, r5, #0xe
	cmp r1, #0
	bne _0222F6DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222F6DC:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _0222F72A
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	add r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r2, r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	mov r1, #0xfa
	lsl r1, r1, #2
	cmp r2, r1
	ble _0222F764
	mov r2, #0
	add r1, r0, #0
	str r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
	sub r0, r0, #4
	mov r5, #0xa8
	str r2, [r4, r0]
	b _0222F764
_0222F72A:
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	sub r1, r0, #4
	str r2, [r4, r1]
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xa
	cmp r1, r2
	bge _0222F764
	mov r1, #0
	lsl r3, r2, #2
	add r2, r0, #0
	str r1, [r4, r0]
	sub r2, #8
	str r3, [r4, r2]
	sub r0, r0, #4
	str r1, [r4, r0]
_0222F764:
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02014A4C
	add r2, r0, #0
	mov r0, #0x54
	add r3, r0, #0
	add r3, #0xfc
_0222F776:
	asr r1, r5, #0xb
	lsr r1, r1, #0x14
	add r1, r5, r1
	asr r1, r1, #0xc
	bpl _0222F782
	mov r1, #0
_0222F782:
	cmp r1, #0xa8
	ble _0222F788
	mov r1, #0xa8
_0222F788:
	lsl r6, r3, #1
	add r7, r2, r6
	sub r6, r1, r0
	strh r6, [r7, #6]
	ldrh r6, [r7, #6]
	sub r1, r0, r1
	add r3, r3, #4
	strh r6, [r7, #2]
	mov r6, #0xa8
	sub r6, r6, r0
	lsl r6, r6, #3
	add r6, r2, r6
	strh r1, [r6, #6]
	ldrh r1, [r6, #6]
	add r0, r0, #1
	strh r1, [r6, #2]
	ldr r1, _0222F7D0 ; =0x00000C08
	ldr r1, [r4, r1]
	add r5, r5, r1
	cmp r0, #0xa8
	blt _0222F776
	mov r1, #6
	add r0, r2, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02014A8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F7CC: .word 0x000030E8
_0222F7D0: .word 0x00000C08
	thumb_func_end ov74_0222F6C4

	thumb_func_start ov74_0222F7D4
ov74_0222F7D4: ; 0x0222F7D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0x1e
	bls _0222F7EA
	b _0222FB2C
_0222F7EA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222F7F6: ; jump table
	.short _0222F834 - _0222F7F6 - 2 ; case 0
	.short _0222F874 - _0222F7F6 - 2 ; case 1
	.short _0222F886 - _0222F7F6 - 2 ; case 2
	.short _0222F8FC - _0222F7F6 - 2 ; case 3
	.short _0222F92E - _0222F7F6 - 2 ; case 4
	.short _0222F956 - _0222F7F6 - 2 ; case 5
	.short _0222F976 - _0222F7F6 - 2 ; case 6
	.short _0222F9AA - _0222F7F6 - 2 ; case 7
	.short _0222F9CE - _0222F7F6 - 2 ; case 8
	.short _0222F9F4 - _0222F7F6 - 2 ; case 9
	.short _0222FA20 - _0222F7F6 - 2 ; case 10
	.short _0222FA5A - _0222F7F6 - 2 ; case 11
	.short _0222FB2C - _0222F7F6 - 2 ; case 12
	.short _0222FAD6 - _0222F7F6 - 2 ; case 13
	.short _0222FB2C - _0222F7F6 - 2 ; case 14
	.short _0222FB2C - _0222F7F6 - 2 ; case 15
	.short _0222FB2C - _0222F7F6 - 2 ; case 16
	.short _0222FB2C - _0222F7F6 - 2 ; case 17
	.short _0222FB2C - _0222F7F6 - 2 ; case 18
	.short _0222FB2C - _0222F7F6 - 2 ; case 19
	.short _0222FA7E - _0222F7F6 - 2 ; case 20
	.short _0222FA8A - _0222F7F6 - 2 ; case 21
	.short _0222FB2C - _0222F7F6 - 2 ; case 22
	.short _0222FAC6 - _0222F7F6 - 2 ; case 23
	.short _0222FB2C - _0222F7F6 - 2 ; case 24
	.short _0222FB2C - _0222F7F6 - 2 ; case 25
	.short _0222FB2C - _0222F7F6 - 2 ; case 26
	.short _0222FB00 - _0222F7F6 - 2 ; case 27
	.short _0222FB0C - _0222F7F6 - 2 ; case 28
	.short _0222FB1C - _0222F7F6 - 2 ; case 29
	.short _0222FB2C - _0222F7F6 - 2 ; case 30
_0222F834:
	add r0, r6, #0
	bl OverlayManager_GetArgs
	ldr r1, [r0, #8]
	ldr r0, _0222FB50 ; =0x00002BA4
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	bl Save_MysteryGift_Get
	ldr r1, _0222FB54 ; =0x00002BA0
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetOptionsAddr
	ldr r1, _0222FB58 ; =0x00002BA8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl Options_GetFrame
	ldr r1, _0222FB5C ; =0x00002BAC
	str r0, [r4, r1]
	sub r1, #0xc
	ldr r0, [r4, r1]
	mov r1, #4
	bl SaveMysteryGift_CardGetByIdx
	ldr r1, _0222FB60 ; =0x00002BB4
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5]
	b _0222FB2C
_0222F874:
	bl ov74_0222FCA4
	ldr r0, _0222FB64 ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov74_0222FCC4
	mov r0, #2
	str r0, [r5]
	b _0222FB2C
_0222F886:
	bl ResetAllTextPrinters
	add r0, r4, #0
	mov r1, #0
	bl ov74_0222F314
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x55
	bl LoadFontPal0
	mov r1, #0
	str r1, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222FB64 ; =0x000029FC
	mov r2, #1
	ldr r0, [r4, r0]
	mov r3, #0xd
	bl LoadUserFrameGfx1
	mov r0, #1
	str r0, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222FB64 ; =0x000029FC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0xe
	bl LoadUserFrameGfx1
	ldr r0, _0222FB5C ; =0x00002BAC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x13
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222FB64 ; =0x000029FC
	mov r3, #0xa
	ldr r0, [r4, r0]
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222F024
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov74_0222EFF0
	b _0222FB2C
_0222F8FC:
	ldr r0, _0222FB68 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0222F91A
	ldr r0, _0222FB6C ; =SEQ_SE_DP_SELECT
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	add r3, r5, #0
	bl ov74_0222EFF0
	b _0222FB2C
_0222F91A:
	mov r0, #1
	tst r0, r1
	bne _0222F922
	b _0222FB2C
_0222F922:
	ldr r0, _0222FB6C ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #4
	str r0, [r5]
	b _0222FB2C
_0222F92E:
	ldr r1, _0222FB70 ; =0x00002BC4
	mov r3, #0xa
	add r1, r4, r1
	mov r2, #7
	lsl r3, r3, #6
	bl ov74_0222F1BC
	ldr r3, _0222FB74 ; =0x00002BE4
	mov r2, #8
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0x10
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov74_0222F1BC
	mov r0, #5
	str r0, [r5]
	b _0222FB2C
_0222F956:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov74_0222F404
	ldr r0, _0222FB68 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0222FA28
	ldr r0, _0222FB6C ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0xb
	str r0, [r5]
	b _0222FB2C
_0222F976:
	ldr r0, _0222FB78 ; =SEQ_SE_DP_CARD2
	bl PlaySE
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0222FB70 ; =0x00002BC4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECEC
	ldr r0, _0222FB7C ; =0x00002BD4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECD4
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov74_0222F624
	mov r0, #7
	str r0, [r5]
	b _0222FB2C
_0222F9AA:
	bl ov74_0222F6C4
	cmp r0, #0
	beq _0222FA28
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov74_0222F024
	ldr r2, _0222FB80 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov74_0222F624
	mov r0, #8
	str r0, [r5]
	b _0222FB2C
_0222F9CE:
	bl ov74_0222F6C4
	ldr r0, _0222FB68 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222FA28
	ldr r0, _0222FB78 ; =SEQ_SE_DP_CARD2
	bl PlaySE
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov74_0222F624
	mov r0, #9
	str r0, [r5]
	b _0222FB2C
_0222F9F4:
	bl ov74_0222F6C4
	cmp r0, #0
	beq _0222FA28
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222F024
	ldr r2, _0222FB80 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov74_0222F624
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0xa
	str r0, [r5]
	b _0222FB2C
_0222FA20:
	bl ov74_0222F6C4
	cmp r0, #0
	bne _0222FA2A
_0222FA28:
	b _0222FB2C
_0222FA2A:
	ldr r0, _0222FB70 ; =0x00002BC4
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x13
	mov r3, #0xa
	bl DrawFrameAndWindow2
	ldr r0, _0222FB7C ; =0x00002BD4
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xa
	mov r3, #0xe
	bl DrawFrameAndWindow1
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	bl ov74_0222F688
	mov r0, #5
	str r0, [r5]
	b _0222FB2C
_0222FA5A:
	bl ov74_0222EDC0
	ldr r0, _0222FB70 ; =0x00002BC4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECEC
	ldr r0, _0222FB70 ; =0x00002BC4
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222FB70 ; =0x00002BC4
	add r0, r4, r0
	bl RemoveWindow
	mov r0, #3
	str r0, [r5]
	b _0222FB2C
_0222FA7E:
	mov r1, #0
	mov r2, #0x15
	add r3, r5, #0
	bl ov74_0222EFF0
	b _0222FB2C
_0222FA8A:
	bl ov74_0222EC60
	ldr r0, _0222FB70 ; =0x00002BC4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECEC
	ldr r0, _0222FB7C ; =0x00002BD4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECD4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222F024
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x55
	bl LoadFontPal0
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	add r3, r5, #0
	bl ov74_0222EFF0
	b _0222FB2C
_0222FAC6:
	bl sub_02037D78
	cmp r0, #0
	bne _0222FB2C
	ldr r0, _0222FB84 ; =0x00002BF8
	ldr r0, [r4, r0]
	str r0, [r5]
	b _0222FB2C
_0222FAD6:
	ldr r0, _0222FB68 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222FB2C
	ldr r0, _0222FB70 ; =0x00002BC4
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222ECEC
	ldr r0, _0222FB70 ; =0x00002BC4
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222FB70 ; =0x00002BC4
	add r0, r4, r0
	bl RemoveWindow
	mov r0, #3
	str r0, [r5]
	b _0222FB2C
_0222FB00:
	mov r1, #0
	mov r2, #0x1d
	add r3, r5, #0
	bl ov74_0222EFF0
	b _0222FB2C
_0222FB0C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222FB2C
	ldr r0, _0222FB84 ; =0x00002BF8
	ldr r0, [r4, r0]
	str r0, [r5]
	b _0222FB2C
_0222FB1C:
	bl ov74_0222EC60
	add r0, r4, #0
	bl ov74_0222F688
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222FB2C:
	ldr r0, _0222FB88 ; =0x00002BFC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222FB38
	bl SpriteList_RenderAndAnimateSprites
_0222FB38:
	bl ov74_022358BC
	mov r0, #0x3d
	lsl r0, r0, #8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FB4A
	add r0, r4, #0
	blx r1
_0222FB4A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222FB50: .word 0x00002BA4
_0222FB54: .word 0x00002BA0
_0222FB58: .word 0x00002BA8
_0222FB5C: .word 0x00002BAC
_0222FB60: .word 0x00002BB4
_0222FB64: .word 0x000029FC
_0222FB68: .word gSystem
_0222FB6C: .word SEQ_SE_DP_SELECT
_0222FB70: .word 0x00002BC4
_0222FB74: .word 0x00002BE4
_0222FB78: .word SEQ_SE_DP_CARD2
_0222FB7C: .word 0x00002BD4
_0222FB80: .word 0x00708000
_0222FB84: .word 0x00002BF8
_0222FB88: .word 0x00002BFC
	thumb_func_end ov74_0222F7D4

	thumb_func_start ov74_0222FB8C
ov74_0222FB8C: ; 0x0222FB8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl OverlayManager_GetData
	add r7, r0, #0
	ldr r0, _0222FC38 ; =0x00002A08
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_0222FB9E:
	ldr r0, _0222FC38 ; =0x00002A08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222FBB2
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
_0222FBB2:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #0xb
	blo _0222FB9E
	ldr r0, _0222FC3C ; =0x00002BC4
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _0222FBD2
	add r0, r7, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222FC3C ; =0x00002BC4
	add r0, r7, r0
	bl RemoveWindow
_0222FBD2:
	ldr r0, _0222FC40 ; =0x00002BD4
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _0222FBE8
	add r0, r7, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222FC40 ; =0x00002BD4
	add r0, r7, r0
	bl RemoveWindow
_0222FBE8:
	ldr r0, _0222FC44 ; =0x000029FC
	mov r1, #0
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222FC44 ; =0x000029FC
	mov r1, #1
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222FC44 ; =0x000029FC
	mov r1, #2
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222FC44 ; =0x000029FC
	mov r1, #3
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222FC44 ; =0x000029FC
	ldr r0, [r7, r0]
	bl Heap_Free
	ldr r0, _0222FC48 ; =FS_OVERLAY_ID(OVY_74)
	ldr r1, _0222FC4C ; =gApp_MainMenu_SelectOption_MysteryGift
	bl RegisterMainOverlay
	mov r0, #0x59
	bl Heap_Destroy
	ldr r0, [sp]
	bl OverlayManager_FreeData
	mov r0, #0x55
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FC38: .word 0x00002A08
_0222FC3C: .word 0x00002BC4
_0222FC40: .word 0x00002BD4
_0222FC44: .word 0x000029FC
_0222FC48: .word FS_OVERLAY_ID(OVY_74)
_0222FC4C: .word gApp_MainMenu_SelectOption_MysteryGift
	thumb_func_end ov74_0222FB8C

