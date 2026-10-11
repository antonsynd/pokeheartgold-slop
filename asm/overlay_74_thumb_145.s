#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222EEB0
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
	thumb_func_start ov74_0222EEB0
ov74_0222EEB0: ; 0x0222EEB0
	push {r4, lr}
	sub sp, #0x18
	ldr r1, _0222EF14 ; =0x00002BB4
	add r4, r0, #0
	ldr r2, [r4, r1]
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
	mov r3, #2
	mov r0, #0x2a
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	bl BufferIntegerAsString
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
	.balign 4, 0
_0222EF14: .word 0x00002BB4
	thumb_func_end ov74_0222EEB0

