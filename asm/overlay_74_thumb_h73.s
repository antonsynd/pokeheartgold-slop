#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222AB70
	.extern ov74_0222A81C
	.extern ov74_0222A94C
	.extern ov74_0222AA18
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
	thumb_func_start ov74_0222AB70
ov74_0222AB70: ; 0x0222AB70
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ResetAllTextPrinters
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x54
	bl LoadFontPal0
	mov r0, #0
	mov r1, #0x20
	mov r2, #0x54
	bl LoadFontPal0
	ldr r0, [r4, #8]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x54
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #2
	bl LoadUserFrameGfx2
	mov r0, #1
	str r0, [sp]
	mov r0, #0x54
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #3
	bl LoadUserFrameGfx1
	mov r0, #5
	ldr r1, _0222AC18 ; =0x00007D8C
	lsl r0, r0, #0x18
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x18
	bl WindowIsInUse
	cmp r0, #0
	bne _0222ABF4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	add r1, r4, #0
	str r2, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, #0x18
	mov r3, #2
	bl AddWindowParameterized
_0222ABF4:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #0
	bl ov74_0222AA18
	add r0, r5, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov74_0222A94C
	ldr r0, [r4]
	bl ov74_0222A81C
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222AC18: .word 0x00007D8C
	thumb_func_end ov74_0222AB70

