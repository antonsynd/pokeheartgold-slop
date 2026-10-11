#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A538
	.extern ov74_022365FC
	.extern ov74_0223D0A8
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
	thumb_func_start ov74_0222A538
ov74_0222A538: ; 0x0222A538
	push {r3, lr}
	ldr r0, _0222A55C ; =ov74_0223D0A8
	ldr r0, [r0, #0x10]
	cmp r0, #0x28
	beq _0222A54A
	cmp r0, #0x29
	beq _0222A54A
	cmp r0, #0x30
	bne _0222A558
_0222A54A:
	bl ov74_022365FC
	cmp r0, #0
	beq _0222A558
	ldr r0, _0222A55C ; =ov74_0223D0A8
	mov r1, #0x2b
	str r1, [r0, #0x10]
_0222A558:
	mov r0, #0x24
	pop {r3, pc}
	.balign 4, 0
_0222A55C: .word ov74_0223D0A8
	thumb_func_end ov74_0222A538

