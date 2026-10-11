#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236168
	.extern ov74_0223CFE4
	.extern ov74_0223D00C
	.extern ov74_0223D014
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
	thumb_func_start ov74_02236168
ov74_02236168: ; 0x02236168
	push {r4, lr}
	ldr r1, _022361A4 ; =ov74_0223E2FC
	add r4, r0, #0
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02236184
	ldr r3, [r1]
	ldr r1, _022361A8 ; =0x00001150
	ldr r0, _022361AC ; =ov74_0223D00C
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _022361B0 ; =ov74_0223CFE4
	ldr r1, [r1, r3]
	blx r2
_02236184:
	ldr r3, _022361A4 ; =ov74_0223E2FC
	ldr r1, _022361A8 ; =0x00001150
	ldr r0, [r3]
	str r4, [r0, r1]
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _022361A0
	ldr r3, [r3]
	ldr r0, _022361B4 ; =ov74_0223D014
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _022361B0 ; =ov74_0223CFE4
	ldr r1, [r1, r3]
	blx r2
_022361A0:
	pop {r4, pc}
	nop
_022361A4: .word ov74_0223E2FC
_022361A8: .word 0x00001150
_022361AC: .word ov74_0223D00C
_022361B0: .word ov74_0223CFE4
_022361B4: .word ov74_0223D014
	thumb_func_end ov74_02236168

