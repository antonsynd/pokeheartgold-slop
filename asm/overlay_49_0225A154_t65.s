	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225AD20
	.extern ov49_022696E8

    .text

	.text
	thumb_func_start ov49_0225AD20
ov49_0225AD20: ; 0x0225AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r2, #0
	add r7, r0, #0
	add r4, r1, #0
	mov r0, #0x3c
	add r1, r5, #0
	bl NARC_New
	add r6, r0, #0
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x13
	str r5, [sp, #8]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r7, #0x40]
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4d
	str r5, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	str r0, [r7, #0x44]
	ldr r1, _0225AE44 ; =0x00001388
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	lsr r0, r1, #4
	str r5, [sp, #8]
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r7, #0x48]
	ldr r0, _0225AE44 ; =0x00001388
	add r1, r6, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4f
	str r5, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #6
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r7, #0x4c]
	add r0, r6, #0
	bl NARC_Delete
	ldr r0, [r7, #0x40]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	ldr r0, [r7, #0x44]
	bl SpriteTransfer_CreatePlttTransferTask
	ldr r1, _0225AE44 ; =0x00001388
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #0x13
	str r2, [sp, #0x10]
	lsl r0, r0, #4
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
	add r0, sp, #0x4c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #4]
	mov r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #3
	lsl r0, r0, #0x12
	str r5, [sp, #0x48]
	ldr r4, _0225AE48 ; =ov49_022696E8
	str r6, [sp, #0x40]
	str r0, [sp, #0x34]
	add r5, r7, #0
_0225AE0E:
	ldrb r0, [r4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_Create
	str r0, [r5, #0x50]
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0225AE0E
	mov r0, #0
	str r0, [r7, #0x3c]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AE44: .word 0x00001388
_0225AE48: .word ov49_022696E8
	thumb_func_end ov49_0225AD20

