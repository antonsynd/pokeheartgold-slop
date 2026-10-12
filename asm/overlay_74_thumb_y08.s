#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229200
	.extern ov74_022352A0
	.extern ov74_022352D0
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
	thumb_func_start ov74_02229200
ov74_02229200: ; 0x02229200
	push {r3, r4, r5, lr}
	mov r3, #2
	ldr r2, _02229288 ; =0x000034DC
	mov r1, #0x53
	lsl r3, r3, #0x10
	add r5, r0, #0
	bl ov74_022352D0
	add r4, r0, #0
	mov r0, #0x53
	str r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	bl Save_PlayerData_GetProfile
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl Save_Pokedex_Get
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #0x14]
	ldr r0, [r4]
	bl ov74_022352A0
	ldr r0, [r4, #8]
	bl Save_MysteryGift_Get
	ldr r1, _0222928C ; =0x00003174
	mov r2, #0x53
	str r0, [r4, r1]
	mov r0, #9
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0x28
	sub r0, #8
	str r1, [r4, r0]
	add r1, r2, #0
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r2, #0xc
	str r0, [r4, r2]
	mov r2, #0x57
	mov r1, #0x59
	lsl r2, r2, #4
	bl Heap_Create
	ldr r1, _02229290 ; =0x0000047E
	mov r0, #9
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02229288: .word 0x000034DC
_0222928C: .word 0x00003174
_02229290: .word 0x0000047E
	thumb_func_end ov74_02229200

