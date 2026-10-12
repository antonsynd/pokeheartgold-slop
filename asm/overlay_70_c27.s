#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238900

	.text

	.text
	thumb_func_start ov70_02238900
ov70_02238900: ; 0x02238900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x64
	mov r1, #0x3d
	bl NARC_New
	str r0, [sp, #0x18]
	bl NNS_G2dInitOamManagerModule
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02238B2C ; =0xFFCFFFEF
	add r3, r1, #0
	and r3, r0
	mov r1, #0x10
	orr r3, r1
	str r3, [r2]
	ldr r3, _02238B30 ; =0x04001000
	ldr r2, [r3]
	and r0, r2
	orr r0, r1
	str r0, [r3]
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r1, #0x3d
	str r1, [sp, #0x10]
	mov r1, #0x7a
	add r2, r0, #0
	bl OamManager_Create
	ldr r1, _02238B34 ; =0x00000BF8
	mov r0, #0x54
	add r1, r5, r1
	mov r2, #0x3d
	bl G2dRenderer_Init
	ldr r1, _02238B38 ; =0x00000BF4
	mov r2, #1
	str r0, [r5, r1]
	add r0, r1, #4
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0xd2
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #4
_02238970:
	mov r0, #3
	add r1, r6, #0
	mov r2, #0x3d
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02238970
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0xd2
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	mov r2, #0x15
	bl AddCharResObjFromOpenNarc
	mov r1, #0xd3
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x3d
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0xa
	bl AddPlttResObjFromOpenNarc
	ldr r1, _02238B3C ; =0x00000D34
	mov r2, #0x16
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3d
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02238B40 ; =0x00000D38
	mov r2, #0x17
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3d
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02238B44 ; =0x00000D3C
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3d
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x2b
	bl AddCharResObjFromOpenNarc
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x3d
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #9
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	ldr r1, _02238B48 ; =0x00000D44
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x3d
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x2c
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02238B4C ; =0x00000D48
	mov r3, #1
	str r0, [r5, r1]
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x3d
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0x2d
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02238B50 ; =0x00000D4C
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask
	mov r0, #0x35
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, _02238B3C ; =0x00000D34
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	ldr r0, _02238B48 ; =0x00000D44
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0x14
	add r2, sp, #0x1c
	mov r3, #0x3d
	bl GfGfxLoader_GetPlttData
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl GX_LoadOBJPltt
	ldr r0, [sp, #0x1c]
	mov r7, #0x1f
	ldr r4, [r0, #0xc]
	mov r3, #0
	add r5, r7, #0
_02238ACC:
	ldrh r2, [r4]
	mov r0, #0x1f
	add r3, r3, #1
	add r1, r2, #0
	and r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	asr r0, r2, #0xa
	add r6, r0, #0
	and r6, r7
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r2, r2, #5
	add r6, r2, #0
	and r6, r5
	lsr r2, r6, #0x1f
	add r2, r6, r2
	asr r0, r0, #1
	asr r2, r2, #1
	lsl r0, r0, #0xa
	lsl r2, r2, #5
	orr r0, r2
	orr r0, r1
	strh r0, [r4]
	add r4, r4, #2
	cmp r3, #0x30
	blt _02238ACC
	ldr r0, [sp, #0x1c]
	mov r1, #0x60
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	mov r1, #0xc0
	ldr r0, [r0, #0xc]
	mov r2, #0x60
	bl GX_LoadOBJPltt
	ldr r0, [sp, #0x14]
	bl Heap_Free
	ldr r0, [sp, #0x18]
	bl NARC_Delete
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238B2C: .word 0xFFCFFFEF
_02238B30: .word 0x04001000
_02238B34: .word 0x00000BF8
_02238B38: .word 0x00000BF4
_02238B3C: .word 0x00000D34
_02238B40: .word 0x00000D38
_02238B44: .word 0x00000D3C
_02238B48: .word 0x00000D44
_02238B4C: .word 0x00000D48
_02238B50: .word 0x00000D4C
	thumb_func_end ov70_02238900

