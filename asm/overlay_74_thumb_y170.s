#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222FFAC
	.extern ov74_022310C4
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
	thumb_func_start ov74_0222FFAC
ov74_0222FFAC: ; 0x0222FFAC
	push {r3, r4, r5, r6, r7, lr}
	bl ov74_022310C4
	add r7, r0, #0
	bl WM_GetAllowedChannel
	add r3, r0, #0
	beq _0222FFF8
	ldrh r2, [r7, #4]
	mov r1, #0
	mov r0, #1
	mov ip, r2
	mov r4, #0x1c
_0222FFC6:
	lsr r6, r2, #0x1f
	lsl r5, r2, #0x1c
	sub r5, r5, r6
	ror r5, r4
	add r5, r6, r5
	add r6, r0, #0
	lsl r6, r5
	add r5, r3, #0
	tst r5, r6
	beq _0222FFF0
	mov r0, ip
	add r0, r0, r1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	add r0, r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0222FFF0:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x10
	blt _0222FFC6
_0222FFF8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov74_0222FFAC

