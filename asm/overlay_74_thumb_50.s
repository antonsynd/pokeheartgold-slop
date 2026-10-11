#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A43C
	.extern ov74_0222A89C
	.extern ov74_0223C240
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
	thumb_func_start ov74_0222A43C
ov74_0222A43C: ; 0x0222A43C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r1, [r0, #0x48]
	add r4, #0x48
	cmp r1, #0
	bne _0222A470
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0]
	add r1, r4, #0
	mov r3, #0x17
	bl AddWindowParameterized
_0222A470:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl DrawFrameAndWindow1
	mov r0, #4
	str r0, [sp]
	ldr r1, _0222A490 ; =ov74_0223C240
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov74_0222A89C
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
_0222A490: .word ov74_0223C240
	thumb_func_end ov74_0222A43C

