#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229DF8
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
	thumb_func_start ov74_02229DF8
ov74_02229DF8: ; 0x02229DF8
	push {r3, lr}
	ldr r1, _02229E10 ; =ov74_0223D0A4
	mov r0, #0xf
	ldr r1, [r1]
	bl Heap_FreeExplicit
	ldr r0, _02229E10 ; =ov74_0223D0A4
	mov r1, #0
	str r1, [r0]
	bl sub_02037E9C
	pop {r3, pc}
	.balign 4, 0
_02229E10: .word ov74_0223D0A4
	thumb_func_end ov74_02229DF8

