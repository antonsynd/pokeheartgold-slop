#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236AAC
	.extern ov74_0223E304
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
	thumb_func_start ov74_02236AAC
ov74_02236AAC: ; 0x02236AAC
	ldr r0, _02236AB8 ; =ov74_0223E304
	mov r2, #1
	str r2, [r0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02236AB8: .word ov74_0223E304
	thumb_func_end ov74_02236AAC

