#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222EB44
	.public ov74_0222EC08
	.extern gApp_MainMenu_SelectOption_MysteryGift
	.extern ov74_0222D824
	.extern ov74_0222FCC4
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
	thumb_func_start ov74_0222EB44
ov74_0222EB44: ; 0x0222EB44
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl OverlayManager_GetData
	add r7, r0, #0
	ldr r0, _0222EBF0 ; =0x00002A08
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_0222EB56:
	ldr r0, _0222EBF0 ; =0x00002A08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222EB6A
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
_0222EB6A:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #0x13
	blo _0222EB56
	ldr r0, _0222EBF4 ; =0x00002BD0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _0222EB8A
	add r0, r7, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222EBF4 ; =0x00002BD0
	add r0, r7, r0
	bl RemoveWindow
_0222EB8A:
	ldr r0, _0222EBF8 ; =0x00002BE0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _0222EBA0
	add r0, r7, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222EBF8 ; =0x00002BE0
	add r0, r7, r0
	bl RemoveWindow
_0222EBA0:
	ldr r0, _0222EBFC ; =0x000029FC
	mov r1, #0
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222EBFC ; =0x000029FC
	mov r1, #1
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222EBFC ; =0x000029FC
	mov r1, #2
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222EBFC ; =0x000029FC
	mov r1, #3
	ldr r0, [r7, r0]
	bl FreeBgTilemapBuffer
	ldr r0, _0222EBFC ; =0x000029FC
	ldr r0, [r7, r0]
	bl Heap_Free
	ldr r0, _0222EC00 ; =FS_OVERLAY_ID(OVY_74)
	ldr r1, _0222EC04 ; =gApp_MainMenu_SelectOption_MysteryGift
	bl RegisterMainOverlay
	mov r0, #0x59
	bl Heap_Destroy
	ldr r0, [sp]
	bl OverlayManager_FreeData
	mov r0, #0x55
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222EBF0: .word 0x00002A08
_0222EBF4: .word 0x00002BD0
_0222EBF8: .word 0x00002BE0
_0222EBFC: .word 0x000029FC
_0222EC00: .word FS_OVERLAY_ID(OVY_74)
_0222EC04: .word gApp_MainMenu_SelectOption_MysteryGift
	thumb_func_end ov74_0222EB44

	thumb_func_start ov74_0222EC08
ov74_0222EC08: ; 0x0222EC08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov74_0222FCC4
	ldr r1, _0222EC54 ; =0x00003D54
	add r0, r5, #0
	bl Heap_AllocAtEnd
	ldr r2, _0222EC54 ; =0x00003D54
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, _0222EC58 ; =0x000029FC
	mov r1, #0x1e
	str r6, [r4, r0]
	mov r0, #0
	lsl r1, r1, #4
	add r2, r5, #0
	str r5, [r4]
	bl LoadFontPal0
	ldr r0, _0222EC5C ; =0x00002BB4
	mov r2, #0
	str r7, [r4, r0]
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov74_0222D824
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222EC54: .word 0x00003D54
_0222EC58: .word 0x000029FC
_0222EC5C: .word 0x00002BB4
	thumb_func_end ov74_0222EC08

