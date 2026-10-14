#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022352A0
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
	thumb_func_start ov74_022352A0
ov74_022352A0: ; 0x022352A0
	push {r3, r4, r5, r6}
	add r4, r0, #0
	mov r0, #0
	ldr r6, _022352C8 ; =ov74_0223D454
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r5, #0x75
_022352B0:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	sub r5, r5, #1
	bne _022352B0
	stmia r6!, {r0, r1}
	ldr r0, _022352CC ; =ov74_0223D454
	mov r1, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_022352C8: .word ov74_0223D454
_022352CC: .word ov74_0223D454
	thumb_func_end ov74_022352A0

