#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223563C
	.extern _0223B710
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
	thumb_func_start ov74_0223563C
ov74_0223563C: ; 0x0223563C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02235674 ; =_0223B710
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _02235678 ; =ov74_0223D454
	mov r1, #0x10
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	ldr r1, _02235678 ; =ov74_0223D454
	mov r0, #0x1e
	ldr r1, [r1, #8]
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02235674: .word _0223B710
_02235678: .word ov74_0223D454
	thumb_func_end ov74_0223563C

