#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222E1F4
	.extern ov74_02229D0C
	.extern ov74_0222CFFC
	.extern ov74_0222D024
	.extern ov74_0222D098
	.extern ov74_0222D0EC
	.extern ov74_0222D104
	.extern ov74_0222D248
	.extern ov74_0222D414
	.extern ov74_0222D448
	.extern ov74_0222D7A4
	.extern ov74_0222D7F0
	.extern ov74_0222D824
	.extern ov74_0222D9E0
	.extern ov74_0222DAF8
	.extern ov74_0222DB70
	.extern ov74_0222DC60
	.extern ov74_0222DE8C
	.extern ov74_0222DEF0
	.extern ov74_0222DF2C
	.extern ov74_0222E060
	.extern ov74_0222E0D4
	.extern ov74_0222E7EC
	.extern ov74_0222E898
	.extern ov74_0222E8B4
	.extern ov74_0222EA88
	.extern ov74_0222EB28
	.extern ov74_0222FCA4
	.extern ov74_0222FCC4
	.extern ov74_022358BC
	.extern ov74_02235ED0
	.extern ov74_02236128
	.extern ov74_0223615C
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
	thumb_func_start ov74_0222E1F4
ov74_0222E1F4: ; 0x0222E1F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0x1e
	bls _0222E20A
	b _0222E79C
_0222E20A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222E216: ; jump table
	.short _0222E254 - _0222E216 - 2 ; case 0
	.short _0222E2C2 - _0222E216 - 2 ; case 1
	.short _0222E2D4 - _0222E216 - 2 ; case 2
	.short _0222E34A - _0222E216 - 2 ; case 3
	.short _0222E3C8 - _0222E216 - 2 ; case 4
	.short _0222E3F0 - _0222E216 - 2 ; case 5
	.short _0222E410 - _0222E216 - 2 ; case 6
	.short _0222E444 - _0222E216 - 2 ; case 7
	.short _0222E468 - _0222E216 - 2 ; case 8
	.short _0222E48E - _0222E216 - 2 ; case 9
	.short _0222E4BA - _0222E216 - 2 ; case 10
	.short _0222E4F4 - _0222E216 - 2 ; case 11
	.short _0222E518 - _0222E216 - 2 ; case 12
	.short _0222E744 - _0222E216 - 2 ; case 13
	.short _0222E524 - _0222E216 - 2 ; case 14
	.short _0222E530 - _0222E216 - 2 ; case 15
	.short _0222E540 - _0222E216 - 2 ; case 16
	.short _0222E54C - _0222E216 - 2 ; case 17
	.short _0222E58E - _0222E216 - 2 ; case 18
	.short _0222E5E8 - _0222E216 - 2 ; case 19
	.short _0222E646 - _0222E216 - 2 ; case 20
	.short _0222E652 - _0222E216 - 2 ; case 21
	.short _0222E6A2 - _0222E216 - 2 ; case 22
	.short _0222E68E - _0222E216 - 2 ; case 23
	.short _0222E6D6 - _0222E216 - 2 ; case 24
	.short _0222E6F2 - _0222E216 - 2 ; case 25
	.short _0222E734 - _0222E216 - 2 ; case 26
	.short _0222E76E - _0222E216 - 2 ; case 27
	.short _0222E77A - _0222E216 - 2 ; case 28
	.short _0222E78C - _0222E216 - 2 ; case 29
	.short _0222E79C - _0222E216 - 2 ; case 30
_0222E254:
	add r0, r6, #0
	bl OverlayManager_GetArgs
	ldr r1, [r0, #8]
	ldr r0, _0222E5A4 ; =0x00002BA4
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	bl Save_MysteryGift_Get
	ldr r1, _0222E5A8 ; =0x00002BA0
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetOptionsAddr
	ldr r1, _0222E5AC ; =0x00002BA8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl Options_GetFrame
	ldr r1, _0222E5B0 ; =0x00002BAC
	str r0, [r4, r1]
	sub r1, #0xc
	ldr r0, [r4, r1]
	mov r1, #0
	bl SaveMysteryGift_CardGetByIdx
	ldr r1, _0222E5B4 ; =0x00002BB4
	str r0, [r4, r1]
	sub r1, #0x14
	ldr r0, [r4, r1]
	mov r1, #1
	bl SaveMysteryGift_CardGetByIdx
	ldr r1, _0222E5B8 ; =0x00002BB8
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #2
	bl SaveMysteryGift_CardGetByIdx
	ldr r1, _0222E5BC ; =0x00002BBC
	mov r2, #1
	str r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov74_0222DAF8
	mov r1, #0xaf
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5]
	b _0222E79C
