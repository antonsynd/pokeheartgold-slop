	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225C4CC
	.extern ov49_0225C828
	.extern ov49_022696FC
	.extern ov49_02269704
	.extern ov49_02269774
	.extern ov49_0226991C

    .text

	.text
	thumb_func_start ov49_0225C4CC
ov49_0225C4CC: ; 0x0225C4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r7, r0, #0
	ldr r0, [sp, #0xb0]
	add r5, r1, #0
	str r0, [sp, #0xb0]
	mov r0, #0xd7
	add r1, r3, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl NARC_New
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xb4]
	bl ov45_0222A99C
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xb4]
	bl ov45_0222A9CC
	str r0, [sp, #0x4c]
	ldr r0, _0225C77C ; =ov49_02269774
	mov r6, #0
	str r0, [sp, #0x40]
	ldr r0, _0225C780 ; =ov49_02269704
	add r4, r7, #0
	str r0, [sp, #0x3c]
	ldr r0, _0225C784 ; =ov49_022696FC
	str r0, [sp, #0x38]
_0225C506:
	cmp r6, #2
	bne _0225C526
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _0225C546
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	b _0225C5EC
_0225C526:
	cmp r6, #3
	bne _0225C546
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _0225C546
	add r1, r4, #0
	add r1, #0xac
	mov r0, #0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	b _0225C5EC
_0225C546:
	ldr r0, [sp, #0x40]
	ldrh r0, [r0]
	cmp r0, #0xd7
	bne _0225C554
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	b _0225C558
_0225C554:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
_0225C558:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x34]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	bl AddPlttResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteTransfer_CreatePlttTransferTask
	cmp r0, #0
	bne _0225C596
	bl GF_AssertFail
_0225C596:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0200A740
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
_0225C5EC:
	ldr r0, [sp, #0x40]
	add r6, r6, #1
	add r0, r0, #6
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r4, r4, #4
	add r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x38]
	cmp r6, #4
	bge _0225C608
	b _0225C506
_0225C608:
	ldr r0, _0225C788 ; =ov49_0226991C
	mov r6, #0
	str r0, [sp, #0x48]
_0225C60E:
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov45_0222A92C
	add r4, r0, #0
	ldr r0, [sp, #0xb0]
	add r1, r6, #0
	bl ov45_0222A964
	add r1, r0, #0
	cmp r4, #0x18
	bne _0225C632
	add r1, r7, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1]
	str r0, [r7, #0x7c]
	b _0225C760
_0225C632:
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	add r0, r4, #0
	bl ov49_0225C828
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225C648
	ldr r1, [sp, #0x2c]
	b _0225C64A
_0225C648:
	ldr r1, [sp, #0x50]
_0225C64A:
	add r0, r6, #0
	add r0, #0x96
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl AddCharResObjFromOpenNarc
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1]
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	cmp r0, #0
	bne _0225C67E
	bl GF_AssertFail
_0225C67E:
	add r0, r7, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0200A740
	ldrb r2, [r4]
	mov r0, #0
	mvn r0, r0
	add r2, #0x96
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x96
	str r0, [sp, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r2, #0
	str r0, [sp, #0x1c]
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x54
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x48]
	str r0, [sp, #0x78]
	add r0, sp, #0x54
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x8c]
	mov r0, #2
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x30]
	add r3, sp, #0x80
	str r0, [sp, #0x94]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225C708
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C716
_0225C708:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C716:
	bl _ffix
	ldr r1, [sp, #0x80]
	add r0, r1, r0
	str r0, [sp, #0x80]
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225C73A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C748
_0225C73A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C748:
	bl _ffix
	ldr r1, [sp, #0x84]
	add r0, r1, r0
	str r0, [sp, #0x84]
	add r0, sp, #0x78
	bl Sprite_Create
	str r0, [r7, #0x7c]
	ldrb r1, [r4, #1]
	bl Sprite_SetPalOffsetRespectVramOffset
_0225C760:
	ldr r0, [sp, #0x48]
	add r6, r6, #1
	add r0, #0xc
	add r7, r7, #4
	str r0, [sp, #0x48]
	cmp r6, #0xc
	bge _0225C770
	b _0225C60E
_0225C770:
	ldr r0, [sp, #0x50]
	bl NARC_Delete
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225C77C: .word ov49_02269774
_0225C780: .word ov49_02269704
_0225C784: .word ov49_022696FC
_0225C788: .word ov49_0226991C
	thumb_func_end ov49_0225C4CC

