	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224276C
	.public ov81_02242A8C
	.extern ov81_02242B90
	.extern ov81_02243594

	.text

	.text
	thumb_func_start ov81_0224276C
ov81_0224276C: ; 0x0224276C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov81_02242B90
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x64
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r0, #0x20
	add r1, r5, #4
	mov r2, #0x64
	bl G2dRenderer_Init
	mov r2, #2
	str r0, [r5]
	add r0, r5, #4
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	ldr r4, _02242A88 ; =ov81_02243594
	mov r7, #0
	add r6, r5, #0
_022427B0:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x64
	bl Create2DGfxResObjMan
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _022427B0
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x28
	bl AddCharResObjFromNarc
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x3e
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x29
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2a
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2b
	bl AddCharResObjFromNarc
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x3f
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2c
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2d
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r3, #1
	bl AddCharResObjFromNarc
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x34
	bl AddPlttResObjFromNarc
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	mov r2, #1
	ldr r0, [r5, r0]
	mov r1, #0xb8
	add r3, r2, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2b
	mov r3, #1
	bl AddCharResObjFromNarc
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x3f
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2c
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2d
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r4, #0
	add r6, r5, #0
	mov r7, #2
_022429C8:
	add r0, r4, #4
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xc8
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2e
	mov r3, #1
	bl AddCharResObjFromNarc
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r6, r1]
	bl sub_02074490
	add r2, r0, #0
	add r0, r4, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r6, r1]
	add r0, r4, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd0
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x2f
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r4, #4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0xb8
	mov r2, #0x30
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #2
	blt _022429C8
	add r7, r1, #0
	add r6, r1, #0
	mov r4, #0
	sub r7, #0x4c
	sub r6, #0x48
_02242A60:
	ldr r0, [r5, r7]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, [r5, r6]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _02242A60
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02242A88: .word ov81_02243594
	thumb_func_end ov81_0224276C

	thumb_func_start ov81_02242A8C
ov81_02242A8C: ; 0x02242A8C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r3, #0
	str r0, [sp, #8]
	mov r3, #0
	ldr r0, [sp, #0x90]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r6, r2, #0
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, sp, #0x5c
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5]
	mov r1, #0
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
	str r4, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _02242B00
	mov r0, #1
	str r0, [sp, #0x54]
	b _02242B04
_02242B00:
	mov r0, #2
	str r0, [sp, #0x54]
_02242B04:
	mov r0, #0x64
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	bne _02242B1A
	mov r0, #2
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x38]
_02242B1A:
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	add r4, r0, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov81_02242A8C

