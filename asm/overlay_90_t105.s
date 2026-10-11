	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225BE08
	.public ov90_0225BEE0
	.public ov90_0225C06C
	.extern ov90_02258EB4
	.extern ov90_0225BAD0
	.extern ov90_0225BBD0
	.extern ov90_0225BBF0
	.extern ov90_0225BD08

	.text

	.text
	thumb_func_start ov90_0225BE08
ov90_0225BE08: ; 0x0225BE08
	push {r4, r5}
	ldr r1, _0225BED0 ; =0x04000006
	ldrh r2, [r1]
	add r2, r2, #1
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x18
	sub r3, r3, r4
	mov r2, #0x18
	ror r3, r2
	add r2, r4, r3
	cmp r2, #0xc0
	bge _0225BECA
	sub r3, r1, #6
	ldr r4, [r3]
	mov r3, #0xe
	lsl r3, r3, #0xc
	and r3, r4
	sub r4, r1, #2
	ldrh r5, [r4]
	mov r4, #2
	lsr r3, r3, #0xd
	tst r4, r5
	beq _0225BECA
	cmp r2, #0x49
	blt _0225BE3E
	cmp r2, #0x79
	ble _0225BE6A
_0225BE3E:
	ldr r1, _0225BED4 ; =0x0400004A
	mov r4, #0x3f
	ldrh r1, [r1]
	bic r1, r4
	mov r4, #0x19
	lsl r4, r4, #4
	ldrb r4, [r0, r4]
	lsl r5, r4, #0x1b
	lsr r5, r5, #0x1b
	lsl r4, r4, #0x1a
	orr r1, r5
	lsr r4, r4, #0x1f
	beq _0225BE5C
	mov r4, #0x20
	orr r1, r4
_0225BE5C:
	ldr r4, _0225BED4 ; =0x0400004A
	strh r1, [r4]
	mov r1, #0x65
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	orr r3, r1
	b _0225BE98
_0225BE6A:
	add r1, #0x44
	ldrh r1, [r1]
	mov r4, #0x3f
	bic r1, r4
	ldr r4, _0225BED8 ; =0x00000191
	ldrb r4, [r0, r4]
	lsl r5, r4, #0x1b
	lsr r5, r5, #0x1b
	lsl r4, r4, #0x1a
	orr r1, r5
	lsr r4, r4, #0x1f
	beq _0225BE86
	mov r4, #0x20
	orr r1, r4
_0225BE86:
	ldr r4, _0225BED4 ; =0x0400004A
	strh r1, [r4]
	mov r1, #0x65
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	mov r1, #2
	orr r1, r4
	mvn r1, r1
	and r3, r1
_0225BE98:
	add r0, r0, r2
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	ldr r0, _0225BEDC ; =0xFFFF1FFF
	bne _0225BEB8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	and r1, r0
	mov r0, #1
	orr r0, r3
	lsl r0, r0, #0xd
	orr r0, r1
	str r0, [r2]
	pop {r4, r5}
	bx lr
_0225BEB8:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	and r1, r0
	mov r0, #1
	bic r3, r0
	lsl r0, r3, #0xd
	orr r0, r1
	str r0, [r2]
_0225BECA:
	pop {r4, r5}
	bx lr
	nop
_0225BED0: .word 0x04000006
_0225BED4: .word 0x0400004A
_0225BED8: .word 0x00000191
_0225BEDC: .word 0xFFFF1FFF
	thumb_func_end ov90_0225BE08

	thumb_func_start ov90_0225BEE0
