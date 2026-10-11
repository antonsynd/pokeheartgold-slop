#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02232E3C
	.public ov74_02232F5C
	.extern ov74_02232DA4
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
	thumb_func_start ov74_02232E3C
ov74_02232E3C: ; 0x02232E3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r7, #0x6a
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02232E50:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02232E5A
	bl Sprite_Delete
_02232E5A:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02232E68
	bl Sprite_Delete
_02232E68:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x1e
	blt _02232E50
	mov r7, #0xf2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02232E78:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02232E82
	bl Sprite_Delete
_02232E82:
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _02232E78
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02232E98
	bl Sprite_Delete
_02232E98:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02232EA6
	bl Sprite_Delete
_02232EA6:
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02232EB4
	bl Sprite_Delete
_02232EB4:
	ldr r0, _02232F48 ; =0x00000478
	add r0, r6, r0
	bl ov74_02232DA4
	ldr r0, _02232F4C ; =0x00000488
	add r0, r6, r0
	bl ov74_02232DA4
	ldr r0, _02232F50 ; =0x00000498
	add r0, r6, r0
	bl ov74_02232DA4
	mov r0, #2
	bl FontID_Release
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x55
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02232EEE:
	ldr r0, [r4, r7]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _02232EEE
	ldr r0, [r6, #0x28]
	bl SpriteList_Delete
	mov r0, #0
	str r0, [r6, #0x28]
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	ldr r0, _02232F54 ; =0x0000E88C
	ldr r0, [r6, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _02232F58 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, [r6, #0x20]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r6, #0x20]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r6, #0x20]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r6, #0x20]
	mov r1, #3
	bl FreeBgTilemapBuffer
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232F48: .word 0x00000478
_02232F4C: .word 0x00000488
_02232F50: .word 0x00000498
_02232F54: .word 0x0000E88C
_02232F58: .word gSystem + 0x60
	thumb_func_end ov74_02232E3C

	thumb_func_start ov74_02232F5C
ov74_02232F5C: ; 0x02232F5C
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x20]
	mov r3, #0
	str r1, [sp]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	str r3, [sp, #4]
	mov r1, #0x19
	add r2, sp, #0
	strb r1, [r2, #0x10]
	mov r1, #7
	strb r1, [r2, #0x11]
	strb r3, [r2, #0x13]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf0
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r2, #0x12]
	ldr r1, _02232F98 ; =0x0000E88C
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {pc}
	.balign 4, 0
_02232F98: .word 0x0000E88C
	thumb_func_end ov74_02232F5C

