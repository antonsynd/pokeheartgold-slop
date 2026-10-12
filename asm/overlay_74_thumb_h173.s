#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222F314
	.extern ov74_0222F2D4
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
	thumb_func_start ov74_0222F314
ov74_0222F314: ; 0x0222F314
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #0
	add r4, r1, #0
	str r0, [sp, #4]
	mov r0, #0x71
	mov r1, #7
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _0222F400 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x71
	mov r1, #0xa
	bl GfGfxLoader_LoadCharData
	cmp r4, #0
	beq _0222F35A
	cmp r4, #1
	beq _0222F37A
	b _0222F398
_0222F35A:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _0222F400 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x71
	mov r1, #8
	bl GfGfxLoader_LoadScrnData
	b _0222F398
_0222F37A:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r2, _0222F400 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x71
	mov r1, #9
	bl GfGfxLoader_LoadScrnData
_0222F398:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x71
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0xef
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r5]
	ldr r2, _0222F400 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x71
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r2, #3
	add r0, r5, #0
	mov r1, #2
	lsl r3, r2, #9
	bl ov74_0222F2D4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, _0222F400 ; =0x000029FC
	mov r2, #0
	ldr r0, [r5, r0]
	mov r1, #3
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, _0222F400 ; =0x000029FC
	mov r1, #3
	ldr r0, [r5, r0]
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222F400: .word 0x000029FC
	thumb_func_end ov74_0222F314

