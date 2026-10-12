#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222FEC8
	.extern ov74_0223115C
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
	thumb_func_start ov74_0222FEC8
ov74_0222FEC8: ; 0x0222FEC8
	push {r3, lr}
	bl ov74_0223115C
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r2, #1
	add r1, r3, #0
	tst r1, r2
	beq _0222FEEE
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r1, #1
	add r0, #0x62
	bic r3, r1
	strh r3, [r0]
	add r0, r2, #0
	pop {r3, pc}
_0222FEEE:
	mov r1, #0x40
	add r2, r3, #0
	tst r2, r1
	beq _0222FF08
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	mov r1, #0x40
	add r0, #0x62
	bic r2, r1
	strh r2, [r0]
	mov r0, #7
	pop {r3, pc}
_0222FF08:
	lsl r1, r1, #6
	tst r1, r3
	beq _0222FF20
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	ldr r1, _0222FF24 ; =0xFFFFEFFF
	add r0, #0x62
	and r1, r2
	strh r1, [r0]
	mov r0, #0xd
	pop {r3, pc}
_0222FF20:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0222FF24: .word 0xFFFFEFFF
	thumb_func_end ov74_0222FEC8

