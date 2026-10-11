#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0980
	.public ov112_021F09B4
	.public ov112_021F0B28
	.public ov112_021F0B9C
	.extern ov112_021F0C30
	.extern ov112_021F0C50
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0980
ov112_021F0980: ; 0x021F0980
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x67
	add r5, #0x74
	add r7, r4, #0
	lsl r6, r6, #2
_021F098E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021F098E
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021F0980

	thumb_func_start ov112_021F09B4
ov112_021F09B4: ; 0x021F09B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	ldr r2, [r5]
	mov r0, #7
	add r1, #8
	bl G2dRenderer_Init
	str r0, [r5, #4]
	add r0, r5, #0
	mov r2, #1
	add r0, #8
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r7, #0x13
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #4
_021F09E6:
	ldr r2, [r5]
	mov r0, #2
	add r1, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021F09E6
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	sub r1, #0x2d
	mov r2, #4
	bl AddCharResObjFromNarc
	mov r2, #0x52
	lsl r2, r2, #2
	str r0, [r5, r2]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r0, [r5]
	sub r2, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r5, r2]
	add r1, #0xff
	mov r2, #3
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #6
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	sub r1, #0x49
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #5
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	sub r1, #0x4d
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0x5d
	str r0, [sp, #8]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r2, #9
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5]
	sub r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0x5d
	mov r2, #6
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x5d
	mov r2, #0xa
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x5d
	mov r2, #0xa
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021F09B4

	thumb_func_start ov112_021F0B28
ov112_021F0B28: ; 0x021F0B28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0x67
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x90
	lsl r7, r7, #2
_021F0B36:
	lsl r0, r4, #3
	add r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	lsl r0, r4, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl ov112_021F0B9C
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021F0B36
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl ov112_021F0B9C
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x32
	ldr r0, [r5]
	lsl r1, r1, #6
	bl Heap_Alloc
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov112_021F0C50
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021F0B28

	thumb_func_start ov112_021F0B9C
ov112_021F0B9C: ; 0x021F0B9C
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x13
	str r2, [sp, #0xc]
	lsl r0, r0, #4
	str r3, [sp, #0x10]
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x2c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4]
	add r2, sp, #0x2c
	str r0, [sp]
	ldr r1, [r4, #4]
	add r0, sp, #0x50
	mov r3, #2
	bl ov112_021F0C30
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x74]
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x94]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x5c]
	add r0, sp, #0x50
	bl Sprite_CreateAffine
	mov r1, #1
	add r4, r0, #0
	bl Sprite_SetAnimActiveFlag
	ldr r1, [sp, #0x98]
	add r0, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetPriority
	ldr r1, [sp, #0x9c]
	add r0, r4, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov112_021F0B9C

