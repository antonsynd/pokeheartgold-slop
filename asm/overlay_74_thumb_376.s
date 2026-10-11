#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022364C0
	.extern ov74_02236168
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
	thumb_func_start ov74_022364C0
ov74_022364C0: ; 0x022364C0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _022364D0
	mov r0, #0xa
	bl ov74_02236168
	pop {r3, pc}
_022364D0:
	mov r0, #0
	bl ov74_02236168
	ldr r0, _022364E8 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _022364EC ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022364E6
	mov r0, #3
	blx r1
_022364E6:
	pop {r3, pc}
	.balign 4, 0
_022364E8: .word ov74_0223E2FC
_022364EC: .word 0x0000117C
	thumb_func_end ov74_022364C0

