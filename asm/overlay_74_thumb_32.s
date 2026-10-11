#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229E14
	.extern _0223B368
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
	thumb_func_start ov74_02229E14
ov74_02229E14: ; 0x02229E14
	ldr r3, _02229E20 ; =sub_0203410C
	add r2, r0, #0
	ldr r0, _02229E24 ; =_0223B368
	mov r1, #2
	bx r3
	nop
_02229E20: .word sub_0203410C
_02229E24: .word _0223B368
	thumb_func_end ov74_02229E14

