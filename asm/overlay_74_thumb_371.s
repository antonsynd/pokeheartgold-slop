#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022361B8
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_022361B8
ov74_022361B8: ; 0x022361B8
	ldr r1, _022361CC ; =ov74_0223E2FC
	ldr r3, [r1]
	ldr r1, _022361D0 ; =0x00001150
	ldr r2, [r3, r1]
	sub r2, #9
	cmp r2, #1
	bls _022361CA
	add r1, r1, #4
	str r0, [r3, r1]
_022361CA:
	bx lr
	.balign 4, 0
_022361CC: .word ov74_0223E2FC
_022361D0: .word 0x00001150
	thumb_func_end ov74_022361B8

