	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02261580
	.extern ov91_0225D40C

	.text

	.text
	thumb_func_start ov91_02261580
ov91_02261580: ; 0x02261580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	add r6, r3, #0
	add r0, #0x9c
	add r4, r1, #0
	str r6, [r0]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r7, r2, #0
	str r6, [sp, #8]
	add r1, #0xbc
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0xa
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r5]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xc0
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0xb
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	str r0, [r5, #4]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xc4
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #9
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #8]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xc8
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #8
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0xc]
	ldr r0, [r5]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
	cmp r0, #0
	bne _02261608
	bl GF_AssertFail
_02261608:
	ldr r0, [r5, #4]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _02261616
	bl GF_AssertFail
_02261616:
	ldr r0, [r5]
	bl sub_0200A740
	ldr r0, [r5, #4]
	bl sub_0200A740
	mov r1, #0x8c
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x8d
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xbc
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xc0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xc4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xc8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x10
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x5c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, _0226178C ; =0xFFFC0000
	str r6, [sp, #0x78]
	str r0, [sp, #0x64]
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x68]
	mov r0, #1
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x5c
	bl Sprite_Create
	mov r1, #0
	str r0, [r5, #0x34]
	bl Sprite_SetDrawFlag
	mov r0, #0x10
	add r1, r6, #0
	bl String_New
	str r0, [r5, #0x5c]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r4]
	add r1, #0x38
	mov r2, #3
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	add r0, r5, #0
	add r0, #0x38
	add r1, r6, #0
	bl sub_02013910
	mov r1, #1
	str r0, [r5, #0x4c]
	bl sub_02013948
	mov r1, #1
	add r3, r5, #0
	add r2, r1, #0
	add r3, #0x50
	bl sub_02021AC8
	cmp r0, #1
	beq _022616D2
	bl GF_AssertFail
_022616D2:
	mov r1, #0x96
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xb6
	ldr r0, [r4, r1]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r5, #0x60]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _022616FA
	bl GF_AssertFail
_022616FA:
	ldr r0, [r5, #0x60]
	bl sub_0200A740
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x38
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x60]
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x40]
	mov r0, #6
	mvn r0, r0
	str r0, [sp, #0x44]
	add r0, r0, #2
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	str r6, [sp, #0x58]
	ldr r1, [r5, #0x4c]
	add r0, sp, #0x2c
	bl TextOBJ_Create
	mov r1, #0
	str r0, [r5, #0x48]
	bl TextOBJ_SetSpritesDrawFlag
	add r0, r5, #0
	add r0, #0x38
	bl RemoveWindow
	mov r2, #8
	add r0, r5, #0
	mov r3, #9
	str r2, [sp]
	ldr r1, _0226178C ; =0xFFFC0000
	add r0, #0x64
	lsl r2, r2, #0xe
	lsl r3, r3, #0xe
	bl ov91_0225D40C
	mov r0, #4
	mov r1, #3
	lsl r1, r1, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x7c
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov91_0225D40C
	add r0, r5, #0
	mov r1, #0
	add r0, #0x94
	strh r1, [r0]
	mov r0, #4
	add r5, #0x96
	strh r0, [r5]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0226178C: .word 0xFFFC0000
	thumb_func_end ov91_02261580

