#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6060
	.public ov73_021E6090
	.public ov73_021E6184
	.public ov73_021EA550
	.public ov73_021EA560

	.text

	thumb_func_start ov73_021E6060
ov73_021E6060: ; 0x021E6060
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E608C ; =ov73_021EA550
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x32
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E608C: .word ov73_021EA550
	thumb_func_end ov73_021E6060

	thumb_func_start ov73_021E6090
ov73_021E6090: ; 0x021E6090
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x14]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x32
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	add r1, r6, #0
	mov r0, #0x1e
	add r1, #0x54
	mov r2, #0x32
	bl G2dRenderer_Init
	str r0, [r6, #0x50]
	add r0, r6, #0
	mov r2, #1
	add r0, #0x54
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0x5f
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021E60D8:
	mov r0, #3
	add r1, r4, #0
	mov r2, #0x32
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E60D8
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	mov r2, #8
	bl AddCharResObjFromOpenNarc
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x32
	sub r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #7
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #9
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x32
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xa
	mov r3, #1
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl SpriteTransfer_CreateCharTransferTask
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E6090

	thumb_func_start ov73_021E6184
ov73_021E6184: ; 0x021E6184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #2
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0x5f
	str r0, [sp, #0xc]
	mov r2, #1
	lsl r3, r3, #2
	str r2, [sp, #0x10]
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x50]
	mov r1, #0
	str r0, [sp, #0x2c]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x32
	str r0, [sp, #0x58]
	mov r0, #0x15
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x1a
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x64
	bl Sprite_SetDrawPriority
	mov r7, #0x8b
	ldr r4, _021E6298 ; =ov73_021EA560
	mov r6, #0
	lsl r7, r7, #2
_021E6232:
	ldrh r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x8b
	lsl r0, r0, #2
	sub r1, r6, #1
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x1b
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, r7]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #5
	blt _021E6232
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x1a
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6298: .word ov73_021EA560
	thumb_func_end ov73_021E6184