_0222E2C2:
	bl ov74_0222FCA4
	ldr r0, _0222E5C0 ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov74_0222FCC4
	mov r0, #2
	str r0, [r5]
	b _0222E79C
_0222E2D4:
	bl ResetAllTextPrinters
	add r0, r4, #0
	mov r1, #0
	bl ov74_0222DB70
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x55
	bl LoadFontPal0
	mov r1, #0
	str r1, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222E5C0 ; =0x000029FC
	mov r2, #1
	ldr r0, [r4, r0]
	mov r3, #0xd
	bl LoadUserFrameGfx1
	mov r0, #1
	str r0, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222E5C0 ; =0x000029FC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0xe
	bl LoadUserFrameGfx1
	ldr r0, _0222E5B0 ; =0x00002BAC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x13
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	ldr r0, _0222E5C0 ; =0x000029FC
	mov r3, #0xa
	ldr r0, [r4, r0]
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222D824
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
_0222E34A:
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r6, [r4, r1]
	ldr r1, _0222E5C4 ; =gSystem
	mov r2, #0x40
	ldr r1, [r1, #0x48]
	add r3, r1, #0
	tst r3, r2
	beq _0222E368
	add r1, r6, #0
	sub r2, #0x41
	bl ov74_0222DAF8
	add r6, r0, #0
	b _0222E3A4
_0222E368:
	mov r2, #0x80
	tst r2, r1
	beq _0222E37A
	add r1, r6, #0
	mov r2, #1
	bl ov74_0222DAF8
	add r6, r0, #0
	b _0222E3A4
_0222E37A:
	mov r0, #2
	tst r0, r1
	beq _0222E394
	ldr r0, _0222E5C8 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E3A4
_0222E394:
	mov r0, #1
	tst r0, r1
	beq _0222E3A4
	ldr r0, _0222E5C8 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #4
	str r0, [r5]
_0222E3A4:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, r6
	bne _0222E3B0
	b _0222E79C
_0222E3B0:
	ldr r0, _0222E5CC ; =SEQ_SE_DP_CARD2
	bl PlaySE
	mov r0, #0xaf
	lsl r0, r0, #6
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222D824
	b _0222E79C
_0222E3C8:
	ldr r1, _0222E5D0 ; =0x00002BD0
	mov r3, #0xa
	add r1, r4, r1
	mov r2, #7
	lsl r3, r3, #6
	bl ov74_0222D9E0
	ldr r3, _0222E5D4 ; =0x00002BF0
	mov r2, #8
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0x10
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov74_0222D9E0
	mov r0, #5
	str r0, [r5]
	b _0222E79C
_0222E3F0:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov74_0222DC60
	ldr r0, _0222E5C4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0222E4C2
	ldr r0, _0222E5C8 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0xb
	str r0, [r5]
	b _0222E79C
_0222E410:
	ldr r0, _0222E5CC ; =SEQ_SE_DP_CARD2
	bl PlaySE
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0222E5D0 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D104
	ldr r0, _0222E5D8 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D0EC
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov74_0222DE8C
	mov r0, #7
	str r0, [r5]
	b _0222E79C
_0222E444:
	bl ov74_0222DF2C
	cmp r0, #0
	beq _0222E4C2
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov74_0222D824
	ldr r2, _0222E5DC ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov74_0222DE8C
	mov r0, #8
	str r0, [r5]
	b _0222E79C
_0222E468:
	bl ov74_0222DF2C
	ldr r0, _0222E5C4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222E4C2
	ldr r0, _0222E5CC ; =SEQ_SE_DP_CARD2
	bl PlaySE
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov74_0222DE8C
	mov r0, #9
	str r0, [r5]
	b _0222E79C
_0222E48E:
	bl ov74_0222DF2C
	cmp r0, #0
	beq _0222E4C2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222D824
	ldr r2, _0222E5DC ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov74_0222DE8C
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0xa
	str r0, [r5]
	b _0222E79C
_0222E4BA:
	bl ov74_0222DF2C
	cmp r0, #0
	bne _0222E4C4
_0222E4C2:
	b _0222E79C
_0222E4C4:
	ldr r0, _0222E5D0 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x13
	mov r3, #0xa
	bl DrawFrameAndWindow2
	ldr r0, _0222E5D8 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xa
	mov r3, #0xe
	bl DrawFrameAndWindow1
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	bl ov74_0222DEF0
	mov r0, #5
	str r0, [r5]
	b _0222E79C
_0222E4F4:
	bl ov74_0222D448
	ldr r0, _0222E5D0 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D104
	ldr r0, _0222E5D0 ; =0x00002BD0
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222E5D0 ; =0x00002BD0
	add r0, r4, r0
	bl RemoveWindow
	mov r0, #3
	str r0, [r5]
	b _0222E79C
_0222E518:
	ldr r2, _0222E5E0 ; =ov74_0222D414
	add r0, r6, #0
	add r1, r5, #0
	bl ov74_0222DC60
	b _0222E79C
_0222E524:
	ldr r2, _0222E5E0 ; =ov74_0222D414
	add r0, r6, #0
	add r1, r5, #0
	bl ov74_0222DC60
	b _0222E79C
_0222E530:
	ldr r1, _0222E5D8 ; =0x00002BE0
	ldr r2, _0222E5E4 ; =0x00010200
	add r1, r4, r1
	bl ov74_0222D7A4
	mov r0, #0xe
	str r0, [r5]
	b _0222E79C
_0222E540:
	mov r1, #0
	mov r2, #0x11
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
_0222E54C:
	bl ov74_0222D448
	ldr r0, _0222E5D0 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D104
	ldr r0, _0222E5D0 ; =0x00002BD0
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222E5D0 ; =0x00002BD0
	add r0, r4, r0
	bl RemoveWindow
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	bl ov74_0222D824
	ldr r0, _0222E5C0 ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov74_0222D248
	add r0, r4, #0
	bl ov74_0222CFFC
	add r0, r4, #0
	bl ov74_0222D098
	mov r0, #0x12
	str r0, [r5]
	b _0222E79C
_0222E58E:
	bl ov74_0222E7EC
	bl sub_0203A880
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
	.balign 4, 0
_0222E5A4: .word 0x00002BA4
_0222E5A8: .word 0x00002BA0
_0222E5AC: .word 0x00002BA8
_0222E5B0: .word 0x00002BAC
_0222E5B4: .word 0x00002BB4
_0222E5B8: .word 0x00002BB8
_0222E5BC: .word 0x00002BBC
_0222E5C0: .word 0x000029FC
_0222E5C4: .word gSystem
_0222E5C8: .word SEQ_SE_DP_SELECT
_0222E5CC: .word SEQ_SE_DP_CARD2
_0222E5D0: .word 0x00002BD0
_0222E5D4: .word 0x00002BF0
_0222E5D8: .word 0x00002BE0
_0222E5DC: .word 0x00708000
_0222E5E0: .word ov74_0222D414
_0222E5E4: .word 0x00010200
_0222E5E8:
	mov r6, #0
	add r0, r6, #0
	bl sub_020373B4
	cmp r0, #0
	beq _0222E63A
	add r0, r4, #0
	add r0, #0x90
	bl sub_020358B8
	ldr r1, _0222E7C0 ; =0x00002B08
	add r0, r4, #0
	add r1, r4, r1
	bl ov74_0222E8B4
	add r6, r0, #0
	bne _0222E62A
	ldr r0, _0222E7C4 ; =0x00002C30
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222E62A
	ldr r0, _0222E7C0 ; =0x00002B08
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	ldr r0, _0222E7C0 ; =0x00002B08
	add r0, r4, r0
	bl CopyWindowToVram
	ldr r0, _0222E7C4 ; =0x00002C30
	mov r1, #0
	str r1, [r4, r0]
_0222E62A:
	ldr r1, _0222E7C8 ; =0x00002AF8
	add r0, r4, #0
	add r1, r4, r1
	add r2, r6, #0
	bl ov74_0222EA88
	ldr r0, _0222E7C4 ; =0x00002C30
	str r6, [r4, r0]
_0222E63A:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov74_0222E0D4
	b _0222E79C
_0222E646:
	mov r1, #0
	mov r2, #0x15
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
_0222E652:
	bl ov74_0222D024
	ldr r0, _0222E7CC ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D104
	ldr r0, _0222E7D0 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D0EC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov74_0222D824
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x55
	bl LoadFontPal0
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
_0222E68E:
	bl sub_02037D78
	cmp r0, #0
	beq _0222E698
	b _0222E79C
_0222E698:
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5]
	b _0222E79C
