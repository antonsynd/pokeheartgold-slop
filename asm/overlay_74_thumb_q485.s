#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ConvertRSStringToDPStringInternational
	.extern _0223B760
	.extern ov74_02236F30
	.extern ov74_02236F44
	.extern ov74_02236F80
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
	thumb_func_start ConvertRSStringToDPStringInternational
ConvertRSStringToDPStringInternational: ; 0x02236FB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r3, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r5, #1
	beq _02236FCC
	mov r2, #1
	b _02236FCE
_02236FCC:
	mov r2, #0
_02236FCE:
	ldr r0, [sp, #8]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #0xc]
	beq _02237056
	ldr r1, _02237064 ; =_0223B760
	lsl r0, r2, #1
	ldr r4, [sp, #4]
	add r7, r1, r0
_02236FE0:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	cmp r0, #0xff
	beq _02237056
	cmp r0, #0xf7
	blo _0223701A
	ldr r0, [sp, #8]
	sub r3, r0, #1
	cmp r3, #0xa
	blo _02236FF6
	mov r3, #0xa
_02236FF6:
	mov r1, #0
	cmp r3, #0
	ble _0223700C
	mov r0, #0x6b
	ldr r2, [sp, #4]
	lsl r0, r0, #2
_02237002:
	add r1, r1, #1
	strh r0, [r2]
	add r2, r2, #2
	cmp r1, r3
	blt _02237002
_0223700C:
	ldr r0, [sp, #4]
	ldr r2, _02237068 ; =0x0000FFFF
	lsl r1, r1, #1
	strh r2, [r0, r1]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223701A:
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #1
	beq _0223702C
	cmp r0, #0xea
	beq _02237036
	cmp r0, #0xeb
	beq _02237040
	b _0223704A
_0223702C:
	add r0, r5, #0
	bl ov74_02236F30
	strh r0, [r4]
	b _0223704C
_02237036:
	add r0, r5, #0
	bl ov74_02236F44
	strh r0, [r4]
	b _0223704C
_02237040:
	add r0, r5, #0
	bl ov74_02236F80
	strh r0, [r4]
	b _0223704C
_0223704A:
	strh r0, [r4]
_0223704C:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blo _02236FE0
_02237056:
	ldr r2, _02237068 ; =0x0000FFFF
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	strh r2, [r0, r1]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02237064: .word _0223B760
_02237068: .word 0x0000FFFF
	thumb_func_end ConvertRSStringToDPStringInternational

