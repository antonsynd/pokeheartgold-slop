#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022364F0
	.extern ov74_0223653C
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
	thumb_func_start ov74_022364F0
ov74_022364F0: ; 0x022364F0
	push {r3, lr}
	ldr r0, _0223650C ; =ov74_0223E2FC
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _02236510 ; =0x00001154
	str r2, [r1, r0]
	bl ov74_0223653C
	cmp r0, #0
	beq _02236508
	mov r0, #1
	pop {r3, pc}
_02236508:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0223650C: .word ov74_0223E2FC
_02236510: .word 0x00001154
	thumb_func_end ov74_022364F0

