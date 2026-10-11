#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F051C
	.extern ov112_021F05CC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F051C
ov112_021F051C: ; 0x021F051C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x68]
	bl DestroyMsgData
	ldr r0, [r7, #0x6c]
	bl MessageFormat_Delete
	ldr r0, [r7, #0x70]
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
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #4]
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r5, r7, #0
	add r5, #0x74
	add r0, r5, #0
	bl ov112_021F05CC
	mov r4, #0
_021F057E:
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
	cmp r4, #2
	blo _021F057E
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_021F05A8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021F05A8
	ldr r0, [r5, #4]
	bl SpriteList_Delete
	add r0, r7, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021F051C

