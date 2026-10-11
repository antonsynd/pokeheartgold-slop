#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222CE6C
	.extern ov74_0223D0A8
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
	thumb_func_start ov74_0222CE6C
ov74_0222CE6C: ; 0x0222CE6C
	cmp r0, #4
	bhi _0222CEB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CE7C: ; jump table
	.short _0222CE86 - _0222CE7C - 2 ; case 0
	.short _0222CE8E - _0222CE7C - 2 ; case 1
	.short _0222CE96 - _0222CE7C - 2 ; case 2
	.short _0222CE9E - _0222CE7C - 2 ; case 3
	.short _0222CEB2 - _0222CE7C - 2 ; case 4
_0222CE86:
	ldr r0, _0222CEBC ; =ov74_0223D0A8
	mov r1, #0x28
	str r1, [r0, #0x10]
	bx lr
_0222CE8E:
	ldr r0, _0222CEBC ; =ov74_0223D0A8
	mov r1, #0x29
	str r1, [r0, #0x10]
	bx lr
_0222CE96:
	ldr r0, _0222CEBC ; =ov74_0223D0A8
	mov r1, #0x2a
	str r1, [r0, #0x10]
	bx lr
_0222CE9E:
	ldr r0, _0222CEBC ; =ov74_0223D0A8
	ldr r1, [r0, #0x10]
	cmp r1, #0x2a
	bne _0222CEAC
	mov r1, #0x2c
	str r1, [r0, #0x10]
	bx lr
_0222CEAC:
	mov r1, #0x2f
	str r1, [r0, #0x10]
	bx lr
_0222CEB2:
	ldr r0, _0222CEBC ; =ov74_0223D0A8
	mov r1, #0x30
	str r1, [r0, #0x10]
_0222CEB8:
	bx lr
	nop
_0222CEBC: .word ov74_0223D0A8
	thumb_func_end ov74_0222CE6C