ov90_0225BEE0: ; 0x0225BEE0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldrh r0, [r4, #4]
	cmp r0, #5
	bhi _0225BF44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BEF8: ; jump table
	.short _0225C05E - _0225BEF8 - 2 ; case 0
	.short _0225BF04 - _0225BEF8 - 2 ; case 1
	.short _0225BF38 - _0225BEF8 - 2 ; case 2
	.short _0225BF54 - _0225BEF8 - 2 ; case 3
	.short _0225C018 - _0225BEF8 - 2 ; case 4
	.short _0225C03A - _0225BEF8 - 2 ; case 5
_0225BF04:
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #8]
	ldr r3, [r4]
	add r0, #0x34
	bl ov90_0225BAD0
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	mov r3, #0x61
	bl ov90_02258EB4
	str r0, [r4, #0x30]
	mov r1, #0
	bl Sprite_SetPriority
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0225BF38:
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BBD0
	cmp r0, #1
	beq _0225BF46
_0225BF44:
	b _0225C05E
_0225BF46:
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0225BF54:
	ldr r0, [r4, #0x30]
	bl Sprite_GetAnimationFrame
	add r6, r0, #0
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0xc
	bl Sprite_UpdateAnim
	ldr r0, [r4, #0x30]
	bl Sprite_GetAnimationFrame
	add r5, r0, #0
	cmp r6, r5
	beq _0225BFC8
	cmp r5, #0xf
	bhi _0225BFC8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BF82: ; jump table
	.short _0225BFC8 - _0225BF82 - 2 ; case 0
	.short _0225BFC8 - _0225BF82 - 2 ; case 1
	.short _0225BFC8 - _0225BF82 - 2 ; case 2
	.short _0225BFC8 - _0225BF82 - 2 ; case 3
	.short _0225BFC8 - _0225BF82 - 2 ; case 4
	.short _0225BFC8 - _0225BF82 - 2 ; case 5
	.short _0225BFC8 - _0225BF82 - 2 ; case 6
	.short _0225BFA2 - _0225BF82 - 2 ; case 7
	.short _0225BFC8 - _0225BF82 - 2 ; case 8
	.short _0225BFAA - _0225BF82 - 2 ; case 9
	.short _0225BFC8 - _0225BF82 - 2 ; case 10
	.short _0225BFB2 - _0225BF82 - 2 ; case 11
	.short _0225BFC8 - _0225BF82 - 2 ; case 12
	.short _0225BFBA - _0225BF82 - 2 ; case 13
	.short _0225BFC8 - _0225BF82 - 2 ; case 14
	.short _0225BFC2 - _0225BF82 - 2 ; case 15
_0225BFA2:
	ldr r0, _0225C064 ; =0x000005DD
	bl PlaySE
	b _0225BFC8
_0225BFAA:
	ldr r0, _0225C064 ; =0x000005DD
	bl PlaySE
	b _0225BFC8
_0225BFB2:
	ldr r0, _0225C064 ; =0x000005DD
	bl PlaySE
	b _0225BFC8
_0225BFBA:
	ldr r0, _0225C064 ; =0x000005DD
	bl PlaySE
	b _0225BFC8
_0225BFC2:
	ldr r0, _0225C068 ; =0x00000642
	bl PlaySE
_0225BFC8:
	cmp r5, #0xf
	bne _0225BFFC
	mov r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0225BFDE
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl Sprite_SetPalOffsetRespectVramOffset
	b _0225BFEA
_0225BFDE:
	cmp r0, #4
	bne _0225BFEA
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl Sprite_SetPalOffsetRespectVramOffset
_0225BFEA:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	blt _0225BFFC
	mov r0, #0
	strh r0, [r4, #6]
_0225BFFC:
	ldr r0, [r4, #0x30]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _0225C05E
	ldrh r0, [r4, #4]
	mov r1, #0
	add r0, r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl Sprite_SetPalOffsetRespectVramOffset
	add sp, #8
	pop {r4, r5, r6, pc}
_0225C018:
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BBF0
	cmp r0, #1
	bne _0225C05E
	ldr r0, [r4, #0x30]
	bl Sprite_Delete
	mov r1, #0
	str r1, [r4, #0x30]
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	pop {r4, r5, r6, pc}
_0225C03A:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #2
	blt _0225C05E
	mov r0, #0
	strh r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BD08
	ldr r0, [r4, #0x2c]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_0225C05E:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0225C064: .word 0x000005DD
_0225C068: .word 0x00000642
	thumb_func_end ov90_0225BEE0

	thumb_func_start ov90_0225C06C
ov90_0225C06C: ; 0x0225C06C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldrh r0, [r4, #4]
	cmp r0, #5
	bhi _0225C14C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C084: ; jump table
	.short _0225C14C - _0225C084 - 2 ; case 0
	.short _0225C090 - _0225C084 - 2 ; case 1
	.short _0225C0CC - _0225C084 - 2 ; case 2
	.short _0225C0EE - _0225C084 - 2 ; case 3
	.short _0225C106 - _0225C084 - 2 ; case 4
	.short _0225C128 - _0225C084 - 2 ; case 5
_0225C090:
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #8]
	ldr r3, [r4]
	add r0, #0x34
	bl ov90_0225BAD0
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	mov r3, #0x61
	bl ov90_02258EB4
	str r0, [r4, #0x30]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl Sprite_SetPriority
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_0225C0CC:
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BBD0
	cmp r0, #1
	bne _0225C14C
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	pop {r4, pc}
_0225C0EE:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _0225C14C
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_0225C106:
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BBF0
	cmp r0, #1
	bne _0225C14C
	ldr r0, [r4, #0x30]
	bl Sprite_Delete
	mov r0, #0
	str r0, [r4, #0x30]
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	add sp, #8
	add r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_0225C128:
	mov r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #2
	blt _0225C14C
	mov r0, #0
	strh r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BD08
	ldr r0, [r4, #0x2c]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_0225C14C:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov90_0225C06C

