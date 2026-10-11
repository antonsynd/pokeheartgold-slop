#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229DE0
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
	thumb_func_start ov74_02229DE0
ov74_02229DE0: ; 0x02229DE0
	ldr r1, _02229DF0 ; =ov74_0223D0A4
	mov r2, #1
	ldr r1, [r1]
	add r1, r1, r0
	ldr r0, _02229DF4 ; =0x000003C1
	strb r2, [r1, r0]
	bx lr
	nop
_02229DF0: .word ov74_0223D0A4
_02229DF4: .word 0x000003C1
	thumb_func_end ov74_02229DE0

