#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223653C
	.extern ov74_02236168
	.extern ov74_022361B8
	.extern ov74_02236570
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
	thumb_func_start ov74_0223653C
ov74_0223653C: ; 0x0223653C
	push {r3, lr}
	mov r0, #3
	bl ov74_02236168
	ldr r0, _02236568 ; =ov74_0223E2FC
	ldr r1, _0223656C ; =ov74_02236570
	ldr r0, [r0]
	mov r2, #2
	bl WM_Initialize
	cmp r0, #2
	beq _02236562
	bl ov74_022361B8
	mov r0, #0xa
	bl ov74_02236168
	mov r0, #0
	pop {r3, pc}
_02236562:
	mov r0, #1
	pop {r3, pc}
	nop
_02236568: .word ov74_0223E2FC
_0223656C: .word ov74_02236570
	thumb_func_end ov74_0223653C

