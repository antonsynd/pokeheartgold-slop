	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_022604F4
	.extern ov91_022607C4
	.extern ov91_02261BF0

	.text

	.text
	thumb_func_start ov91_022604F4
ov91_022604F4: ; 0x022604F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, _0226064C ; =0x000006FC
	ldr r4, _02260650 ; =ov91_02261BF0
	str r1, [sp, #0x2c]
	add r7, r2, #0
	add r6, r5, r0
_02260508:
	ldrb r2, [r4]
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_02018030
	ldr r0, [sp, #0x30]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x10
	str r0, [sp, #0x30]
	cmp r0, #5
	blt _02260508
	ldr r0, _02260654 ; =0x0000074C
	ldr r1, [sp, #0x2c]
	add r0, r5, r0
	mov r2, #0x2e
	add r3, r7, #0
	bl sub_02018030
	ldr r0, _02260658 ; =0x00000754
	mov r2, #0x1f
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xe4
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #7
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	ldr r1, _0226065C ; =0x0000075C
	mov r2, #4
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	add r1, #0xe8
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	mov r1, #0x76
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xec
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #6
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02260660 ; =0x00000764
	mov r2, #5
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xf0
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _02260664 ; =0x00000768
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask_UpdateMappingTypeFromHW_AllocAtEnd
	cmp r0, #0
	bne _022605C2
	bl GF_AssertFail
_022605C2:
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _022605D4
	bl GF_AssertFail
_022605D4:
	ldr r0, _0226065C ; =0x0000075C
	ldr r0, [r5, r0]
	bl sub_0200A740
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A740
	mov r1, #0x64
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x65
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xe4
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xe8
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xec
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xf0
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02260668 ; =0x0000076C
	add r2, r1, #0
	add r0, r5, r0
	bl CreateSpriteResourcesHeader
	mov r0, #0x79
	lsl r0, r0, #4
	mov r6, #0
	add r4, r5, r0
_02260630:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov91_022607C4
	mov r0, #0x42
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, #0x60
	blt _02260630
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0226064C: .word 0x000006FC
_02260650: .word ov91_02261BF0
_02260654: .word 0x0000074C
_02260658: .word 0x00000754
_0226065C: .word 0x0000075C
_02260660: .word 0x00000764
_02260664: .word 0x00000768
_02260668: .word 0x0000076C
	thumb_func_end ov91_022604F4

