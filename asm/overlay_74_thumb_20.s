#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229CB8
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
	thumb_func_start ov74_02229CB8
ov74_02229CB8: ; 0x02229CB8
	push {r3, lr}
	ldr r1, _02229CDC ; =ov74_0223D0A4
	ldr r2, [r1]
	cmp r2, #0
	bne _02229CC8
	bl SysTask_Destroy
	pop {r3, pc}
_02229CC8:
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _02229CD8
	add r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _02229CD8
	blx r1
_02229CD8:
	pop {r3, pc}
	nop
_02229CDC: .word ov74_0223D0A4
	thumb_func_end ov74_02229CB8

