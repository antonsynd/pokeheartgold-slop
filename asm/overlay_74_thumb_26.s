#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229DA0
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
	thumb_func_start ov74_02229DA0
ov74_02229DA0: ; 0x02229DA0
	ldr r1, _02229DB8 ; =ov74_0223D0A4
	ldr r2, [r1]
	add r1, r2, #0
	add r1, #0x27
	ldrb r1, [r1]
	cmp r1, r0
	bne _02229DB6
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #6
	strb r1, [r2, r0]
_02229DB6:
	bx lr
	.balign 4, 0
_02229DB8: .word ov74_0223D0A4
	thumb_func_end ov74_02229DA0

