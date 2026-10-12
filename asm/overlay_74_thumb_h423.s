#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235C10
	.extern ov74_02235728
	.extern ov74_0223589C
	.extern ov74_02235930
	.extern ov74_02235B14
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
	thumb_func_start ov74_02235C10
ov74_02235C10: ; 0x02235C10
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	mov r0, #0x34
	mov r1, #0xa
	mov r2, #0
	mov r3, #0xb
	bl ov74_02235728
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov74_0223589C
	mov r0, #1
	mov r1, #0x82
	str r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0x80
	mov r3, #0
	bl ov74_02235930
	mov r2, #0x82
	lsl r2, r2, #2
	add r6, #8
	str r0, [r5, r2]
	cmp r4, #7
	bgt _02235C68
	cmp r4, #1
	blt _02235CDA
	beq _02235C6C
	cmp r4, #2
	beq _02235CA2
	cmp r4, #7
	beq _02235CC0
	add sp, #8
	pop {r4, r5, r6, pc}
_02235C68:
	cmp r4, #0xd
	bne _02235CDA
_02235C6C:
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	mov r1, #0x85
	lsl r1, r1, #2
	add r3, r0, #0
	add r0, r5, r1
	str r0, [sp]
	ldr r0, _02235CE0 ; =0x00000E94
	sub r1, #0xc
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r6, #0
	add r2, r4, #0
	bl ov74_02235B14
	add sp, #8
	pop {r4, r5, r6, pc}
_02235CA2:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _02235CE0 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #0
	bl ov74_02235B14
	add sp, #8
	pop {r4, r5, r6, pc}
_02235CC0:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _02235CE0 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #1
	bl ov74_02235B14
_02235CDA:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02235CE0: .word 0x00000E94
	thumb_func_end ov74_02235C10

