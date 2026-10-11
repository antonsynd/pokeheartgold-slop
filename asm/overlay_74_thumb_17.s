#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229C60
	.extern ov74_02229BC0
	.extern ov74_02229C80
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
	thumb_func_start ov74_02229C60
ov74_02229C60: ; 0x02229C60
	push {r3, lr}
	ldr r0, _02229C78 ; =ov74_0223D0A4
	ldr r0, [r0]
	add r0, #0x27
	ldrb r0, [r0]
	bl sub_02037E1C
	ldr r0, _02229C7C ; =ov74_02229C80
	mov r1, #0
	bl ov74_02229BC0
	pop {r3, pc}
	.balign 4, 0
_02229C78: .word ov74_0223D0A4
_02229C7C: .word ov74_02229C80
	thumb_func_end ov74_02229C60

