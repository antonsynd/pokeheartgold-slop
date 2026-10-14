#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236A54
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
	thumb_func_start ov74_02236A54
ov74_02236A54: ; 0x02236A54
	push {r3, r4}
	ldr r3, _02236A6C ; =ov74_0223E304
	mov r4, #0
	str r4, [r3]
	str r4, [r3, #0xc]
	ldr r3, _02236A70 ; =0x00001650
	str r2, [r0, r3]
	ldr r0, _02236A74 ; =0x00001012
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_02236A6C: .word ov74_0223E304
_02236A70: .word 0x00001650
_02236A74: .word 0x00001012
	thumb_func_end ov74_02236A54

