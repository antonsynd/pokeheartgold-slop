#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222947C
	.extern ov74_02235A68
	.extern ov74_02235DC4
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
	thumb_func_start ov74_0222947C
ov74_0222947C: ; 0x0222947C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #6
	add r4, r5, r0
	mov r2, #0xd6
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r3, [r5]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	bl NewMsgDataFromNarc
	add r6, r0, #0
	ldr r0, [r5]
	bl MessageFormat_New
	mov r1, #0xc6
	mov r2, #7
	lsl r1, r1, #6
	strh r2, [r5, r1]
	ldr r3, [r5]
	add r1, r6, #0
	mov r2, #0x4e
	str r0, [sp]
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0x41
	lsl r1, r1, #2
	add r7, r0, #0
	add r1, r4, r1
	mov r2, #0x24
	bl CopyStringToU16Array
	add r0, r7, #0
	bl String_Delete
	mov r0, #8
	bl ov74_02235A68
	add r7, r0, #0
	mov r0, #7
	bl ov74_02235A68
	str r0, [sp, #4]
	mov r0, #0xc
	bl ov74_02235A68
	str r0, [sp, #8]
	mov r0, #0xa
	bl ov74_02235A68
	str r0, [sp, #0xc]
	mov r0, #0xb
	bl ov74_02235A68
	ldr r1, [sp, #0xc]
	mov r2, #0x53
	orr r1, r0
	ldr r0, [sp, #8]
	lsl r2, r2, #2
	orr r1, r0
	ldr r0, [sp, #4]
	mov r3, #1
	orr r0, r1
	orr r0, r7
	str r0, [r4, r2]
	mov r1, #1
	add r0, r2, #4
	strh r1, [r4, r0]
	add r0, r2, #6
	add r1, r0, #0
	ldrb r1, [r4, r1]
	bic r1, r3
	add r3, r0, #0
	strb r1, [r4, r3]
	add r1, r0, #0
	ldrb r1, [r4, r1]
	mov r3, #2
	bic r1, r3
	add r3, r0, #0
	strb r1, [r4, r3]
	add r1, r0, #0
	ldrb r3, [r4, r1]
	mov r1, #4
	orr r3, r1
	add r1, r0, #0
	strb r3, [r4, r1]
	ldrb r3, [r4, r1]
	mov r1, #8
	orr r3, r1
	add r1, r0, #0
	strb r3, [r4, r1]
	ldrb r2, [r4, r0]
	mov r1, #0x20
	bic r2, r1
	strb r2, [r4, r0]
	ldr r0, [sp]
	ldr r3, [r5]
	add r1, r6, #0
	mov r2, #0x4d
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0x55
	lsl r1, r1, #2
	add r7, r0, #0
	add r1, r4, r1
	mov r2, #0xfa
	bl CopyStringToU16Array
	add r0, r7, #0
	bl String_Delete
	mov r0, #0xd2
	lsl r0, r0, #2
	mov r1, #0
	ldr r3, _022295C0 ; =0x000001EA
	strb r1, [r4, r0]
	add r2, r0, #2
	strh r3, [r4, r2]
	add r2, r0, #4
	strh r1, [r4, r2]
	add r2, r0, #6
	strh r1, [r4, r2]
	add r0, #8
	strb r1, [r4, r0]
	add r0, sp, #0x10
	bl GF_RTC_CopyDate
	add r0, sp, #0x10
	bl RTC_ConvertDateToDay
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	bl MessageFormat_Delete
	add r0, r6, #0
	bl DestroyMsgData
	ldr r0, _022295C4 ; =0x00003174
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #3
	bl SaveMysteryGift_TryInsertGift
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov74_02235DC4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022295C0: .word 0x000001EA
_022295C4: .word 0x00003174
	thumb_func_end ov74_0222947C

