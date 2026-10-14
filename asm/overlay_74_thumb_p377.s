#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233ACC
	.extern sPmAgbRomHeader
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
	thumb_func_start ov74_02233ACC
ov74_02233ACC: ; 0x02233ACC
	cmp r0, #0
	bne _02233ADA
	ldr r0, _02233B00 ; =sPmAgbRomHeader + 0x68
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02233ADA:
	cmp r0, #4
	bne _02233AEE
	ldr r0, _02233B00 ; =sPmAgbRomHeader + 0x68
	ldr r1, [r0, #0x24]
	mov r0, #0xba
	lsl r0, r0, #6
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02233AEE:
	cmp r0, #0xd
	bne _02233AF8
	mov r0, #0x7d
	lsl r0, r0, #4
	bx lr
_02233AF8:
	mov r0, #0x3e
	lsl r0, r0, #6
	bx lr
	nop
_02233B00: .word sPmAgbRomHeader + 0x68
	thumb_func_end ov74_02233ACC

