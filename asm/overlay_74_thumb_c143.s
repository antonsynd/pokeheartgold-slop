#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222DF2C
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
	thumb_func_start ov74_0222DF2C
ov74_0222DF2C: ; 0x0222DF2C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0222E034 ; =0x00003130
	mov r5, #0x15
	add r4, r0, r1
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	lsl r5, r5, #0xe
	cmp r1, #0
	bne _0222DF44
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222DF44:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _0222DF92
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	add r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r2, r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	mov r1, #0xfa
	lsl r1, r1, #2
	cmp r2, r1
	ble _0222DFCC
	mov r2, #0
	add r1, r0, #0
	str r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
	sub r0, r0, #4
	mov r5, #0xa8
	str r2, [r4, r0]
	b _0222DFCC
_0222DF92:
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	sub r1, r0, #4
	str r2, [r4, r1]
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xa
	cmp r1, r2
	bge _0222DFCC
	mov r1, #0
	lsl r3, r2, #2
	add r2, r0, #0
	str r1, [r4, r0]
	sub r2, #8
	str r3, [r4, r2]
	sub r0, r0, #4
	str r1, [r4, r0]
_0222DFCC:
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02014A4C
	add r2, r0, #0
	mov r0, #0x54
	add r3, r0, #0
	add r3, #0xfc
_0222DFDE:
	asr r1, r5, #0xb
	lsr r1, r1, #0x14
	add r1, r5, r1
	asr r1, r1, #0xc
	bpl _0222DFEA
	mov r1, #0
_0222DFEA:
	cmp r1, #0xa8
	ble _0222DFF0
	mov r1, #0xa8
_0222DFF0:
	lsl r6, r3, #1
	add r7, r2, r6
	sub r6, r1, r0
	strh r6, [r7, #6]
	ldrh r6, [r7, #6]
	sub r1, r0, r1
	add r3, r3, #4
	strh r6, [r7, #2]
	mov r6, #0xa8
	sub r6, r6, r0
	lsl r6, r6, #3
	add r6, r2, r6
	strh r1, [r6, #6]
	ldrh r1, [r6, #6]
	add r0, r0, #1
	strh r1, [r6, #2]
	ldr r1, _0222E038 ; =0x00000C08
	ldr r1, [r4, r1]
	add r5, r5, r1
	cmp r0, #0xa8
	blt _0222DFDE
	mov r1, #6
	add r0, r2, #0
	lsl r1, r1, #8
	bl DC_FlushRange
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02014A8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E034: .word 0x00003130
_0222E038: .word 0x00000C08
	thumb_func_end ov74_0222DF2C