_0222E6A2:
	ldr r0, _0222E7D4 ; =0x00002C34
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222E79C
	ldr r1, _0222E7D8 ; =0x00002DD8
	add r0, r4, #0
	ldr r2, [r4]
	add r0, #0x90
	add r1, r4, r1
	bl ov74_02235ED0
	ldr r0, _0222E7D8 ; =0x00002DD8
	mov r1, #0xd6
	add r0, r4, r0
	lsl r1, r1, #2
	bl ov74_02229D0C
	add r0, r4, #0
	bl ov74_0222E060
	mov r0, #0x18
	str r0, [r5]
	b _0222E79C
_0222E6D6:
	bl ov74_0223615C
	cmp r0, #4
	bne _0222E79C
	mov r0, #0x93
	bl sub_02037AC0
	mov r0, #1
	add r1, r0, #0
	bl sub_020398D4
	mov r0, #0x19
	str r0, [r5]
	b _0222E79C
_0222E6F2:
	bl ov74_0222E898
	cmp r0, #0
	beq _0222E704
	mov r0, #0x93
	bl sub_02037B38
	cmp r0, #1
	bne _0222E79C
_0222E704:
	mov r0, #0
	add r1, r0, #0
	bl sub_020398D4
	bl ov74_02236128
	ldr r1, _0222E7CC ; =0x00002BD0
	mov r3, #0xa
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0x12
	lsl r3, r3, #6
	bl ov74_0222D9E0
	ldr r0, _0222E7DC ; =0x00003D50
	ldr r0, [r4, r0]
	bl sub_0200F450
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x1a
	bl ov74_0222EB28
	b _0222E79C
