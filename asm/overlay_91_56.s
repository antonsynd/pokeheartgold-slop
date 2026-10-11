	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225FB80

	.text

	thumb_func_start ov91_0225FB80
ov91_0225FB80: ; 0x0225FB80
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r2, #0
	mov r2, #0xc8
	add r5, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r2, #0x80
	ldr r0, [r5, r2]
	mov r2, #2
	mov r3, #0
	add r6, r1, #0
	bl AddCharResObjFromOpenNarc
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r1, #0x84
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #3
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r1, #0x88
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, #0
	str r4, [sp, #8]
	add r1, #0x8c
	ldr r0, [r5, r1]
	add r1, r6, #0
	add r3, r2, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
	cmp r0, #0
	bne _0225FC14
	bl GF_AssertFail
_0225FC14:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225FC26
	bl GF_AssertFail
_0225FC26:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A740
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A740
	mov r1, #0xc8
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0xc9
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0x80
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0x84
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0x88
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0x8c
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r1, #0
	add r0, #0x90
	add r0, r5, r0
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_0225FB80

