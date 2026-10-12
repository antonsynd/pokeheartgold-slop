#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022369D8
	.extern ov74_02229E60
	.extern ov74_0223E304
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
	thumb_func_start ov74_022369D8
ov74_022369D8: ; 0x022369D8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	add r1, sp, #4
	bl ov00_021EC11C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	neg r0, r0
	bl ov00_021E6A70
	ldr r2, _02236A20 ; =0x0000266C
	str r0, [r4, r2]
	ldr r0, [sp]
	neg r1, r0
	add r0, r2, #4
	str r1, [r4, r0]
	add r0, r2, #0
	ldr r1, [sp, #4]
	add r0, #8
	str r1, [r4, r0]
	sub r0, r2, #4
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _02236A24 ; =ov74_0223E304
	add r2, #0x10
	str r1, [r0, #0x10]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, r2]
	bl ov74_02229E60
	ldr r0, _02236A28 ; =0x0000100F
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02236A20: .word 0x0000266C
_02236A24: .word ov74_0223E304
_02236A28: .word 0x0000100F
	thumb_func_end ov74_022369D8

