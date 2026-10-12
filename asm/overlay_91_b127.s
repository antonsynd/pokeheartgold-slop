	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F0C0

	.text

	.text
	thumb_func_start ov91_0225F0C0
ov91_0225F0C0: ; 0x0225F0C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl memset
	mov r0, #0xc8
	add r1, r6, #0
	bl NARC_New
	mov r1, #0x78
	add r7, r0, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xd0
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r5]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xd4
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	str r0, [r5, #4]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xd8
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #8]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xdc
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0xc]
	ldr r0, [r5]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
	cmp r0, #0
	bne _0225F154
	bl GF_AssertFail
_0225F154:
	ldr r0, [r5, #4]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225F162
	bl GF_AssertFail
_0225F162:
	ldr r0, [r5]
	bl sub_0200A740
	ldr r0, [r5, #4]
	bl sub_0200A740
	mov r1, #0x78
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x79
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xd0
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xdc
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x10
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x30]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x34]
	mov r0, #0x9e
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl Sprite_Create
	mov r1, #0
	str r0, [r5, #0x34]
	bl Sprite_SetDrawFlag
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov91_0225F0C0

