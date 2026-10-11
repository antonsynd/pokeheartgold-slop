#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02228C84
	.extern ov74_0223BD68
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
	thumb_func_start ov74_02228C84
ov74_02228C84: ; 0x02228C84
	push {r3, r4}
	ldr r4, _02228CAC ; =ov74_0223BD68
	ldr r1, _02228CB0 ; =0x00000123
	mov r3, #0
_02228C8C:
	ldrh r2, [r4, #2]
	cmp r0, r2
	bne _02228C9C
	ldr r0, _02228CAC ; =ov74_0223BD68
	lsl r1, r3, #2
	ldrh r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02228C9C:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r1
	blo _02228C8C
	mov r0, #0x3f
	pop {r3, r4}
	bx lr
	nop
_02228CAC: .word ov74_0223BD68
_02228CB0: .word 0x00000123
	thumb_func_end ov74_02228C84

