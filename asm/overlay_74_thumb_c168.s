#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222F314
	.public ov74_0222F404
	.public ov74_0222F478
	.extern ov74_0222EC60
	.extern ov74_0222F2D4
	.extern ov74_0223563C
	.extern ov74_0223567C
	.extern ov74_02235690
	.extern ov74_02235728
	.extern ov74_02235930
	.extern ov74_0223D0C0
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

	thumb_func_start ov74_0222F404
ov74_0222F404: ; 0x0222F404
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl OverlayManager_GetData
	ldr r1, _0222F46C ; =0x00002BBC
	ldr r0, [r0, r1]
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0222F42A
	add r0, r0, #1
	cmp r4, r0
	beq _0222F468
	b _0222F444
_0222F42A:
	ldr r0, _0222F470 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	cmp r6, #0
	beq _0222F468
	add r0, r7, #0
	blx r6
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222F468
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222F444:
	ldr r0, _0222F470 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	cmp r4, #0
	beq _0222F468
	cmp r4, #0x1f
	bhs _0222F456
	str r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222F456:
	ldr r0, _0222F474 ; =ov74_0223D0C0
	str r4, [r0]
	add r0, r7, #0
	blx r4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222F468
	str r0, [r5]
_0222F468:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F46C: .word 0x00002BBC
_0222F470: .word SEQ_SE_DP_SELECT
_0222F474: .word ov74_0223D0C0
	thumb_func_end ov74_0222F404

	thumb_func_start ov74_0222F478
ov74_0222F478: ; 0x0222F478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _0222F58C ; =0x00002D84
	add r7, r0, #0
	ldr r0, [r7, r1]
	cmp r0, #0
	bne _0222F4D8
	add r0, r1, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	bne _0222F4D8
	add r1, #8
	ldr r0, [r7, r1]
	cmp r0, #0
	bne _0222F4D8
	bl ov74_0223567C
	cmp r0, #1
	bne _0222F4A4
	add r0, r7, #0
	bl ov74_0222EC60
_0222F4A4:
	bl ov74_0223563C
	bl ov74_02235690
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x71
	mov r1, #0x1e
	mov r2, #0x1b
	mov r3, #0x1d
	bl ov74_02235728
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x14
	mov r3, #0x60
	bl GfGfxLoader_GXLoadPal
_0222F4D8:
	mov r0, #0xb2
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0xc]
	add r5, r7, #0
	mov r6, #0x64
_0222F4E4:
	ldr r0, _0222F590 ; =0x00002BB4
	ldr r0, [r7, r0]
	add r1, r0, r4
	ldr r0, _0222F594 ; =0x0000034A
	ldrh r0, [r1, r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _0222F504
	ldr r0, _0222F58C ; =0x00002D84
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F56E
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0222F56E
_0222F504:
	ldr r0, [sp, #0xc]
	ldr r1, _0222F58C ; =0x00002D84
	add r0, #0xa
	str r0, [sp]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x10]
	mov r0, #0
	mov r3, #0x10
	bl ov74_02235930
	ldr r1, _0222F58C ; =0x00002D84
	str r0, [r5, r1]
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	ldr r0, [r7]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x14
	add r3, sp, #0x18
	bl GfGfxLoader_GetCharData
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0x18]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r6, #5
	lsl r2, r2, #8
	bl GX_LoadOBJ
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	ldr r0, _0222F58C ; =0x00002D84
	add r1, r1, #3
	ldr r0, [r5, r0]
	bl Sprite_SetPaletteOverride
	ldr r0, [sp, #0x14]
	bl Heap_Free
_0222F56E:
	ldr r0, [sp, #0xc]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r5, r5, #4
	add r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, #0x10
	cmp r0, #3
	blt _0222F4E4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222F58C: .word 0x00002D84
_0222F590: .word 0x00002BB4
_0222F594: .word 0x0000034A
	thumb_func_end ov74_0222F478

