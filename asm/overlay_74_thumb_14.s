#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229C0C
	.extern ov74_0223D0A4
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
	thumb_func_start ov74_02229C0C
ov74_02229C0C: ; 0x02229C0C
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02229C40 ; =ov74_0223D0A4
	add r5, r4, #0
_02229C14:
	ldr r0, [r6]
	add r0, r0, r5
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _02229C36
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #1
	bne _02229C36
	add r0, r4, #0
	bl sub_02034818
	ldr r1, [r6]
	add r1, r1, r5
	str r0, [r1, #0x28]
_02229C36:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02229C14
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02229C40: .word ov74_0223D0A4
	thumb_func_end ov74_02229C0C

