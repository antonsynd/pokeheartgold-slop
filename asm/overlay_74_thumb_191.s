#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02230E7C
	.extern ov74_0223105C
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
	thumb_func_start ov74_02230E7C
ov74_02230E7C: ; 0x02230E7C
	push {r3, lr}
	bl ov74_0223105C
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02230E8C
	mov r0, #0
	pop {r3, pc}
_02230E8C:
	bl WM_GetLinkLevel
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov74_02230E7C

