#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E78F8
	.public ov51_021E7AF4
	.public ov51_021E7BD0
	.extern _021E80A0
	.extern ov51_021E7D68
	.extern ov51_021E7FB8
	.extern ov51_021E7FBC
	.extern ov51_021E7FC4
	.extern ov51_021E7FDC
	.extern ov51_021E801C
	.extern ov51_021E80A4

	.text

	.text
	thumb_func_start ov51_021E78F8
ov51_021E78F8: ; 0x021E78F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r2, #1
	lsl r2, r2, #0x1a
	str r0, [sp, #0x14]
	ldr r0, [r2]
	ldr r1, _021E7AD8 ; =0xFFCFFFEF
	add r3, r0, #0
	ldr r0, _021E7ADC ; =0x00200010
	and r3, r1
	orr r0, r3
	str r0, [r2]
	ldr r2, _021E7AE0 ; =0x04001000
	ldr r0, [r2]
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2]
	bl ov51_021E7D68
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x19
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	ldr r1, [sp, #0x14]
	mov r0, #0x21
	add r1, r1, #4
	mov r2, #0x19
	bl G2dRenderer_Init
	ldr r1, [sp, #0x14]
	mov r2, #0xe
	str r0, [r1]
	add r0, r1, #0
	add r0, r0, #4
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	mov r7, #0x4f
	ldr r4, _021E7AE4 ; =ov51_021E7FB8
	ldr r5, [sp, #0x14]
	mov r6, #0
	lsl r7, r7, #2
_021E7964:
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #0x19
	bl Create2DGfxResObjMan
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4]
	add r1, r6, #0
	mov r2, #0x19
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021E7964
	ldr r0, _021E7AE8 ; =ov51_021E7FBC
	ldr r3, _021E7AEC ; =ov51_021E7FC4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x24]
	mov r5, #0
	str r0, [sp, #0x28]
	add r2, sp, #0x1c
	mov r1, #8
_021E799C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E799C
	ldr r4, [sp, #0x14]
	add r7, sp, #0x24
	add r6, sp, #0x1c
_021E79AE:
	str r5, [sp]
	ldr r0, [r7]
	mov r1, #0x31
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r2, [r6]
	ldr r0, [r4, r0]
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	str r5, [sp]
	ldr r0, [r7]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	add r0, r1, #0
	sub r0, #0x1c
	ldrb r2, [r6, #1]
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl AddPlttResObjFromNarc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0x1c
	ldrb r2, [r6, #2]
	ldr r0, [r4, r0]
	mov r1, #0x31
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	str r5, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0x1c
	ldrb r2, [r6, #3]
	ldr r0, [r4, r0]
	mov r1, #0x31
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl SpriteTransfer_CreateCharTransferTask
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, #0x10
	cmp r5, #2
	blt _021E79AE
	ldr r4, _021E7AF0 ; =ov51_021E7FDC
	add r3, sp, #0x2c
	mov r2, #8
_021E7A58:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E7A58
	mov r0, #0x31
	mov r1, #0x19
	bl NARC_New
	str r0, [sp, #0x18]
	mov r1, #0x8e
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	mov r4, #0
	add r7, r0, r1
_021E7A74:
	ldr r0, [sp, #0x14]
	lsl r6, r4, #2
	add r1, sp, #0x2c
	add r5, r0, r6
	ldr r0, [sp, #0x18]
	ldr r1, [r1, r6]
	mov r2, #0x19
	bl NARC_AllocAndReadWholeMember
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7AAE
	add r1, r7, r6
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	bne _021E7AB2
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Heap_Free
	bl GF_AssertFail
	b _021E7AB2
_021E7AAE:
	bl GF_AssertFail
_021E7AB2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021E7A74
	ldr r0, [sp, #0x18]
	bl NARC_Delete
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7AD8: .word 0xFFCFFFEF
_021E7ADC: .word 0x00200010
_021E7AE0: .word 0x04001000
_021E7AE4: .word ov51_021E7FB8
_021E7AE8: .word ov51_021E7FBC
_021E7AEC: .word ov51_021E7FC4
_021E7AF0: .word ov51_021E7FDC
	thumb_func_end ov51_021E78F8

	thumb_func_start ov51_021E7AF4
ov51_021E7AF4: ; 0x021E7AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r1, [sp, #0x2c]
	mov r1, #0
	add r5, r0, #0
	str r2, [sp, #0x30]
	mov r2, #0x4b
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	lsl r2, r2, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r2]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x64
	bl CreateSpriteResourcesHeader
	ldr r0, [r5]
	mov r7, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x64
	str r0, [sp, #0x38]
	mov r0, #1
	lsl r0, r0, #0xc
	str r7, [sp, #0x3c]
	str r7, [sp, #0x40]
	str r7, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r7, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #1
	str r0, [sp, #0x5c]
	mov r0, #0x19
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021E7B6A
	mov r7, #0x28
_021E7B6A:
	ldr r6, _021E7BCC ; =ov51_021E801C
	mov r4, #0
_021E7B6E:
	ldr r0, [r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldr r0, [r6, #4]
	add r0, r7, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl Sprite_CreateAffine
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r4]
	cmp r0, #0
	beq _021E7BB0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021E7BBC
	cmp r4, #7
	ble _021E7BBC
_021E7BB0:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_021E7BBC:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #4
	cmp r4, #0x10
	blt _021E7B6E
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7BCC: .word ov51_021E801C
	thumb_func_end ov51_021E7AF4

	thumb_func_start ov51_021E7BD0
ov51_021E7BD0: ; 0x021E7BD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #1
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #0x4f
	str r1, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x5c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5]
	mov r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r6, [sp, #0x34]
	str r6, [sp, #0x38]
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0x19
	ldr r4, _021E7C9C ; =ov51_021E80A4
	ldr r7, _021E7CA0 ; =_021E80A0
	str r6, [sp, #0x50]
	str r0, [sp, #0x58]
_021E7C3C:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrb r0, [r4, #1]
	lsl r1, r0, #0xc
	mov r0, #0xe
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0x1f
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x1f
	lsl r0, r0, #4
	ldrb r1, [r7]
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x1f
	lsl r0, r0, #4
	mov r1, #2
	ldr r0, [r5, r0]
	sub r1, r1, r6
	bl Sprite_SetDrawPriority
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	add r7, r7, #1
	cmp r6, #2
	blt _021E7C3C
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7C9C: .word ov51_021E80A4
_021E7CA0: .word _021E80A0
	thumb_func_end ov51_021E7BD0

