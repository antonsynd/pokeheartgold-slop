#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229D50
	.extern ov74_02229BC0
	.extern ov74_02229C60
	.extern ov74_0223D0A4
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
	thumb_func_start ov74_02229D50
ov74_02229D50: ; 0x02229D50
	ldr r1, _02229D60 ; =ov74_0223D0A4
	ldr r3, _02229D64 ; =ov74_02229BC0
	ldr r1, [r1]
	add r1, #0x27
	strb r0, [r1]
	ldr r0, _02229D68 ; =ov74_02229C60
	mov r1, #0
	bx r3
	.balign 4, 0
_02229D60: .word ov74_0223D0A4
_02229D64: .word ov74_02229BC0
_02229D68: .word ov74_02229C60
	thumb_func_end ov74_02229D50

