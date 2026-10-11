#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236A78
	.extern ov74_02236ABC
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
	thumb_func_start ov74_02236A78
ov74_02236A78: ; 0x02236A78
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _02236A9C ; =ov74_0223E304
	mov r5, #0
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _02236AA0 ; =0x00001650
	str r3, [r0, r1]
	ldr r0, _02236AA4 ; =0x00001013
	str r0, [r4]
	ldr r0, _02236AA8 ; =ov74_02236ABC
	bl ov00_021ED308
	cmp r0, #0
	bne _02236A9A
	ldr r0, [sp, #0x10]
	str r0, [r4]
_02236A9A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02236A9C: .word ov74_0223E304
_02236AA0: .word 0x00001650
_02236AA4: .word 0x00001013
_02236AA8: .word ov74_02236ABC
	thumb_func_end ov74_02236A78

