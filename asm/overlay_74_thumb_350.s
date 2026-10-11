#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223567C
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
	thumb_func_start ov74_0223567C
ov74_0223567C: ; 0x0223567C
	ldr r0, _0223568C ; =ov74_0223D454
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02235688
	mov r0, #1
	bx lr
_02235688:
	mov r0, #0
	bx lr
	.balign 4, 0
_0223568C: .word ov74_0223D454
	thumb_func_end ov74_0223567C

