	.include "asm/macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221E98C
	.public ov97_0221EA88
	.public ov97_0221EB38
	.public ov97_0221EBD8
	.public ov97_0221EC14
	.public ov97_0221EDE4
	.extern ov97_0221E898
	.extern ov97_0221EFD0
	.extern ov97_0221FCB8

	.text

	.text
	thumb_func_start ov97_0221E98C
ov97_0221E98C: ; 0x0221E98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r7, r1, #0
	str r0, [r7, #4]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _0221EA84
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	add r0, #0x1e
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp]
	add r0, #0x14
	add r4, r7, #0
	str r0, [sp]
_0221E9B4:
	ldr r6, [r5, #0x10]
	ldr r0, [r7]
	cmp r6, #0x12
	bne _0221EA20
	ldr r0, [r0]
	bl SaveArray_Party_Get
	ldr r1, [r5, #0x14]
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	mov r1, #0
	strh r0, [r4, #0xc]
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	str r0, [r4, #0x10]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	strh r0, [r4, #0xe]
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #0x75
	bl GetMonData
	add r0, r6, #0
	bl MonIsShiny
	strb r0, [r4, #0x1c]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	strb r0, [r4, #0x1d]
	ldr r0, [r7]
	ldr r0, [r0]
	bl SaveArray_Party_Get
	ldr r1, [r5, #0x14]
	ldr r2, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov97_0221EA88
	b _0221EA6A
_0221EA20:
	ldr r0, [r0]
	bl SaveArray_PCStorage_Get
	ldr r2, [r5, #0x14]
	add r1, r6, #0
	add r3, sp, #0xc
	bl ov97_0221E898
	ldr r0, [sp, #0xc]
	add r1, sp, #0x24
	strh r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	mov r2, #0xb
	str r0, [r4, #0x10]
	add r0, sp, #0xc
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0xe]
	ldr r0, [sp, #4]
	bl CopyU16StringArrayN
	add r0, sp, #0xc
	ldrh r0, [r0, #0x10]
	strb r0, [r4, #0x1c]
	add r0, sp, #0xc
	ldrh r0, [r0, #0x12]
	strb r0, [r4, #0x1d]
	ldr r0, [r7]
	ldr r0, [r0]
	bl SaveArray_PCStorage_Get
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	bl PCStorage_GetMonByIndexPair
	ldr r1, [sp]
	bl ov97_0221EB38
_0221EA6A:
	ldr r0, [sp, #4]
	add r5, #8
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	add r4, #0x28
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _0221E9B4
_0221EA84:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_0221E98C

	thumb_func_start ov97_0221EA88
ov97_0221EA88: ; 0x0221EA88
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #8
	add r2, r5, #0
	bl Party_GetMonAprijuiceModifiers
	add r0, r6, #0
	add r1, r5, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	add r0, sp, #0
	add r2, sp, #8
	mov r3, #0x5c
	bl CalcMonPokeathlonStars
	add r1, sp, #0
	ldrh r0, [r1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r4]
	ldrh r0, [r1]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	strb r0, [r4, #1]
	ldrh r0, [r1]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1d
	strb r0, [r4, #2]
	ldrh r0, [r1]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	strb r0, [r4, #3]
	ldrh r0, [r1]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1d
	strb r0, [r4, #4]
	ldrh r3, [r4, #6]
	mov r0, #7
	ldrb r2, [r1, #2]
	bic r3, r0
	mov r0, #7
	and r0, r2
	orr r0, r3
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	mov r0, #0x38
	bic r2, r0
	ldrb r0, [r1, #6]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EB2C ; =0xFFFFFE3F
	and r2, r0
	ldrb r0, [r1, #5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x17
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EB30 ; =0xFFFFF1FF
	and r2, r0
	ldrb r0, [r1, #3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x14
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EB34 ; =0xFFFF8FFF
	and r2, r0
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x11
	orr r0, r2
	strh r0, [r4, #6]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221EB2C: .word 0xFFFFFE3F
_0221EB30: .word 0xFFFFF1FF
_0221EB34: .word 0xFFFF8FFF
	thumb_func_end ov97_0221EA88

	thumb_func_start ov97_0221EB38
ov97_0221EB38: ; 0x0221EB38
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, sp, #0
	mov r2, #0
	mov r3, #0x5c
	bl CalcBoxmonPokeathlonStars
	add r1, sp, #0
	ldrh r0, [r1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	strb r0, [r4]
	ldrh r0, [r1]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	strb r0, [r4, #1]
	ldrh r0, [r1]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1d
	strb r0, [r4, #2]
	ldrh r0, [r1]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	strb r0, [r4, #3]
	ldrh r0, [r1]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1d
	strb r0, [r4, #4]
	ldrh r3, [r4, #6]
	mov r0, #7
	ldrb r2, [r1, #2]
	bic r3, r0
	mov r0, #7
	and r0, r2
	orr r0, r3
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	mov r0, #0x38
	bic r2, r0
	ldrb r0, [r1, #6]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EBCC ; =0xFFFFFE3F
	and r2, r0
	ldrb r0, [r1, #5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x17
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EBD0 ; =0xFFFFF1FF
	and r2, r0
	ldrb r0, [r1, #3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x14
	orr r0, r2
	strh r0, [r4, #6]
	ldrh r2, [r4, #6]
	ldr r0, _0221EBD4 ; =0xFFFF8FFF
	and r2, r0
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x11
	orr r0, r2
	strh r0, [r4, #6]
	add sp, #8
	pop {r4, pc}
	nop
_0221EBCC: .word 0xFFFFFE3F
_0221EBD0: .word 0xFFFFF1FF
_0221EBD4: .word 0xFFFF8FFF
	thumb_func_end ov97_0221EB38

	thumb_func_start ov97_0221EBD8
ov97_0221EBD8: ; 0x0221EBD8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r1, sp, #0
	bl CalcBoxMonPokeathlonPerformance
	add r0, sp, #0
	ldrh r1, [r0]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1d
	strb r1, [r4]
	ldrh r1, [r0, #0x10]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1d
	strb r1, [r4, #1]
	ldrh r1, [r0, #0xc]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1d
	strb r1, [r4, #2]
	ldrh r1, [r0, #4]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1d
	strb r1, [r4, #3]
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	strb r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov97_0221EBD8

	thumb_func_start ov97_0221EC14
ov97_0221EC14: ; 0x0221EC14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc0
	ldr r3, _0221EDE0 ; =ov97_0221FCB8
	add r5, r2, #0
	add r6, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x5c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0221EC3A
	cmp r4, r0
	bne _0221EC3C
_0221EC3A:
	b _0221EDCE
_0221EC3C:
	mov r1, #2
	add r0, sp, #0x70
	strb r1, [r0, #9]
	cmp r6, #0x12
	ldr r0, [r5, #0x2c]
	bne _0221ED1C
	bl SaveArray_Party_Get
	add r1, r4, #0
	add r7, r0, #0
	bl Party_GetMonByIndex
	mov r1, #0
	add r6, r0, #0
	add r2, r1, #0
	bl GetMonData
	str r0, [sp, #0x70]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x70
	strh r0, [r1, #4]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x70
	strb r0, [r1, #7]
	add r2, sp, #0x78
	add r0, r6, #0
	mov r1, #0x75
	add r2, #2
	bl GetMonData
	add r0, r6, #0
	bl MonIsShiny
	add r1, sp, #0x70
	strb r0, [r1, #6]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x70
	strb r0, [r1, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, sp, #0x24
	bl ov97_0221EA88
	add r0, r6, #0
	add r1, sp, #0x1c
	bl ov97_0221EBD8
	add r1, sp, #0x14
	add r0, r7, #0
	add r1, #2
	add r2, r4, #0
	bl Party_GetMonAprijuiceModifiers
	add r2, sp, #0x14
	add r0, sp, #0x1c
	add r1, sp, #0x24
	add r2, #2
	add r3, sp, #0x70
	bl ov97_0221EDE4
	mov r4, #0
	add r6, sp, #0x70
	add r7, sp, #0x5c
_0221ECE2:
	ldr r0, [r5, #0x2c]
	bl Save_Pokeathlon_Get
	lsl r1, r4, #2
	ldrh r2, [r6, #4]
	ldr r1, [r7, r1]
	bl PokeathlonSave_GetUnkDC_AtIndex
	cmp r0, #0
	beq _0221ECFE
	add r1, r6, r4
	add r1, #0x20
	mov r0, #1
	b _0221ED04
_0221ECFE:
	add r1, r6, r4
	add r1, #0x20
	mov r0, #0
_0221ED04:
	strb r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0221ECE2
	ldr r0, [r5, #0xc]
	add r1, sp, #0x70
	bl ov97_0221EFD0
	add sp, #0xc0
	pop {r3, r4, r5, r6, r7, pc}
_0221ED1C:
	bl SaveArray_PCStorage_Get
	add r1, r6, #0
	add r2, r4, #0
	add r3, sp, #0x2c
	bl ov97_0221E898
	ldr r0, [sp, #0x30]
	add r1, sp, #0x70
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x2c]
	mov r2, #0xb
	strh r0, [r1, #4]
	add r0, sp, #0
	ldrh r0, [r0, #0x36]
	strb r0, [r1, #7]
	add r0, sp, #0x78
	add r0, #2
	add r1, sp, #0x44
	bl CopyU16StringArrayN
	add r1, sp, #0
	ldrh r2, [r1, #0x3c]
	add r0, sp, #0x70
	strb r2, [r0, #6]
	ldrh r1, [r1, #0x3e]
	strb r1, [r0, #8]
	ldr r0, [r5, #0x2c]
	bl SaveArray_PCStorage_Get
	add r1, r6, #0
	add r2, r4, #0
	bl PCStorage_GetMonByIndexPair
	add r1, sp, #0xc
	add r1, #2
	add r4, r0, #0
	bl ov97_0221EB38
	add r1, sp, #4
	add r0, r4, #0
	add r1, #2
	bl ov97_0221EBD8
	add r0, sp, #0
	mov r1, #0
	mov r2, #5
	bl MI_CpuFill8
	add r0, sp, #4
	add r1, sp, #0xc
	add r0, #2
	add r1, #2
	add r2, sp, #0
	add r3, sp, #0x70
	bl ov97_0221EDE4
	mov r4, #0
	add r6, sp, #0x70
	add r7, sp, #0x5c
_0221ED94:
	ldr r0, [r5, #0x2c]
	bl Save_Pokeathlon_Get
	lsl r1, r4, #2
	ldrh r2, [r6, #4]
	ldr r1, [r7, r1]
	bl PokeathlonSave_GetUnkDC_AtIndex
	cmp r0, #0
	beq _0221EDB0
	add r1, r6, r4
	add r1, #0x20
	mov r0, #1
	b _0221EDB6
_0221EDB0:
	add r1, r6, r4
	add r1, #0x20
	mov r0, #0
_0221EDB6:
	strb r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0221ED94
	ldr r0, [r5, #0xc]
	add r1, sp, #0x70
	bl ov97_0221EFD0
	add sp, #0xc0
	pop {r3, r4, r5, r6, r7, pc}
_0221EDCE:
	mov r0, #0
	add r1, sp, #0x70
	strb r0, [r1, #9]
	ldr r0, [r5, #0xc]
	bl ov97_0221EFD0
	add sp, #0xc0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221EDE0: .word ov97_0221FCB8
	thumb_func_end ov97_0221EC14

	thumb_func_start ov97_0221EDE4
ov97_0221EDE4: ; 0x0221EDE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r0, #0
	ldrsb r0, [r7, r0]
	add r6, r1, #0
	add r4, r3, #0
	str r0, [sp]
	ldrh r3, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r5]
	lsl r3, r3, #0x1d
	ldrb r2, [r6]
	add r0, #0x29
	lsr r3, r3, #0x1d
	bl sub_0208B85C
	add r1, r4, #0
	add r1, #0x28
	strb r0, [r1]
	mov r0, #1
	ldrsb r0, [r7, r0]
	str r0, [sp]
	ldrh r3, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r5, #3]
	lsl r3, r3, #0x14
	ldrb r2, [r6, #3]
	add r0, #0x31
	lsr r3, r3, #0x1d
	bl sub_0208B85C
	add r1, r4, #0
	add r1, #0x30
	strb r0, [r1]
	mov r0, #2
	ldrsb r0, [r7, r0]
	str r0, [sp]
	ldrh r3, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r5, #4]
	lsl r3, r3, #0x11
	ldrb r2, [r6, #4]
	add r0, #0x39
	lsr r3, r3, #0x1d
	bl sub_0208B85C
	add r1, r4, #0
	add r1, #0x38
	strb r0, [r1]
	mov r0, #3
	ldrsb r0, [r7, r0]
	str r0, [sp]
	ldrh r3, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r5, #2]
	lsl r3, r3, #0x17
	ldrb r2, [r6, #2]
	add r0, #0x41
	lsr r3, r3, #0x1d
	bl sub_0208B85C
	add r1, r4, #0
	add r1, #0x40
	strb r0, [r1]
	mov r0, #4
	ldrsb r0, [r7, r0]
	str r0, [sp]
	ldrh r3, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	lsl r3, r3, #0x1a
	ldrb r2, [r6, #1]
	add r0, #0x49
	lsr r3, r3, #0x1d
	bl sub_0208B85C
	add r4, #0x48
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0221EDE4

