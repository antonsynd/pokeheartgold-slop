#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A174
	.extern ov74_0222A130
	.extern ov74_022360A0
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
	thumb_func_start ov74_0222A174
ov74_0222A174: ; 0x0222A174
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r5, r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r4, #0x8c
	add r5, #0xdc
	bl OverlayManager_GetArgs
	ldr r0, [r0, #8]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0222A1A2
	mov r6, #0
	b _0222A1CE
_0222A1A2:
	mov r1, #0x35
	add r2, r4, #0
	mov r0, #0
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r2, #0x4e
	ldrb r2, [r2]
	mov r6, #1
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	bne _0222A1BC
	sub r1, #8
	strb r0, [r5, r1]
_0222A1BC:
	add r0, sp, #8
	bl GF_RTC_CopyDate
	add r0, sp, #8
	bl RTC_ConvertDateToDay
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
_0222A1CE:
	ldr r0, [sp]
	bl Save_MysteryGift_Get
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r7, r0, #0
	bl SaveMysteryGift_ReceivedFlagSet
	add r4, #0x4e
	ldrb r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222A204
	ldrh r0, [r5]
	cmp r0, #3
	bne _0222A204
	ldr r1, [r5, #4]
	ldr r0, _0222A234 ; =0x00000215
	cmp r1, r0
	bne _0222A204
	add r0, r7, #0
	add r1, r5, #0
	bl SaveMysteryGift_TrySetSpecialCard
	b _0222A21C
_0222A204:
	cmp r6, #0
	bne _0222A214
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	bl SaveMysteryGift_TryInsertGift
	b _0222A21C
_0222A214:
	add r0, r7, #0
	add r1, r5, #0
	bl SaveMysteryGift_TryInsertCard
_0222A21C:
	ldr r0, [sp]
	bl ov74_022360A0
	ldr r1, _0222A238 ; =0x000029EC
	ldr r0, [sp, #4]
	mov r2, #0
	str r2, [r0, r1]
	ldr r2, _0222A23C ; =ov74_0222A130
	sub r1, r1, #4
	str r2, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A234: .word 0x00000215
_0222A238: .word 0x000029EC
_0222A23C: .word ov74_0222A130
	thumb_func_end ov74_0222A174

