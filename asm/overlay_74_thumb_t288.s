#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231FF4
	.extern AGB_GetBoxMonData
	.extern TranslateAgbSpecies
	.extern ov74_02231D70
	.extern ov74_02231D94
	.extern ov74_02231DB8
	.extern ov74_02231E54
	.extern ov74_02231F30
	.extern ov74_02231FB0
	.extern ov74_0223262C
	.extern ov74_02232678
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
	thumb_func_start ov74_02231FF4
ov74_02231FF4: ; 0x02231FF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0x14
	mov r1, #0x4c
	bl NARC_New
	mov r1, #1
	str r0, [sp, #0x10]
	mov r0, #0x4c
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	mov r7, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0xc]
	add r5, r6, #0
_02232016:
	ldr r0, _02232140 ; =0x0000E880
	ldr r1, _02232144 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #5
	bl AGB_GetBoxMonData
	cmp r0, #0
	beq _022320DA
	ldr r1, _02232144 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl ov74_02231D70
	ldr r1, _02232144 ; =0x0000E884
	str r0, [sp, #0x1c]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov74_02231D94
	ldr r1, _02232144 ; =0x0000E884
	str r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov74_02231DB8
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl TranslateAgbSpecies
	ldr r2, _02232148 ; =gSystem + 0x60
	add r1, r4, #0
	ldrb r2, [r2, #0xa]
	bl ov74_02231E54
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	bl ov74_02231F30
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _02232140 ; =0x0000E880
	ldr r1, _02232144 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #0xc
	bl AGB_GetBoxMonData
	cmp r0, #0
	beq _022320CC
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	b _0223210A
_022320CC:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0223210A
_022320DA:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r3, r7, #0
	bl ov74_02231F30
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0223210A:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, #0x50
	add r5, #0xc
	str r0, [sp, #0xc]
	cmp r7, #0x1e
	bge _0223211A
	b _02232016
_0223211A:
	ldr r0, [sp, #0x14]
	bl Heap_Free
	ldr r0, [sp, #0x10]
	bl NARC_Delete
	ldr r1, _0223214C ; =ov74_02231FB0
	ldr r0, _02232150 ; =0x00012604
	str r1, [r6, r0]
	ldr r1, _02232144 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	bl ov74_02232678
	add r0, r6, #0
	bl ov74_0223262C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02232140: .word 0x0000E880
_02232144: .word 0x0000E884
_02232148: .word gSystem + 0x60
_0223214C: .word ov74_02231FB0
_02232150: .word 0x00012604
	thumb_func_end ov74_02231FF4

