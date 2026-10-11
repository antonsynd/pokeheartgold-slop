#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235C10
	.public ov74_02235CE4
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

	thumb_func_start ov74_02235CE4
ov74_02235CE4: ; 0x02235CE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0xf
	bhi _02235D36
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235CFA: ; jump table
	.short _02235D36 - _02235CFA - 2 ; case 0
	.short _02235D36 - _02235CFA - 2 ; case 1
	.short _02235D36 - _02235CFA - 2 ; case 2
	.short _02235D1A - _02235CFA - 2 ; case 3
	.short _02235D36 - _02235CFA - 2 ; case 4
	.short _02235D36 - _02235CFA - 2 ; case 5
	.short _02235D36 - _02235CFA - 2 ; case 6
	.short _02235D36 - _02235CFA - 2 ; case 7
	.short _02235D1E - _02235CFA - 2 ; case 8
	.short _02235D22 - _02235CFA - 2 ; case 9
	.short _02235D28 - _02235CFA - 2 ; case 10
	.short _02235D36 - _02235CFA - 2 ; case 11
	.short _02235D2C - _02235CFA - 2 ; case 12
	.short _02235D36 - _02235CFA - 2 ; case 13
	.short _02235D30 - _02235CFA - 2 ; case 14
	.short _02235D34 - _02235CFA - 2 ; case 15
_02235D1A:
	ldr r4, [r2, #4]
	b _02235D36
_02235D1E:
	ldr r4, _02235D90 ; =0x000001C6
	b _02235D36
_02235D22:
	mov r4, #0x71
	lsl r4, r4, #2
	b _02235D36
_02235D28:
	ldr r4, _02235D94 ; =0x000001C7
	b _02235D36
_02235D2C:
	ldr r4, _02235D98 ; =0x000001D3
	b _02235D36
_02235D30:
	ldr r4, _02235D9C ; =0x000001BA
	b _02235D36
_02235D34:
	ldr r4, _02235DA0 ; =0x000001F5
_02235D36:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl GetItemIndexMapping
	add r7, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl GetItemIndexMapping
	add r4, r0, #0
	bl GetItemIconCell
	add r6, r0, #0
	bl GetItemIconAnim
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x12
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov74_02235728
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov74_0223589C
	mov r3, #0
	mov r1, #0x82
	str r3, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #1
	mov r2, #0x80
	bl ov74_02235930
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02235D90: .word 0x000001C6
_02235D94: .word 0x000001C7
_02235D98: .word 0x000001D3
_02235D9C: .word 0x000001BA
_02235DA0: .word 0x000001F5
	thumb_func_end ov74_02235CE4

