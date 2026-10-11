#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222FE5C
	.public ov74_0222FE68
	.extern ov74_022311F4
	.extern ov74_02231214
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
	thumb_func_start ov74_0222FE5C
ov74_0222FE5C: ; 0x0222FE5C
	push {r3, lr}
	bl ov74_022311F4
	str r0, [sp]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov74_0222FE5C

	thumb_func_start ov74_0222FE68
ov74_0222FE68: ; 0x0222FE68
	push {r3, lr}
	bl ov74_02231214
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r0, [r1, r0]
	pop {r3, pc}
	thumb_func_end ov74_0222FE68

