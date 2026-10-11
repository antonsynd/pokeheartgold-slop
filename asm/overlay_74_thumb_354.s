#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022358C8
	.public ov74_02235930
	.public ov74_022359BC
	.extern ov74_0223D454
	.extern ov74_0223D488
	.extern ov74_0223D654
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
	thumb_func_start ov74_022358C8
ov74_022358C8: ; 0x022358C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02235928 ; =ov74_0223D654
	ldr r4, _0223592C ; =ov74_0223D454
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0223591C
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02235918
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl Sprite_GetDrawFlag
	cmp r0, #0
	bne _022358FC
	cmp r5, #0
	bne _022358FC
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
_022358FC:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_GetMatrixPtr
	mov r1, #6
	ldr r2, [r0, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	bge _0223591C
	lsr r1, r1, #7
	add r1, r2, r1
	str r1, [r0, #4]
	b _0223591C
_02235918:
	sub r1, r1, #1
	str r1, [r4, r0]
_0223591C:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02235926
	bl SpriteList_RenderAndAnimateSprites
_02235926:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02235928: .word ov74_0223D654
_0223592C: .word ov74_0223D454
	thumb_func_end ov74_022358C8

	thumb_func_start ov74_02235930
ov74_02235930: ; 0x02235930
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	ldr r1, _022359B8 ; =ov74_0223D454
	bne _02235992
	ldr r4, [r1, #0x34]
	lsl r2, r2, #0xc
	str r4, [sp]
	mov r4, #0x6a
	lsl r4, r4, #2
	add r5, r1, r4
	mov r4, #0x24
	mul r4, r0
	add r4, r5, r4
	str r4, [sp, #4]
	mov r4, #1
	lsl r4, r4, #0xc
	mov r5, #0
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	add r4, sp, #0
	strh r5, [r4, #0x20]
	str r2, [sp, #8]
	lsl r2, r3, #0xc
	str r2, [sp, #0xc]
	mov r2, #0xa
	str r2, [sp, #0x24]
	cmp r0, #0
	bne _02235972
	mov r2, #1
	b _02235974
_02235972:
	mov r2, #2
_02235974:
	ldr r0, [r1, #8]
	str r2, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r2, #2
	bne _0223598A
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r2, [sp, #0xc]
	ldr r0, [r1, r0]
	add r0, r2, r0
	str r0, [sp, #0xc]
_0223598A:
	add r0, sp, #0
	bl Sprite_CreateAffine
	add r4, r0, #0
_02235992:
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetPriority
	ldr r1, [sp, #0x40]
	add r0, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022359B8: .word ov74_0223D454
	thumb_func_end ov74_02235930

	thumb_func_start ov74_022359BC
ov74_022359BC: ; 0x022359BC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02235A5C ; =ov74_0223D654
	ldr r4, _02235A60 ; =ov74_0223D454
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _022359DA
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_Delete
	mov r0, #0x82
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022359DA:
	mov r1, #0x51
	ldr r0, _02235A64 ; =ov74_0223D488
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022359EA
	bl SpriteTransfer_DeleteCharTransferTask
_022359EA:
	mov r1, #0x57
	ldr r0, _02235A64 ; =ov74_0223D488
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _022359FA
	bl SpriteTransfer_DeleteCharTransferTask
_022359FA:
	mov r1, #0x52
	ldr r0, _02235A64 ; =ov74_0223D488
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02235A0A
	bl SpriteTransfer_DeletePlttTransferTask
_02235A0A:
	mov r1, #0x16
	ldr r0, _02235A64 ; =ov74_0223D488
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02235A1A
	bl SpriteTransfer_DeletePlttTransferTask
_02235A1A:
	mov r4, #0
	mov r7, #0x4b
	ldr r5, _02235A64 ; =ov74_0223D488
	add r6, r4, #0
	lsl r7, r7, #2
_02235A24:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Destroy2DGfxResObjMan
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02235A24
	ldr r0, _02235A64 ; =ov74_0223D488
	ldr r0, [r0]
	bl SpriteList_Delete
	ldr r0, _02235A64 ; =ov74_0223D488
	mov r1, #0
	str r1, [r0]
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02235A5C: .word ov74_0223D654
_02235A60: .word ov74_0223D454
_02235A64: .word ov74_0223D488
	thumb_func_end ov74_022359BC