_0222E734:
	ldr r0, _0222E7E0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222E79C
	mov r0, #0x14
	str r0, [r5]
	b _0222E79C
_0222E744:
	ldr r0, _0222E7E0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222E79C
	ldr r0, _0222E7CC ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov74_0222D104
	ldr r0, _0222E7CC ; =0x00002BD0
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222E7CC ; =0x00002BD0
	add r0, r4, r0
	bl RemoveWindow
	mov r0, #3
	str r0, [r5]
	b _0222E79C
_0222E76E:
	mov r1, #0
	mov r2, #0x1d
	add r3, r5, #0
	bl ov74_0222D7F0
	b _0222E79C
_0222E77A:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222E79C
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5]
	b _0222E79C
_0222E78C:
	bl ov74_0222D024
	add r0, r4, #0
	bl ov74_0222DEF0
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222E79C:
	ldr r0, _0222E7E4 ; =0x00002C44
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222E7A8
	bl SpriteList_RenderAndAnimateSprites
_0222E7A8:
	bl ov74_022358BC
	ldr r0, _0222E7E8 ; =0x00003D48
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222E7B8
	add r0, r4, #0
	blx r1
_0222E7B8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222E7C0: .word 0x00002B08
_0222E7C4: .word 0x00002C30
_0222E7C8: .word 0x00002AF8
_0222E7CC: .word 0x00002BD0
_0222E7D0: .word 0x00002BE0
_0222E7D4: .word 0x00002C34
_0222E7D8: .word 0x00002DD8
_0222E7DC: .word 0x00003D50
_0222E7E0: .word gSystem
_0222E7E4: .word 0x00002C44
_0222E7E8: .word 0x00003D48
	thumb_func_end ov74_0222E1F4

