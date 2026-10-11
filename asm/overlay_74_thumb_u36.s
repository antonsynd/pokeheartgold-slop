#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229E68
	.extern ov74_022359BC
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
	thumb_func_start ov74_02229E68
ov74_02229E68: ; 0x02229E68
	push {r3, r4, r5, r6, r7, lr}
	bl OverlayManager_GetData
	add r7, r0, #0
	bl ov74_022359BC
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	beq _02229E7E
	bl ListMenuItems_Delete
_02229E7E:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	beq _02229E8C
	mov r1, #0
	add r2, r1, #0
	bl DestroyListMenu
_02229E8C:
	add r0, r7, #0
	add r0, #0x18
	bl ClearWindowTilemapAndCopyToVram
	add r0, r7, #0
	add r0, #0x18
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x58
	bl WindowIsInUse
	cmp r0, #0
	beq _02229EB8
	add r0, r7, #0
	add r0, #0x58
	bl ClearWindowTilemapAndCopyToVram
	add r0, r7, #0
	add r0, #0x58
	bl RemoveWindow
_02229EB8:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x28
_02229EC0:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02229ED2
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
_02229ED2:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #3
	blt _02229EC0
	ldr r0, [r7]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r7]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r7]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r7]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r7]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_02229E68

