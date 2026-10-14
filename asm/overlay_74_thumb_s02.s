#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02228D20
	.extern ov74_02228C84
	.extern ov74_0223D080
	.extern ov74_0223D090
	.extern ov74_IntToWstring5
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
	thumb_func_start ov74_02228D20
ov74_02228D20: ; 0x02228D20
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	bl PlayerProfile_GetNamePtr
	ldr r5, _02228D58 ; =ov74_0223D080
	add r4, r0, #0
	mov r6, #0
_02228D30:
	ldrh r0, [r4]
	bl ov74_02228C84
	strh r0, [r5]
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #8
	blt _02228D30
	ldr r0, [r7, #0x10]
	bl PlayerProfile_GetTrainerID_VisibleHalf
	add r1, r0, #0
	ldr r0, _02228D5C ; =ov74_0223D090
	bl ov74_IntToWstring5
	ldr r0, _02228D60 ; =ov74_0223D080
	mov r1, #0
	strh r1, [r0, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02228D58: .word ov74_0223D080
_02228D5C: .word ov74_0223D090
_02228D60: .word ov74_0223D080
	thumb_func_end ov74_02228D20

