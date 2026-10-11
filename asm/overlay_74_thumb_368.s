#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236140
	.extern ov74_0223D454
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
	thumb_func_start ov74_02236140
ov74_02236140: ; 0x02236140
	push {r3, lr}
	ldr r0, _02236158 ; =ov74_0223D454
	ldr r0, [r0, #0x18]
	bl Save_Cancel
	ldr r0, _02236158 ; =ov74_0223D454
	mov r1, #3
	str r1, [r0, #0x14]
	mov r0, #4
	bl sub_0201A738
	pop {r3, pc}
	.balign 4, 0
_02236158: .word ov74_0223D454
	thumb_func_end ov74_02236140

