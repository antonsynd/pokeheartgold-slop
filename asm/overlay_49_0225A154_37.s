	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A7D0
	.public ov49_02269734

    .text

	thumb_func_start ov49_0225A7D0
ov49_0225A7D0: ; 0x0225A7D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl GF_DestroyVramTransferManager
	ldr r5, _0225A83C ; =ov49_02269734
	mov r4, #0
_0225A7DC:
	ldr r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225A7DC
	ldr r0, [r6]
	bl Heap_Free
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0202067C
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	add r7, r0, #0
	str r4, [r6, r0]
	add r5, r6, #0
	sub r7, #0x10
_0225A80E:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225A80E
	ldr r0, [r6, #4]
	bl SpriteList_Delete
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl GF_3DVramMan_Delete
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A83C: .word ov49_02269734
	thumb_func_end ov49_0225A7D0

