#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223539C
	.public ov74_022353FC
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
	thumb_func_start ov74_0223539C
ov74_0223539C: ; 0x0223539C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022353F0 ; =ov74_0223D454
	add r5, r1, #0
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, _022353F4 ; =ov74_0223D454
	cmp r0, #0
	bne _022353CC
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	b _022353E4
_022353CC:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r3, _022353F8 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
_022353E4:
	cmp r4, #0
	beq _022353EA
	str r6, [r4]
_022353EA:
	str r5, [r7, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022353F0: .word ov74_0223D454
_022353F4: .word ov74_0223D454
_022353F8: .word 0x00007FFF
	thumb_func_end ov74_0223539C

	thumb_func_start ov74_022353FC
ov74_022353FC: ; 0x022353FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, _02235410 ; =ov74_0223D454
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223540E
	ldr r0, [r5, #0xc]
	str r0, [r4]
_0223540E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02235410: .word ov74_0223D454
	thumb_func_end ov74_022353FC

