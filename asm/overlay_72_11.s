	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238800

	.text

	thumb_func_start ov72_02238800
ov72_02238800: ; 0x02238800
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02238854 ; =0x00000D34
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, _02238858 ; =0x00000D44
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, _0223885C ; =0x00000D38
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	ldr r0, _02238860 ; =0x00000D48
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	ldr r7, _02238864 ; =0x00000D24
	mov r4, #0
	add r5, r6, #0
_0223882A:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223882A
	ldr r0, _02238868 ; =0x00000BF8
	ldr r0, [r6, r0]
	bl SpriteList_Delete
	ldr r0, _02238868 ; =0x00000BF8
	mov r1, #0
	str r1, [r6, r0]
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238854: .word 0x00000D34
_02238858: .word 0x00000D44
_0223885C: .word 0x00000D38
_02238860: .word 0x00000D48
_02238864: .word 0x00000D24
_02238868: .word 0x00000BF8
	thumb_func_end ov72_02238800

