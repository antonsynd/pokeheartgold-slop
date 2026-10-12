	.include "asm/macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221F020
	.public ov97_0221F0E0

	.text

	.text
	thumb_func_start ov97_0221F020
ov97_0221F020: ; 0x0221F020
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x6c]
	bl DestroyMsgData
	ldr r0, [r7, #0x70]
	bl MessageFormat_Delete
	ldr r0, [r7, #0x74]
	bl String_Delete
	add r0, r7, #0
	add r0, #8
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x18
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x28
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x38
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x48
	bl RemoveWindow
	add r0, r7, #0
	add r0, #0x58
	bl RemoveWindow
	ldr r0, [r7, #4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #4]
	mov r1, #6
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #4]
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r5, r7, #0
	add r5, #0x78
	add r0, r5, #0
	bl ov97_0221F0E0
	mov r4, #0
_0221F092:
	mov r0, #0x18
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _0221F092
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_0221F0BC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0221F0BC
	ldr r0, [r5, #4]
	bl SpriteList_Delete
	add r0, r7, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov97_0221F020

	thumb_func_start ov97_0221F0E0
ov97_0221F0E0: ; 0x0221F0E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x6d
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_0221F0EE:
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0221F0EE
	mov r0, #0
	mov r6, #0x1e
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #4
_0221F106:
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl Sprite_Delete
	mov r4, #0
	add r5, r7, #0
_0221F114:
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0221F114
	ldr r0, [sp, #4]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0221F106
	mov r1, #0x95
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Sprite_Delete
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov97_0221F0E0

