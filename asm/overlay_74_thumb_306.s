#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02232F9C
	.extern ConvertRSStringToDPStringInternational
	.extern PmAgbCartridge_GetLanguage
	.extern ov74_02231A1C
	.extern ov74_02232B18
	.extern ov74_02232F5C
	.extern ov74_02233F84
	.extern ov74_0223C980
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
	thumb_func_start ov74_02232F9C
ov74_02232F9C: ; 0x02232F9C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov74_02233F84
	add r4, r0, #0
	bl PmAgbCartridge_GetLanguage
	add r3, r0, #0
	add r0, r4, #0
	add r1, sp, #8
	mov r2, #8
	bl ConvertRSStringToDPStringInternational
	mov r0, #0x4c
	bl MessageFormat_New
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x4c
	bl String_New
	add r1, sp, #8
	add r6, r0, #0
	bl CopyU16ArrayToString
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl BufferString
	add r0, r5, #0
	bl ov74_02232B18
	ldr r0, [r5]
	mov r2, #0x18
	lsl r1, r0, #2
	ldr r0, _02233020 ; =ov74_0223C980
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	bl ov74_02231A1C
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_Delete
	add r0, r5, #0
	bl ov74_02232F5C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02233020: .word ov74_0223C980
	thumb_func_end ov74_02232F9C

