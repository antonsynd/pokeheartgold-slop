#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235DC4
	.extern ov74_02235AC4
	.extern ov74_02235BD0
	.extern ov74_02235C10
	.extern ov74_02235CE4
	.extern ov74_02235DA4
	.extern ov74_0223D454
	.extern ov74_0223E2D4
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
	thumb_func_start ov74_02235DC4
ov74_02235DC4: ; 0x02235DC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldrh r4, [r6]
	add r5, r0, #0
	add r0, r4, #0
	bl ov74_02235AC4
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02235EC0 ; =ov74_0223D454
	mov r1, #0x22
	ldr r0, [r0, #8]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x71
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r2, #1
	ldr r3, _02235EC0 ; =ov74_0223D454
	str r2, [sp]
	ldr r3, [r3, #8]
	mov r0, #0x71
	mov r1, #0x23
	bl GfGfxLoader_LoadFromNarc
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl NNS_G2dGetUnpackedScreenData
	ldr r2, [sp, #0x14]
	mov r3, #6
	add r0, r5, #0
	mov r1, #5
	add r2, #0xc
	lsl r3, r3, #8
	bl BG_LoadScreenTilemapData
	ldr r0, [sp, #0x10]
	bl Heap_Free
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	mov r2, #0
	add r7, #8
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r5, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	ldr r1, _02235EC4 ; =ov74_02235DA4
	ldr r0, _02235EC8 ; =ov74_0223E2D4
	cmp r4, #0xf
	str r1, [r0, #0x24]
	ldr r0, _02235EC0 ; =ov74_0223D454
	str r5, [r0]
	bhi _02235EAE
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235E62: ; jump table
	.short _02235EAE - _02235E62 - 2 ; case 0
	.short _02235E98 - _02235E62 - 2 ; case 1
	.short _02235E98 - _02235E62 - 2 ; case 2
	.short _02235EA4 - _02235E62 - 2 ; case 3
	.short _02235E82 - _02235E62 - 2 ; case 4
	.short _02235E82 - _02235E62 - 2 ; case 5
	.short _02235E82 - _02235E62 - 2 ; case 6
	.short _02235E8E - _02235E62 - 2 ; case 7
	.short _02235EA4 - _02235E62 - 2 ; case 8
	.short _02235EA4 - _02235E62 - 2 ; case 9
	.short _02235EA4 - _02235E62 - 2 ; case 10
	.short _02235E82 - _02235E62 - 2 ; case 11
	.short _02235EA4 - _02235E62 - 2 ; case 12
	.short _02235E98 - _02235E62 - 2 ; case 13
	.short _02235EA4 - _02235E62 - 2 ; case 14
	.short _02235EA4 - _02235E62 - 2 ; case 15
_02235E82:
	ldr r0, _02235ECC ; =ov74_0223D454
	add r1, r4, #0
	add r2, r6, #0
	bl ov74_02235BD0
	b _02235EAE
_02235E8E:
	mov r1, #0x83
	ldr r0, _02235ECC ; =ov74_0223D454
	mov r2, #0x78
	lsl r1, r1, #2
	str r2, [r0, r1]
_02235E98:
	ldr r0, _02235ECC ; =ov74_0223D454
	add r1, r4, #0
	add r2, r6, #0
	bl ov74_02235C10
	b _02235EAE
_02235EA4:
	ldr r0, _02235ECC ; =ov74_0223D454
	add r1, r4, #0
	add r2, r6, #0
	bl ov74_02235CE4
_02235EAE:
	mov r1, #0x82
	ldr r0, _02235ECC ; =ov74_0223D454
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02235EC0: .word ov74_0223D454
_02235EC4: .word ov74_02235DA4
_02235EC8: .word ov74_0223E2D4
_02235ECC: .word ov74_0223D454
	thumb_func_end ov74_02235DC4

