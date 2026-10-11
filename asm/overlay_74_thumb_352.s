#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223589C
	.extern ov74_0223D48C
	.extern ov74_0223D654
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
	thumb_func_start ov74_0223589C
ov74_0223589C: ; 0x0223589C
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, _022358B4 ; =ov74_0223D48C
	add r2, r4, #0
	bl G2dRenderer_SetSubSurfaceCoords
	ldr r0, _022358B8 ; =ov74_0223D654
	str r4, [r0, #0x10]
	pop {r4, pc}
	nop
_022358B4: .word ov74_0223D48C
_022358B8: .word ov74_0223D654
	thumb_func_end ov74_0223589C

