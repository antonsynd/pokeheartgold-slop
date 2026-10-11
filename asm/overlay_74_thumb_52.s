#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A4CC
	.extern ov74_02229E28
	.extern ov74_02229F60
	.extern ov74_0222AA18
	.extern ov74_0223D0A8
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
	thumb_func_start ov74_0222A4CC
ov74_0222A4CC: ; 0x0222A4CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov74_0222AA18
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov74_02229F60
	add r0, r4, #0
	mov r1, #1
	bl ov74_02229E28
	ldr r0, _0222A500 ; =ov74_0223D0A8
	mov r1, #0x25
	str r1, [r0, #0x10]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222A500: .word ov74_0223D0A8
	thumb_func_end ov74_0222A4CC

