#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022365FC
	.extern ov74_022365AC
	.extern ov74_02236620
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_022365FC
ov74_022365FC: ; 0x022365FC
	push {r3, lr}
	ldr r0, _02236618 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _0223661C ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02236610
	bl ov74_022365AC
	pop {r3, pc}
_02236610:
	bl ov74_02236620
	pop {r3, pc}
	nop
_02236618: .word ov74_0223E2FC
_0223661C: .word 0x00001150
	thumb_func_end ov74_022365FC

