	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225BF34
	.public ov89_0225BFE4
	.public ov89_0225C090
	.public ov89_0225C168
	.public ov89_0225C240
	.public ov89_0225C31C
	.public ov89_0225C3E8
	.public ov89_0225C498
	.public ov89_0225C570
	.public ov89_0225C648
	.public ov89_0225C724
	.public ov89_0225C818

	.text

	.text
	thumb_func_start ov89_0225BF34
ov89_0225BF34: ; 0x0225BF34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r0, [r4, #6]
	add r5, r2, #0
	cmp r0, #3
	bhi _0225BFD2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BF4C: ; jump table
	.short _0225BF54 - _0225BF4C - 2 ; case 0
	.short _0225BF68 - _0225BF4C - 2 ; case 1
	.short _0225BF8A - _0225BF4C - 2 ; case 2
	.short _0225BFA4 - _0225BF4C - 2 ; case 3
_0225BF54:
	add r0, r5, #0
	bl Camera_GetDistance
	str r0, [r4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _0225BFD8 ; =0x000005D5
	bl PlaySE
_0225BF68:
	ldr r0, _0225BFDC ; =0xFFFFE556
	add r1, r5, #0
	bl Camera_AdjustDistance
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _0225BFD2
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225BFD2
_0225BF8A:
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _0225BFD2
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225BFD2
_0225BFA4:
	ldr r0, _0225BFE0 ; =0x00008555
	add r1, r5, #0
	bl Camera_AdjustDistance
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _0225BFC6
	add r0, r5, #0
	bl Camera_GetDistance
	ldr r1, [r4]
	cmp r0, r1
	blt _0225BFD2
_0225BFC6:
	ldr r0, [r4]
	add r1, r5, #0
	bl Camera_SetDistance
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225BFD2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225BFD8: .word 0x000005D5
_0225BFDC: .word 0xFFFFE556
_0225BFE0: .word 0x00008555
	thumb_func_end ov89_0225BF34

	thumb_func_start ov89_0225BFE4
ov89_0225BFE4: ; 0x0225BFE4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r5, #8
	ldrb r0, [r5, #0xc]
	add r4, r2, #0
	cmp r0, #0
	beq _0225BFF8
	cmp r0, #1
	beq _0225C004
	b _0225C082
_0225BFF8:
	ldr r0, _0225C08C ; =0x000005D5
	bl PlaySE
	ldrb r0, [r5, #0xc]
	add r0, r0, #1
	strb r0, [r5, #0xc]
_0225C004:
	ldrb r0, [r5, #0xd]
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r0, #1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xd]
	lsl r0, r0, #0xa
	cmp r0, r1
	bge _0225C01C
	lsr r1, r1, #1
	sub r1, r1, r0
	b _0225C022
_0225C01C:
	mov r1, #3
	lsl r1, r1, #0xc
	sub r1, r0, r1
_0225C022:
	mov r2, #1
	lsl r2, r2, #0xc
	str r1, [r5, #4]
	cmp r0, r2
	bge _0225C030
	str r0, [r5]
	b _0225C054
_0225C030:
	lsl r1, r2, #1
	cmp r0, r1
	bge _0225C03C
	sub r0, r1, r0
	str r0, [r5]
	b _0225C054
_0225C03C:
	mov r1, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _0225C04E
	lsl r1, r2, #1
	sub r0, r0, r1
	neg r0, r0
	str r0, [r5]
	b _0225C054
_0225C04E:
	lsl r1, r2, #2
	sub r0, r0, r1
	str r0, [r5]
_0225C054:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x10
	blo _0225C078
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	blo _0225C078
	ldrb r0, [r5, #0xc]
	add r0, r0, #1
	strb r0, [r5, #0xc]
_0225C078:
	add r0, r5, #0
	add r1, r4, #0
	bl Camera_SetLookAtCamUp
	b _0225C086
_0225C082:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C086:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225C08C: .word 0x000005D5
	thumb_func_end ov89_0225BFE4

	thumb_func_start ov89_0225C090
ov89_0225C090: ; 0x0225C090
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x18
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0225C15E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C0B8: ; jump table
	.short _0225C0C0 - _0225C0B8 - 2 ; case 0
	.short _0225C0EA - _0225C0B8 - 2 ; case 1
	.short _0225C11A - _0225C0B8 - 2 ; case 2
	.short _0225C130 - _0225C0B8 - 2 ; case 3
_0225C0C0:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _0225C164 ; =0x000005D5
	bl PlaySE
_0225C0EA:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	mov r0, #1
	lsl r0, r0, #0xc
	sub r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	mov r0, #2
	ldrh r1, [r4, #2]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	sub r0, r1, r0
	cmp r2, r0
	bgt _0225C15E
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C15E
_0225C11A:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0225C15E
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C15E
_0225C130:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _0225C15E
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C15E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225C164: .word 0x000005D5
	thumb_func_end ov89_0225C090

	thumb_func_start ov89_0225C168
ov89_0225C168: ; 0x0225C168
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x28
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0225C236
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C190: ; jump table
	.short _0225C198 - _0225C190 - 2 ; case 0
	.short _0225C1C2 - _0225C190 - 2 ; case 1
	.short _0225C1F2 - _0225C190 - 2 ; case 2
	.short _0225C208 - _0225C190 - 2 ; case 3
_0225C198:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _0225C23C ; =0x000005D5
	bl PlaySE
_0225C1C2:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	mov r0, #1
	lsl r0, r0, #0xc
	add r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	mov r0, #2
	ldrh r1, [r4, #2]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	add r0, r1, r0
	cmp r2, r0
	blt _0225C236
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C236
_0225C1F2:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0225C236
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C236
_0225C208:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	mov r1, #2
	lsl r1, r1, #8
	sub r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	sub r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0225C236
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C236:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225C23C: .word 0x000005D5
	thumb_func_end ov89_0225C168

	thumb_func_start ov89_0225C240
ov89_0225C240: ; 0x0225C240
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x38
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0225C30C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C268: ; jump table
	.short _0225C270 - _0225C268 - 2 ; case 0
	.short _0225C29A - _0225C268 - 2 ; case 1
	.short _0225C2C8 - _0225C268 - 2 ; case 2
	.short _0225C2DE - _0225C268 - 2 ; case 3
_0225C270:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldr r0, _0225C314 ; =0x000005D5
	bl PlaySE
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_0225C29A:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _0225C318 ; =0x00000AAA
	add r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	mov r0, #2
	ldrh r1, [r4]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	add r0, r1, r0
	cmp r2, r0
	blt _0225C30C
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C30C
_0225C2C8:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0225C30C
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C30C
_0225C2DE:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	mov r1, #2
	lsl r1, r1, #8
	sub r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	sub r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0225C30C
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C30C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225C314: .word 0x000005D5
_0225C318: .word 0x00000AAA
	thumb_func_end ov89_0225C240

	thumb_func_start ov89_0225C31C
ov89_0225C31C: ; 0x0225C31C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #8
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	add r4, #0x48
	strh r0, [r1, #6]
	ldrb r0, [r4, #0xd]
	add r5, r2, #0
	cmp r0, #0
	beq _0225C33E
	cmp r0, #1
	beq _0225C364
	b _0225C3D6
_0225C33E:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _0225C3E4 ; =0x000005D5
	bl PlaySE
_0225C364:
	mov r1, #6
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _0225C396
	ldr r2, [r0]
	sub r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	blo _0225C396
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	mov r0, #0
	str r0, [r4, #8]
_0225C396:
	ldr r0, [r4, #8]
	bl GF_SinDegFX32
	ldrh r2, [r4]
	add r1, sp, #0
	lsl r6, r0, #0xc
	strh r2, [r1, #8]
	ldrh r2, [r4, #2]
	add r3, sp, #8
	strh r2, [r1, #0xa]
	ldrh r2, [r4, #4]
	strh r2, [r1, #0xc]
	ldrh r2, [r4, #6]
	lsr r4, r0, #0x14
	strh r2, [r1, #0xe]
	asr r2, r0, #0x1f
	lsl r2, r2, #0xc
	mov r0, #2
	orr r2, r4
	mov r4, #0
	lsl r0, r0, #0xa
	add r6, r6, r0
	adc r2, r4
	lsl r0, r2, #0x14
	lsr r2, r6, #0xc
	orr r2, r0
	strh r2, [r1, #0xa]
	add r0, r3, #0
	add r1, r5, #0
	bl Camera_SetAngleTarget
	b _0225C3DC
_0225C3D6:
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225C3DC:
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225C3E4: .word 0x000005D5
	thumb_func_end ov89_0225C31C

	thumb_func_start ov89_0225C3E8
ov89_0225C3E8: ; 0x0225C3E8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r4, #0x58
	ldrb r0, [r4, #6]
	add r5, r2, #0
	cmp r0, #3
	bhi _0225C488
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C402: ; jump table
	.short _0225C40A - _0225C402 - 2 ; case 0
	.short _0225C41E - _0225C402 - 2 ; case 1
	.short _0225C440 - _0225C402 - 2 ; case 2
	.short _0225C45A - _0225C402 - 2 ; case 3
_0225C40A:
	add r0, r5, #0
	bl Camera_GetDistance
	str r0, [r4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _0225C48C ; =0x000005D5
	bl PlaySE
_0225C41E:
	ldr r0, _0225C490 ; =0x00001AAA
	add r1, r5, #0
	bl Camera_AdjustDistance
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _0225C488
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225C488
_0225C440:
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _0225C488
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225C488
_0225C45A:
	ldr r0, _0225C494 ; =0xFFFF7AAB
	add r1, r5, #0
	bl Camera_AdjustDistance
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _0225C47C
	add r0, r5, #0
	bl Camera_GetDistance
	ldr r1, [r4]
	cmp r0, r1
	bgt _0225C488
_0225C47C:
	ldr r0, [r4]
	add r1, r5, #0
	bl Camera_SetDistance
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C488:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225C48C: .word 0x000005D5
_0225C490: .word 0x00001AAA
_0225C494: .word 0xFFFF7AAB
	thumb_func_end ov89_0225C3E8

	thumb_func_start ov89_0225C498
ov89_0225C498: ; 0x0225C498
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	add r4, #0x60
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	add r5, r2, #0
	cmp r0, #0
	beq _0225C4B8
	cmp r0, #1
	beq _0225C4EE
	b _0225C55E
_0225C4B8:
	add r0, sp, #0xc
	add r1, r5, #0
	bl Camera_GetLookAtCamPos
	add r3, sp, #0xc
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, sp, #0
	bl Camera_GetLookAtCamTarget
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _0225C56C ; =0x000005D5
	bl PlaySE
_0225C4EE:
	mov r1, #2
	ldr r2, [r4, #0x18]
	lsl r1, r1, #0x10
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _0225C520
	ldr r2, [r0]
	sub r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _0225C520
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	mov r0, #0
	str r0, [r4, #0x18]
_0225C520:
	ldr r0, [r4, #0x18]
	bl GF_SinDegFX32
	asr r1, r0, #0x1f
	lsr r2, r0, #0x10
	lsl r1, r1, #0x10
	lsl r3, r0, #0x10
	mov r0, #2
	orr r1, r2
	mov r2, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	str r1, [sp, #0x18]
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetLookAtCamTarget
	add r4, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetLookAtCamPos
	add r0, sp, #0x18
	add r1, r5, #0
	bl Camera_OffsetLookAtPosAndTarget
	b _0225C564
_0225C55E:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, pc}
_0225C564:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0225C56C: .word 0x000005D5
	thumb_func_end ov89_0225C498

	thumb_func_start ov89_0225C570
ov89_0225C570: ; 0x0225C570
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	add r4, #0x80
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	add r5, r2, #0
	cmp r0, #0
	beq _0225C590
	cmp r0, #1
	beq _0225C5C6
	b _0225C636
_0225C590:
	add r0, sp, #0xc
	add r1, r5, #0
	bl Camera_GetLookAtCamPos
	add r3, sp, #0xc
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, sp, #0
	bl Camera_GetLookAtCamTarget
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _0225C644 ; =0x000005D5
	bl PlaySE
_0225C5C6:
	mov r1, #2
	ldr r2, [r4, #0x18]
	lsl r1, r1, #0x10
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _0225C5F8
	ldr r2, [r0]
	sub r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _0225C5F8
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	mov r0, #0
	str r0, [r4, #0x18]
_0225C5F8:
	ldr r0, [r4, #0x18]
	bl GF_SinDegFX32
	asr r1, r0, #0x1f
	lsr r2, r0, #0x11
	lsl r1, r1, #0xf
	lsl r3, r0, #0xf
	mov r0, #2
	orr r1, r2
	mov r2, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	str r1, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetLookAtCamTarget
	add r4, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetLookAtCamPos
	add r0, sp, #0x18
	add r1, r5, #0
	bl Camera_OffsetLookAtPosAndTarget
	b _0225C63C
_0225C636:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, pc}
_0225C63C:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0225C644: .word 0x000005D5
	thumb_func_end ov89_0225C570

	thumb_func_start ov89_0225C648
ov89_0225C648: ; 0x0225C648
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0xa0
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0225C714
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C670: ; jump table
	.short _0225C678 - _0225C670 - 2 ; case 0
	.short _0225C6A2 - _0225C670 - 2 ; case 1
	.short _0225C6D0 - _0225C670 - 2 ; case 2
	.short _0225C6E6 - _0225C670 - 2 ; case 3
_0225C678:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _0225C71C ; =0x000005D5
	bl PlaySE
_0225C6A2:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _0225C720 ; =0x00000AAA
	sub r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	mov r0, #2
	ldrh r1, [r4]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	sub r0, r1, r0
	cmp r2, r0
	bgt _0225C714
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C714
_0225C6D0:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0225C714
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C714
_0225C6E6:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _0225C714
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C714:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225C71C: .word 0x000005D5
_0225C720: .word 0x00000AAA
	thumb_func_end ov89_0225C648

	thumb_func_start ov89_0225C724
ov89_0225C724: ; 0x0225C724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x14]
	add r4, r2, #0
	str r3, [sp, #0x18]
	bl ov45_0222EC7C
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0225C80A
	ldr r0, [sp, #0x40]
	bl ov45_0222EC68
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x24]
	cmp r0, r1
	beq _0225C80A
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl ov45_0222A578
	add r7, r0, #0
	beq _0225C80A
	cmp r5, #8
	blo _0225C768
	bl GF_AssertFail
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0225C768:
	mov r0, #0x7d
	bl PlayerProfile_New
	add r6, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x7d
	bl ov45_0222A844
	add r0, r6, #0
	mov r1, #0x7d
	bl PlayerProfile_GetPlayerName_NewString
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl PlayerProfile_GetTrainerGender
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl BufferString
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0x40
	mov r1, #0x7d
	bl String_New
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl StringExpandPlaceholders
	lsl r5, r5, #4
	add r0, r4, r5
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	bl ov45_0222AB28
	cmp r0, #1
	bne _0225C7D6
	ldr r0, _0225C810 ; =0x00070800
	b _0225C7D8
_0225C7D6:
	ldr r0, _0225C814 ; =0x00010200
_0225C7D8:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, r5
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r5
	bl CopyWindowToVram
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl Heap_Free
_0225C80A:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225C810: .word 0x00070800
_0225C814: .word 0x00010200
	thumb_func_end ov89_0225C724

	thumb_func_start ov89_0225C818
ov89_0225C818: ; 0x0225C818
	push {r3, lr}
	cmp r1, #8
	blo _0225C824
	bl GF_AssertFail
	pop {r3, pc}
_0225C824:
	lsl r1, r1, #4
	add r0, r0, r1
	bl ClearWindowTilemapAndCopyToVram
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov89_0225C818

