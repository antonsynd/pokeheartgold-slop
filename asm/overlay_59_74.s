	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BE44
	.public ov59_0223BE70
	.public ov59_0223BFC8

	.text

	thumb_func_start ov59_0223BE70
ov59_0223BE70: ; 0x0223BE70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	mov r1, #0x20
	add r7, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	str r5, [r4]
	strb r7, [r4, #4]
	mov r0, #0x1e
	strb r0, [r4, #6]
	lsl r0, r6, #1
	ldrh r1, [r5, #0x2e]
	add r0, r6, r0
	asr r1, r0
	mov r0, #7
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r7, #0
	bne _0223BEFE
	add r1, r5, #0
	add r1, #0x38
	ldrb r1, [r1]
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0223BFBC ; =0x0000019A
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0223BED6
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0223BEE4
_0223BED6:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0223BEE4:
	bl _ffix
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Div
	str r0, [r4, #8]
	mov r0, #0xc
	strh r0, [r4, #0xe]
	mov r0, #0
	strh r0, [r4, #0xc]
	b _0223BF5C
_0223BEFE:
	add r1, r5, #0
	add r1, #0x38
	ldrb r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _0223BFC0 ; =0x0000119A
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x18]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0223BF2E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0223BF3C
_0223BF2E:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0223BF3C:
	bl _ffix
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Div
	neg r0, r0
	str r0, [r4, #8]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	sub r0, #0xc
	strh r0, [r4, #0xe]
	mov r0, #0x5a
	lsl r0, r0, #2
	strh r0, [r4, #0xc]
_0223BF5C:
	lsl r0, r6, #2
	add r0, r6, r0
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	add r0, #8
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x10
	str r0, [r4, #0x1c]
	bl Sprite_SetAffineScale
	add r2, r5, r6
	add r2, #0x30
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r2, #4
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov59_0223BE44
	ldr r0, _0223BFC4 ; =ov59_0223BFC8
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r5, #0x38
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BFBC: .word 0x0000019A
_0223BFC0: .word 0x0000119A
_0223BFC4: .word ov59_0223BFC8
	thumb_func_end ov59_0223BE70

	thumb_func_start ov59_0223BFC8
ov59_0223BFC8: ; 0x0223BFC8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0xe
	ldrh r1, [r5, #0xc]
	ldrsh r0, [r5, r0]
	ldr r4, [r5]
	add r0, r1, r0
	strh r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldrb r0, [r5, #6]
	sub r0, r0, #1
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0223C010
	ldrh r0, [r5, #0xc]
	bl GF_DegreeToSinCosIdx
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	bl Sprite_SetAffineZRotation
	ldr r0, [r5, #0x1c]
	add r5, #0x10
	add r1, r5, #0
	bl Sprite_SetAffineScale
	pop {r4, r5, r6, pc}
_0223C010:
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl Sprite_SetAffineZRotation
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	add r1, r5, #0
	ldr r0, [r5, #0x1c]
	add r1, #0x10
	bl Sprite_SetAffineScale
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0223C03A
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0223C03A:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r4, #0x4f
	sub r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_0223BFC8

