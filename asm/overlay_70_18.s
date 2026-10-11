#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E98
	.public ov70_02241308

	.text

	thumb_func_start ov70_02238E98
ov70_02238E98: ; 0x02238E98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov70_02241308
	mov r0, #0xd3
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r0, #0x35
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, _02238EF8 ; =0x00000D34
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	ldr r0, _02238EFC ; =0x00000D44
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0xd2
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02238ECC:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02238ECC
	ldr r0, _02238F00 ; =0x00000BF4
	ldr r0, [r6, r0]
	bl SpriteList_Delete
	ldr r0, _02238F00 ; =0x00000BF4
	mov r1, #0
	str r1, [r6, r0]
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238EF8: .word 0x00000D34
_02238EFC: .word 0x00000D44
_02238F00: .word 0x00000BF4
	thumb_func_end ov70_02238E98

