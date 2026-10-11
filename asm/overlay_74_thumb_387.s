#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236988
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
	thumb_func_start ov74_02236988
ov74_02236988: ; 0x02236988
	ldr r0, _022369A0 ; =ov74_0223E2FC
	ldr r2, [r0]
	ldr r0, _022369A4 ; =0x00001048
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _0223699A
	sub r0, #0x68
	add r0, r2, r0
	bx lr
_0223699A:
	mov r0, #0
	bx lr
	nop
_022369A0: .word ov74_0223E2FC
_022369A4: .word 0x00001048
	thumb_func_end ov74_02236988

