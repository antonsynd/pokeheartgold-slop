#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233B58
	.extern ov74_02233A88
	.extern ov74_02233AB8
	.extern ov74_02233ACC
	.extern ov74_0223D33C
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
	thumb_func_start ov74_02233B58
ov74_02233B58: ; 0x02233B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r1, #0
	str r6, [sp, #4]
	add r1, r2, #0
	str r6, [r1]
	ldr r1, _02233BEC ; =ov74_0223D33C
	add r7, r0, #0
	str r6, [r1, #4]
	mov r1, #0xe
	str r2, [sp]
	add r4, r6, #0
	mul r7, r1
_02233B74:
	add r0, r4, #0
	mov r1, #0xe
	bl _s32_div_f
	add r0, r1, r7
	add r1, r5, #0
	bl ov74_02233AB8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl DC_FlushRange
	ldr r0, _02233BF0 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02233BF4 ; =0x08012025
	cmp r1, r0
	bne _02233BC6
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233BF8 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov74_02233ACC
	add r1, r0, #0
	add r0, r5, #0
	bl ov74_02233A88
	ldr r1, _02233BFC ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02233BC6
	ldr r0, _02233C00 ; =0x00000FFC
	ldr r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, _02233BF8 ; =0x00000FF4
	ldrh r1, [r5, r0]
	mov r0, #1
	lsl r0, r1
	orr r6, r0
_02233BC6:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02233B74
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02233BE4
	ldr r0, _02233C04 ; =0x00003FFF
	cmp r6, r0
	bne _02233BDE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233BDE:
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02233BE4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233BEC: .word ov74_0223D33C
_02233BF0: .word 0x00000FF8
_02233BF4: .word 0x08012025
_02233BF8: .word 0x00000FF4
_02233BFC: .word 0x00000FF6
_02233C00: .word 0x00000FFC
_02233C04: .word 0x00003FFF
	thumb_func_end ov74_02233B58

