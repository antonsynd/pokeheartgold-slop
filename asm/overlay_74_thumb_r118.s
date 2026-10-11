#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D494
	.public ov74_0222D4E4
	.public ov74_0222D55C
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
	thumb_func_start ov74_0222D494
ov74_0222D494: ; 0x0222D494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5]
	mov r0, #0x25
	add r4, r2, #0
	bl String_New
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #0x24
	add r6, r0, #0
	bl CopyU16ArrayToStringN
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_0222D494

	thumb_func_start ov74_0222D4E4
ov74_0222D4E4: ; 0x0222D4E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	add r6, r1, #0
	ldr r1, [r4, r0]
	add r5, r2, #0
	lsl r2, r1, #2
	add r3, r4, r2
	add r2, r0, #0
	sub r2, #0xc
	ldr r3, [r3, r2]
	ldr r2, _0222D558 ; =0x00000152
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	bne _0222D50C
	mov r2, #0x28
	b _0222D522
_0222D50C:
	sub r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D51C
	bl SaveMysteryGift_HasAnyGift
	cmp r0, #1
	bne _0222D520
_0222D51C:
	mov r2, #0x26
	b _0222D522
_0222D520:
	mov r2, #0x27
_0222D522:
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r3, [r4]
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0222D558: .word 0x00000152
	thumb_func_end ov74_0222D4E4

	thumb_func_start ov74_0222D55C
ov74_0222D55C: ; 0x0222D55C
	push {r4, lr}
	sub sp, #0x18
	mov r1, #0xaf
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, r1]
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, sp, #8
	bl RTC_ConvertDayToDate
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	mov r2, #0x7d
	ldr r3, [sp, #8]
	lsl r2, r2, #4
	add r2, r3, r2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #4
	bl BufferIntegerAsString
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	mov r1, #1
	bl BufferMonthNameAbbr
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x10]
	add r3, r1, #0
	bl BufferIntegerAsString
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov74_0222D55C

