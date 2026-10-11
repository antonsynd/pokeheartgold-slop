#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229C80
	.extern ov74_02229BC0
	.extern ov74_02229CB4
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
	thumb_func_start ov74_02229C80
ov74_02229C80: ; 0x02229C80
	push {r3, lr}
	bl sub_02037EC8
	cmp r0, #0
	beq _02229CA8
	ldr r0, _02229CAC ; =ov74_0223D0A4
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xf
	lsl r0, r0, #6
	strb r2, [r1, r0]
	bl sub_02034434
	mov r0, #0xab
	bl sub_02037AC0
	ldr r0, _02229CB0 ; =ov74_02229CB4
	mov r1, #0
	bl ov74_02229BC0
_02229CA8:
	pop {r3, pc}
	nop
_02229CAC: .word ov74_0223D0A4
_02229CB0: .word ov74_02229CB4
	thumb_func_end ov74_02229C80

