	.include "asm/macros.inc"
	.include "overlay_83_02246E08.inc"
	.include "global.inc"

    .text

	thumb_func_start ov83_02246E08
ov83_02246E08: ; 0x02246E08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x6b
	str r2, [sp, #0x18]
	bl GF_CreateVramTransferManager
	bl ov83_022472DC
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x6b
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r0, #0x28
	add r1, r5, #4
	mov r2, #0x6b
	bl G2dRenderer_Init
	ldr r4, _02247148 ; =ov83_02248178
	str r0, [r5]
	mov r7, #0
	add r6, r5, #0
_02246E4C:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x6b
	bl Create2DGfxResObjMan
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _02246E4C
	add r0, r5, #0
	bl ov83_022473BC
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0xf
	bl AddCharResObjFromNarc
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x37
	bl AddPlttResObjFromNarc
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x11
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x10
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x12
	mov r1, #0x6b
	bl NARC_New
	add r6, r5, #0
	add r7, r0, #0
	mov r4, #4
	add r6, #0x40
_02246EFC:
	mov r0, #0
	mov r1, #1
	bl GetItemIndexMapping
	add r2, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r2, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0x12
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #9
	ble _02246EFC
	bl GetItemIconCell
	add r2, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl GetItemIconAnim
	add r2, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0x12
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r7, #0
	bl NARC_Delete
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x24
	mov r3, #1
	bl AddCharResObjFromNarc
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x26
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x25
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov83_02247314
	mov r0, #0x14
	mov r1, #0x6b
	bl NARC_New
	add r7, r0, #0
	bl sub_02074490
	add r2, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02074498
	add r2, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_020744A4
	add r2, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x7a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r4, #0
	add r6, r5, #0
_022470AE:
	cmp r4, #3
	bne _022470CC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022470C2
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl Party_GetMonByIndex
	b _022470D4
_022470C2:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl Party_GetMonByIndex
	b _022470D4
_022470CC:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl Party_GetMonByIndex
_022470D4:
	bl Pokemon_GetIconNaix
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #4
	blt _022470AE
	add r0, r7, #0
	bl NARC_Delete
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02247110:
	ldr r0, [r4, r7]
	bl SpriteTransfer_CreateCharTransferTask
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0xe
	blt _02247110
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_02247124:
	ldr r0, [r5, r6]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xb
	blt _02247124
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02247148: .word ov83_02248178
	thumb_func_end ov83_02246E08

	thumb_func_start ov83_0224714C
ov83_0224714C: ; 0x0224714C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl CreateSpriteResourcesHeader
	ldr r0, [r4]
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _022471BA
	mov r0, #1
	str r0, [sp, #0x54]
	b _022471BE
_022471BA:
	mov r0, #2
	str r0, [sp, #0x54]
_022471BE:
	mov r0, #0x6b
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _022471D4
	mov r0, #3
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
_022471D4:
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #1
	add r4, r0, #0
	bl Sprite_SetAnimActiveFlag
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl Sprite_SetAnimSpeed
	ldr r1, [sp, #0x90]
	add r0, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_0224714C

	thumb_func_start ov83_022471FC
ov83_022471FC: ; 0x022471FC
	push {r4, r5, r6, lr}
	mov r6, #0x4f
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_02247206:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl SpriteTransfer_DeleteCharTransferTask
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _02247206
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_02247220:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl SpriteTransfer_DeletePlttTransferTask
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _02247220
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_0224723A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0224723A
	ldr r0, [r5]
	bl SpriteList_Delete
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_022471FC

	thumb_func_start ov83_02247264
ov83_02247264: ; 0x02247264
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r2, #0
	bl SpriteResourceCollection_Find
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl GetItemIndexMapping
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	add r0, #0xc1
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x12
	bl ReplaceCharResObjFromNarc
	add r0, r4, #0
	bl SpriteTransfer_ReplaceCharData
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02247264

	thumb_func_start ov83_022472A0
ov83_022472A0: ; 0x022472A0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r2, #0
	bl SpriteResourceCollection_Find
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	add r0, #0xc5
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x12
	bl ReplacePlttResObjFromNarc
	add r0, r4, #0
	bl SpriteTransfer_ReplacePlttData
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_022472A0

	thumb_func_start ov83_022472DC
ov83_022472DC: ; 0x022472DC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0224730C ; =ov83_0224817C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r2, _02247310 ; =0x00100010
	mov r1, #0x10
	bl ObjCharTransfer_InitEx
	mov r0, #0x20
	mov r1, #0x6b
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0224730C: .word ov83_0224817C
_02247310: .word 0x00100010
	thumb_func_end ov83_022472DC

	thumb_func_start ov83_02247314
ov83_02247314: ; 0x02247314
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x15
	mov r1, #0x6b
	bl NARC_New
	add r4, r0, #0
	bl sub_0207CA9C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0207CAA0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	mov r1, #0x15
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_0207CAA4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0207CAA8
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_02247314

	thumb_func_start ov83_022473BC
ov83_022473BC: ; 0x022473BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #8
	mov r1, #0x6b
	bl NARC_New
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc1
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x4c
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, #0xc5
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xc9
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x4d
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #0x4e
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_022473BC

	thumb_func_start ov83_02247454
ov83_02247454: ; 0x02247454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x6b
	mov r1, #8
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	add r0, sp, #0x28
	mov r2, #0x14
	ldrsh r2, [r0, r2]
	ldr r3, [sp, #0x10]
	strh r2, [r4]
	mov r2, #0x18
	ldrsh r0, [r0, r2]
	add r2, r7, #0
	strh r0, [r4, #2]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov83_0224714C
	str r0, [r4, #4]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, sp, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl Sprite_SetMatrix
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02247454

	thumb_func_start ov83_022474C4
ov83_022474C4: ; 0x022474C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x6b
	mov r1, #8
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	add r0, sp, #0x28
	mov r2, #0x14
	ldrsh r2, [r0, r2]
	ldr r3, [sp, #0x10]
	strh r2, [r4]
	mov r2, #0x18
	ldrsh r0, [r0, r2]
	add r2, r7, #0
	strh r0, [r4, #2]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov83_0224714C
	str r0, [r4, #4]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x18
	ldrsh r1, [r1, r0]
	lsl r0, r0, #0xf
	lsl r1, r1, #0xc
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl Sprite_SetMatrix
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_022474C4

	thumb_func_start ov83_0224753C
ov83_0224753C: ; 0x0224753C
	push {r4, lr}
	add r4, r0, #0
	bne _0224754A
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
_0224754A:
	ldr r0, [r4, #4]
	bl Sprite_Delete
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0224753C

	thumb_func_start ov83_0224755C
ov83_0224755C: ; 0x0224755C
	ldr r3, _02247564 ; =Sprite_SetDrawFlag
	ldr r0, [r0, #4]
	bx r3
	nop
_02247564: .word Sprite_SetDrawFlag
	thumb_func_end ov83_0224755C

	thumb_func_start ov83_02247568
ov83_02247568: ; 0x02247568
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_02247568

	thumb_func_start ov83_0224759C
ov83_0224759C: ; 0x0224759C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	lsl r1, r6, #0xc
	str r0, [r2]
	lsl r0, r4, #0xc
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov83_0224759C

	thumb_func_start ov83_022475D4
ov83_022475D4: ; 0x022475D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0
	bl Sprite_SetAnimationFrame
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_022475D4

	thumb_func_start ov83_022475EC
ov83_022475EC: ; 0x022475EC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl Pokemon_GetIconPalette
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl Sprite_SetPalOffsetRespectVramOffset
	pop {r4, pc}
	thumb_func_end ov83_022475EC

	thumb_func_start ov83_02247600
ov83_02247600: ; 0x02247600
	ldr r3, _02247608 ; =ov80_0222A3D4
	ldr r0, [r0, #4]
	bx r3
	nop
_02247608: .word ov80_0222A3D4
	thumb_func_end ov83_02247600

	thumb_func_start ov83_0224760C
ov83_0224760C: ; 0x0224760C
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #4]
	bl ov80_0222A400
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0224760C

	thumb_func_start ov83_02247624
ov83_02247624: ; 0x02247624
	ldr r3, _0224762C ; =Sprite_IsAnimated
	ldr r0, [r0, #4]
	bx r3
	nop
_0224762C: .word Sprite_IsAnimated
	thumb_func_end ov83_02247624

	thumb_func_start ov83_02247630
ov83_02247630: ; 0x02247630
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	mov r1, #0xb
	bl ov83_022475D4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov83_02247568
	add r0, r5, #0
	mov r1, #1
	bl ov83_0224755C
	ldr r0, _02247660 ; =0x000005E3
	bl PlaySE
	ldr r0, _02247664 ; =0x00000655
	bl PlaySE
	pop {r4, r5, r6, pc}
	nop
_02247660: .word 0x000005E3
_02247664: .word 0x00000655
	thumb_func_end ov83_02247630

	thumb_func_start ov83_02247668
ov83_02247668: ; 0x02247668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r3, #0
	add r6, r2, #0
	ldr r3, _02247738 ; =ov83_0224818C
	add r2, sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	mov r0, #0x6b
	lsl r1, r1, #6
	bl Heap_AllocAtEnd
	add r4, r0, #0
	cmp r6, #0
	beq _022476C0
	ldr r1, [sp, #0x14]
	add r0, sp, #0x30
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	add r1, sp, #0x1c
	ldrh r0, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	mov r2, #0x6b
	add r3, sp, #0x20
	bl sub_02014510
	add r0, sp, #0x1c
	ldrh r7, [r0, #0x14]
	ldrh r6, [r0, #0x18]
	b _022476EA
_022476C0:
	mov r0, #0x6b
	str r0, [sp]
	mov r0, #0xb8
	mov r1, #0x27
	mov r2, #1
	add r3, sp, #0x1c
	bl GfGfxLoader_GetCharData
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #0x32
	ldr r0, [r0, #0x14]
	add r1, r4, #0
	lsl r2, r2, #6
	bl MIi_CpuCopy32
	add r0, r6, #0
	bl Heap_Free
	mov r7, #0xb8
	mov r6, #0x3d
_022476EA:
	ldr r0, [r5, #4]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0x32
	str r0, [sp, #0x18]
	add r0, r4, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r2, #0x32
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	ldr r0, [r5, #4]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #5
	bl GfGfxLoader_GXLoadPal
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02247738: .word ov83_0224818C
	thumb_func_end ov83_02247668

	thumb_func_start ov83_0224773C
ov83_0224773C: ; 0x0224773C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #1
	bne _0224774A
	mov r7, #1
	b _0224774C
_0224774A:
	mov r7, #0
_0224774C:
	mov r4, #0
	cmp r6, #0
	bls _02247764
_02247752:
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0, #4]
	bl Sprite_SetOamMode
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02247752
_02247764:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0224773C

	thumb_func_start ov83_02247768
ov83_02247768: ; 0x02247768
	add r0, r1, #0
	bx lr
	thumb_func_end ov83_02247768

	thumb_func_start ov83_0224776C
ov83_0224776C: ; 0x0224776C
	cmp r1, r0
	blo _02247776
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02247776:
	add r0, r1, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov83_0224776C

	thumb_func_start ov83_0224777C
ov83_0224777C: ; 0x0224777C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl Save_Frontier_GetStatic
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205C174
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205C174
	bl sub_0205C268
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl FrontierSave_GetStat
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0224777C

	thumb_func_start ov83_022477B0
ov83_022477B0: ; 0x022477B0
	push {r3, lr}
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	beq _022477C0
	add r0, r1, #0
	bl PlaySE
_022477C0:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov83_022477B0

	thumb_func_start ov83_022477C4
ov83_022477C4: ; 0x022477C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl BufferPlayersName
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_022477C4

	thumb_func_start ov83_022477E4
ov83_022477E4: ; 0x022477E4
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov83_022477E4

	thumb_func_start ov83_022477EC
ov83_022477EC: ; 0x022477EC
	push {r4, r5}
	lsl r5, r0, #2
	add r0, r1, #1
	add r4, r0, #0
	mov r0, #0xf
	add r1, r0, #0
	lsl r1, r5
	sub r0, #0x10
	ldr r3, [r2]
	eor r0, r1
	lsl r4, r5
	and r0, r3
	orr r0, r4
	str r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov83_022477EC

	thumb_func_start ov83_0224780C
ov83_0224780C: ; 0x0224780C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xf
_02247814:
	ldr r1, [r5]
	lsl r0, r4, #2
	lsr r1, r0
	add r0, r1, #0
	and r0, r6
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02247832
	sub r1, r1, #1
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl ToggleBgLayer
_02247832:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #7
	bls _02247814
	add r0, r5, #0
	bl ov83_022477E4
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0224780C

	thumb_func_start ov83_02247844
ov83_02247844: ; 0x02247844
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	bl YesNoPrompt_Create
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02247844

	thumb_func_start ov83_02247858
ov83_02247858: ; 0x02247858
	ldr r3, _02247860 ; =YesNoPrompt_Destroy
	ldr r0, [r0]
	bx r3
	nop
_02247860: .word YesNoPrompt_Destroy
	thumb_func_end ov83_02247858

	thumb_func_start ov83_02247864
ov83_02247864: ; 0x02247864
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	add r0, sp, #0
	add r0, #2
	add r1, sp, #0
	str r5, [r4, #8]
	bl ov83_02247988
	mov r0, #0
	str r5, [sp, #4]
	str r0, [sp, #8]
	add r2, sp, #0
	ldrh r1, [r2, #2]
	str r1, [sp, #0xc]
	mov r1, #0xb
	str r1, [sp, #0x10]
	mov r1, #0x19
	strb r1, [r2, #0x14]
	mov r1, #0xa
	strb r1, [r2, #0x15]
	ldrb r3, [r2, #0x16]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0x16]
	ldrb r3, [r2, #0x16]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r2, #0x16]
	strb r0, [r2, #0x17]
	ldr r0, [r4]
	add r1, sp, #4
	bl YesNoPrompt_InitFromTemplate
	mov r0, #1
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02247864

	thumb_func_start ov83_022478B4
ov83_022478B4: ; 0x022478B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022478D0
	ldr r0, [r4]
	bl YesNoPrompt_Reset
	ldr r0, [r4, #8]
	mov r1, #0
	bl BgCommitTilemapBufferToVram
	mov r0, #0
	str r0, [r4, #4]
_022478D0:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_022478B4

	thumb_func_start ov83_022478D4
ov83_022478D4: ; 0x022478D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _02247914 ; =ov83_0224819C
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, _02247918 ; =ov83_0224819C + 4
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _02247910
_022478EE:
	ldr r2, [sp, #4]
	lsl r6, r4, #4
	lsl r3, r4, #3
	ldr r0, [sp]
	add r1, r5, r6
	add r2, r2, r3
	bl AddWindow
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _022478EE
_02247910:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02247914: .word ov83_0224819C
_02247918: .word ov83_0224819C + 4
	thumb_func_end ov83_022478D4

	thumb_func_start ov83_0224791C
ov83_0224791C: ; 0x0224791C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02247940 ; =ov83_0224819C + 4
	lsl r1, r1, #3
	ldr r5, [r0, r1]
	mov r4, #0
	cmp r5, #0
	bls _0224793E
_0224792C:
	lsl r0, r4, #4
	add r0, r6, r0
	bl RemoveWindow
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _0224792C
_0224793E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02247940: .word ov83_0224819C + 4
	thumb_func_end ov83_0224791C

	thumb_func_start ov83_02247944
ov83_02247944: ; 0x02247944
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl GetWindowBgId
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _02247984 ; =0x000003D9
	mov r3, #0xa
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, _02247984 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xa
	bl DrawFrameAndWindow2
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02247984: .word 0x000003D9
	thumb_func_end ov83_02247944

	thumb_func_start ov83_02247988
ov83_02247988: ; 0x02247988
	mov r2, #0xf0
	strh r2, [r1]
	ldr r1, _02247994 ; =0x000002E9
	strh r1, [r0]
	bx lr
	nop
_02247994: .word 0x000002E9
	thumb_func_end ov83_02247988

	thumb_func_start ov83_02247998
ov83_02247998: ; 0x02247998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #1
	bne _022479B6
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	sub r5, r5, r0
	b _022479C6
_022479B6:
	cmp r0, #2
	bne _022479C6
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	lsr r0, r0, #1
	sub r5, r5, r0
_022479C6:
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02247998


    .rodata

ov83_02248178: ; 0x02248178
	.byte 0x0E, 0x0E, 0x0E, 0x0E

ov83_0224817C: ; 0x0224817C
	.byte 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00

ov83_0224818C: ; 0x0224818C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00

ov83_0224819C: ; 0x0224819C
	.word ov83_022482C4
	.byte 0x46, 0x00, 0x00, 0x00
	.word ov83_022481AC
	.byte 0x23, 0x00, 0x00, 0x00

ov83_022481AC:
	.byte 0x01, 0x01, 0x01, 0x1E
	.byte 0x02, 0x0E, 0x01, 0x00, 0x01, 0x1A, 0x13, 0x04, 0x03, 0x0E, 0x3D, 0x00, 0x01, 0x00, 0x04, 0x20
	.byte 0x02, 0x0E, 0x49, 0x00, 0x01, 0x00, 0x09, 0x20, 0x02, 0x0E, 0x89, 0x00, 0x00, 0x04, 0x0A, 0x1A
	.byte 0x0E, 0x0E, 0x01, 0x00, 0x00, 0x17, 0x0F, 0x08, 0x08, 0x0E, 0x01, 0x00, 0x00, 0x16, 0x09, 0x09
	.byte 0x08, 0x0E, 0x6D, 0x01, 0x00, 0x02, 0x13, 0x1B, 0x04, 0x0D, 0xB5, 0x01, 0x00, 0x02, 0x13, 0x14
	.byte 0x04, 0x0D, 0x21, 0x02, 0x00, 0x02, 0x13, 0x11, 0x04, 0x0D, 0x71, 0x02, 0x00, 0x18, 0x0D, 0x07
	.byte 0x04, 0x0E, 0xB5, 0x02, 0x00, 0x18, 0x0B, 0x07, 0x06, 0x0E, 0xD1, 0x02, 0x05, 0x0D, 0x01, 0x08
	.byte 0x02, 0x0F, 0xF0, 0x03, 0x05, 0x15, 0x01, 0x01, 0x02, 0x0F, 0xEE, 0x03, 0x05, 0x17, 0x01, 0x03
	.byte 0x02, 0x0F, 0xE8, 0x03, 0x05, 0x1A, 0x01, 0x03, 0x02, 0x0F, 0xE2, 0x03, 0x05, 0x0D, 0x04, 0x07
	.byte 0x02, 0x0F, 0xD4, 0x03, 0x05, 0x14, 0x04, 0x0B, 0x02, 0x0F, 0xBE, 0x03, 0x05, 0x0D, 0x07, 0x06
	.byte 0x02, 0x0F, 0xB2, 0x03, 0x05, 0x14, 0x07, 0x08, 0x02, 0x0F, 0xA2, 0x03, 0x05, 0x0D, 0x0A, 0x06
	.byte 0x02, 0x0F, 0x96, 0x03, 0x05, 0x13, 0x0A, 0x0C, 0x02, 0x0F, 0x7E, 0x03, 0x05, 0x01, 0x0B, 0x02
	.byte 0x02, 0x0F, 0x7A, 0x03, 0x05, 0x04, 0x0B, 0x07, 0x02, 0x0F, 0x6C, 0x03, 0x05, 0x01, 0x0D, 0x06
	.byte 0x02, 0x0F, 0x58, 0x03, 0x05, 0x08, 0x0D, 0x03, 0x02, 0x0F, 0x52, 0x03, 0x05, 0x01, 0x11, 0x07
	.byte 0x02, 0x0F, 0x44, 0x03, 0x05, 0x08, 0x11, 0x03, 0x02, 0x0F, 0x3E, 0x03, 0x05, 0x01, 0x0F, 0x06
	.byte 0x02, 0x0F, 0x32, 0x03, 0x05, 0x08, 0x0F, 0x03, 0x02, 0x0F, 0x2C, 0x03, 0x05, 0x01, 0x13, 0x07
	.byte 0x02, 0x0F, 0x1E, 0x03, 0x05, 0x08, 0x13, 0x03, 0x02, 0x0F, 0x18, 0x03, 0x05, 0x01, 0x15, 0x06
	.byte 0x02, 0x0F, 0x0C, 0x03, 0x05, 0x08, 0x15, 0x03, 0x02, 0x0F, 0x06, 0x03, 0x05, 0x0D, 0x0E, 0x12
	.byte 0x08, 0x0F, 0x76, 0x02

ov83_022482C4:
	.byte 0x01, 0x01, 0x01, 0x1E, 0x02, 0x0E, 0x01, 0x00, 0x01, 0x1A, 0x13, 0x04
	.byte 0x03, 0x0E, 0x3D, 0x00, 0x01, 0x00, 0x04, 0x20, 0x02, 0x0E, 0x49, 0x00, 0x01, 0x00, 0x09, 0x20
	.byte 0x02, 0x0E, 0x89, 0x00, 0x00, 0x05, 0x0A, 0x18, 0x0E, 0x0E, 0x01, 0x00, 0x00, 0x0C, 0x02, 0x13
	.byte 0x0C, 0x0E, 0x01, 0x00, 0x00, 0x02, 0x13, 0x1B, 0x04, 0x0D, 0xEF, 0x01, 0x00, 0x02, 0x13, 0x14
	.byte 0x04, 0x0D, 0x5B, 0x02, 0x00, 0x02, 0x13, 0x11, 0x04, 0x0D, 0xAB, 0x02, 0x00, 0x17, 0x11, 0x08
	.byte 0x06, 0x0E, 0xEF, 0x02, 0x00, 0x14, 0x07, 0x0B, 0x0A, 0x0E, 0x1F, 0x03, 0x00, 0x16, 0x09, 0x09
	.byte 0x08, 0x0E, 0x1F, 0x03, 0x00, 0x07, 0x11, 0x17, 0x06, 0x0D, 0x5B, 0x02, 0x00, 0x18, 0x0D, 0x07
	.byte 0x04, 0x0E, 0xE5, 0x02, 0x00, 0x18, 0x0B, 0x07, 0x06, 0x0E, 0x01, 0x03, 0x00, 0x01, 0x01, 0x08
	.byte 0x04, 0x0E, 0x2B, 0x03, 0x00, 0x01, 0x07, 0x0A, 0x02, 0x0E, 0x4B, 0x03, 0x00, 0x01, 0x0D, 0x0B
	.byte 0x02, 0x0E, 0x5F, 0x03, 0x05, 0x0D, 0x01, 0x08, 0x02, 0x0F, 0xF0, 0x03, 0x05, 0x15, 0x01, 0x01
	.byte 0x02, 0x0F, 0xEE, 0x03, 0x05, 0x17, 0x01, 0x03, 0x02, 0x0F, 0xE8, 0x03, 0x05, 0x1A, 0x01, 0x03
	.byte 0x02, 0x0F, 0xE2, 0x03, 0x05, 0x0D, 0x04, 0x07, 0x02, 0x0F, 0xD4, 0x03, 0x05, 0x14, 0x04, 0x0B
	.byte 0x02, 0x0F, 0xBE, 0x03, 0x05, 0x0D, 0x07, 0x06, 0x02, 0x0F, 0xB2, 0x03, 0x05, 0x14, 0x07, 0x08
	.byte 0x02, 0x0F, 0xA2, 0x03, 0x05, 0x0D, 0x0A, 0x06, 0x02, 0x0F, 0x96, 0x03, 0x05, 0x13, 0x0A, 0x0C
	.byte 0x02, 0x0F, 0x7E, 0x03, 0x05, 0x01, 0x0B, 0x02, 0x02, 0x0F, 0x7A, 0x03, 0x05, 0x04, 0x0B, 0x07
	.byte 0x02, 0x0F, 0x6C, 0x03, 0x05, 0x01, 0x0D, 0x06, 0x02, 0x0F, 0x58, 0x03, 0x05, 0x08, 0x0D, 0x03
	.byte 0x02, 0x0F, 0x52, 0x03, 0x05, 0x01, 0x11, 0x07, 0x02, 0x0F, 0x44, 0x03, 0x05, 0x08, 0x11, 0x03
	.byte 0x02, 0x0F, 0x3E, 0x03, 0x05, 0x01, 0x0F, 0x06, 0x02, 0x0F, 0x32, 0x03, 0x05, 0x08, 0x0F, 0x03
	.byte 0x02, 0x0F, 0x2C, 0x03, 0x05, 0x01, 0x13, 0x07, 0x02, 0x0F, 0x1E, 0x03, 0x05, 0x08, 0x13, 0x03
	.byte 0x02, 0x0F, 0x18, 0x03, 0x05, 0x01, 0x15, 0x07, 0x02, 0x0F, 0x0A, 0x03, 0x05, 0x08, 0x15, 0x03
	.byte 0x02, 0x0F, 0x04, 0x03, 0x05, 0x0D, 0x0E, 0x0B, 0x02, 0x0F, 0xEE, 0x02, 0x05, 0x0D, 0x10, 0x0B
	.byte 0x02, 0x0F, 0xD8, 0x02, 0x05, 0x0D, 0x12, 0x0B, 0x02, 0x0F, 0xC2, 0x02, 0x05, 0x0D, 0x14, 0x0B
	.byte 0x02, 0x0F, 0xAC, 0x02, 0x05, 0x1A, 0x0E, 0x05, 0x02, 0x0F, 0xA2, 0x02, 0x05, 0x1A, 0x10, 0x05
	.byte 0x02, 0x0F, 0x98, 0x02, 0x05, 0x1A, 0x12, 0x05, 0x02, 0x0F, 0x8E, 0x02, 0x05, 0x1A, 0x14, 0x05
	.byte 0x02, 0x0F, 0x84, 0x02, 0x00, 0x03, 0x04, 0x0D, 0x05, 0x0E, 0x01, 0x00, 0x00, 0x13, 0x04, 0x0D
	.byte 0x05, 0x0E, 0x42, 0x00, 0x00, 0x03, 0x09, 0x0D, 0x05, 0x0E, 0x83, 0x00, 0x00, 0x13, 0x09, 0x0D
	.byte 0x05, 0x0E, 0xC4, 0x00, 0x00, 0x03, 0x0E, 0x0D, 0x05, 0x0E, 0x05, 0x01, 0x00, 0x13, 0x0E, 0x0D
	.byte 0x05, 0x0E, 0x46, 0x01, 0x00, 0x0A, 0x08, 0x0C, 0x02, 0x0E, 0x87, 0x01, 0x00, 0x16, 0x08, 0x05
	.byte 0x02, 0x0E, 0x9F, 0x01, 0x00, 0x0E, 0x15, 0x04, 0x02, 0x0E, 0xA9, 0x01, 0x00, 0x1A, 0x15, 0x05
	.byte 0x02, 0x0E, 0xB1, 0x01, 0x00, 0x02, 0x01, 0x0C, 0x02, 0x0E, 0xBB, 0x01, 0x00, 0x10, 0x01, 0x08
	.byte 0x02, 0x0E, 0xD3, 0x01, 0x00, 0x18, 0x01, 0x06, 0x02, 0x0E, 0xE3, 0x01, 0x07, 0x04, 0x11, 0x1B
	.byte 0x06, 0x0F, 0x5E, 0x03, 0x07, 0x0D, 0x05, 0x08, 0x02, 0x0F, 0x4E, 0x03, 0x07, 0x15, 0x05, 0x01
	.byte 0x02, 0x0F, 0x4C, 0x03, 0x07, 0x17, 0x05, 0x03, 0x02, 0x0F, 0x46, 0x03, 0x07, 0x1A, 0x05, 0x03
	.byte 0x02, 0x0F, 0x40, 0x03, 0x07, 0x0D, 0x08, 0x02, 0x02, 0x0F, 0x3C, 0x03, 0x07, 0x10, 0x08, 0x08
	.byte 0x02, 0x0F, 0x2C, 0x03, 0x07, 0x0D, 0x0B, 0x06, 0x02, 0x0F, 0x20, 0x03, 0x07, 0x13, 0x0B, 0x0C
	.byte 0x02, 0x0F, 0x08, 0x03

