#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D7A4
	.extern ov74_0222D11C
	.extern ov74_0222D1D4
	.extern ov74_0223C2E0
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
	thumb_func_start ov74_0222D7A4
ov74_0222D7A4: ; 0x0222D7A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222D7C8 ; =0x00002BD0
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #2
	bl ov74_0222D1D4
	mov r0, #0
	str r0, [sp]
	ldr r1, _0222D7CC ; =ov74_0223C2E0
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov74_0222D11C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222D7C8: .word 0x00002BD0
_0222D7CC: .word ov74_0223C2E0
	thumb_func_end ov74_0222D7A4

