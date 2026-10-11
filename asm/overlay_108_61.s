	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E8758

	.text

	.text
	thumb_func_start ov108_021E8758
ov108_021E8758: ; 0x021E8758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	mov r7, #0
	ldr r6, [r5, r0]
	add r4, r7, #0
_021E8768:
	mov r0, #0xe
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp]
	ldrh r0, [r5, #0xe]
	add r2, r7, #0
	mov r1, #0xa6
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, #0x12
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl AddCharResObjFromNarc
	ldr r1, [r6]
	str r0, [r1, r4]
	ldr r0, [r6]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _021E879A
	bl GF_AssertFail
_021E879A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E87A8
	cmp r0, #1
	beq _021E87B2
	cmp r0, #2
	b _021E87BC
_021E87A8:
	ldr r0, [r6]
	ldr r0, [r0, r4]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	b _021E87C4
_021E87B2:
	ldr r0, [r6]
	ldr r0, [r0, r4]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
	b _021E87C4
_021E87BC:
	ldr r0, [r6]
	ldr r0, [r0, r4]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW
_021E87C4:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0xc
	blt _021E8768
	mov r4, #0
	add r6, r5, #0
_021E87D0:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp]
	add r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0xa6
	add r2, #0x10
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	ldr r1, [r7]
	str r0, [r1]
	ldr r0, [r7]
	ldr r0, [r0]
	cmp r0, #0
	bne _021E8806
	bl GF_AssertFail
_021E8806:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #2
	blt _021E87D0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xe
	lsl r1, r1, #0xc
	str r1, [sp]
	ldrh r1, [r5, #0xe]
	sub r0, #0x10
	mov r2, #0xf
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, [r5]
	mov r3, #0
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #0xa6
	bl AddPlttResObjFromNarc
	ldr r1, [r4]
	str r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _021E8844
	bl GF_AssertFail
_021E8844:
	ldr r0, [r4]
	ldr r0, [r0]
	bl SpriteTransfer_CreatePlttTransferTask
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov108_021E8758

