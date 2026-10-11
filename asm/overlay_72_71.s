	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A760
	.public ov72_0223A7F4
	.public ov72_0223A8A0
	.public ov72_0223B464
	.public ov72_0223B466
	.public ov72_0223B468
	.public ov72_0223B46A
	.public ov72_0223B48C

	.text

	thumb_func_start ov72_0223A760
ov72_0223A760: ; 0x0223A760
	push {r3, r4}
	ldr r3, _0223A7E0 ; =ov72_0223B48C
	lsl r4, r0, #2
	add r3, r3, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xd
	bne _0223A776
	ldrh r1, [r2]
	ldr r0, _0223A7E4 ; =ov72_0223B464
	ldrb r1, [r0, r1]
	b _0223A7D8
_0223A776:
	cmp r1, #0xe
	bne _0223A782
	ldrh r1, [r2]
	ldr r0, _0223A7E8 ; =ov72_0223B466
	ldrb r1, [r0, r1]
	b _0223A7D8
_0223A782:
	cmp r1, #0xf
	bne _0223A78E
	ldrh r1, [r2, #2]
	ldr r0, _0223A7EC ; =ov72_0223B468
	ldrb r1, [r0, r1]
	b _0223A7D8
_0223A78E:
	cmp r1, #0x10
	bne _0223A79A
	ldrh r1, [r2, #2]
	ldr r0, _0223A7F0 ; =ov72_0223B46A
	ldrb r1, [r0, r1]
	b _0223A7D8
_0223A79A:
	cmp r1, #0xa
	bne _0223A7BA
	cmp r0, #5
	beq _0223A7A6
	cmp r0, #0
	bne _0223A7AC
_0223A7A6:
	mov r0, #0
	strh r0, [r2]
	b _0223A7D8
_0223A7AC:
	cmp r0, #1
	beq _0223A7B4
	cmp r0, #6
	bne _0223A7D8
_0223A7B4:
	mov r0, #1
	strh r0, [r2]
	b _0223A7D8
_0223A7BA:
	cmp r1, #0xc
	bne _0223A7D8
	cmp r0, #3
	beq _0223A7C6
	cmp r0, #8
	bne _0223A7CC
_0223A7C6:
	mov r0, #0
	strh r0, [r2, #2]
	b _0223A7D8
_0223A7CC:
	cmp r0, #4
	beq _0223A7D4
	cmp r0, #9
	bne _0223A7D8
_0223A7D4:
	mov r0, #1
	strh r0, [r2, #2]
_0223A7D8:
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	nop
_0223A7E0: .word ov72_0223B48C
_0223A7E4: .word ov72_0223B464
_0223A7E8: .word ov72_0223B466
_0223A7EC: .word ov72_0223B468
_0223A7F0: .word ov72_0223B46A
	thumb_func_end ov72_0223A760

	thumb_func_start ov72_0223A7F4
ov72_0223A7F4: ; 0x0223A7F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0x64
	mov r4, #3
	mov r1, #0
	add r2, sp, #0x18
	mov r3, #8
_0223A806:
	add r5, r7, r1
	ldrsb r5, [r5, r3]
	add r1, r1, #1
	cmp r1, #3
	stmia r2!, {r5}
	blt _0223A806
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _0223A824
	mov r1, #4
	ldrsh r1, [r7, r1]
	lsl r2, r1, #2
	add r1, sp, #0x18
	str r6, [r1, r2]
_0223A824:
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r5, r1, #0
	add r6, sp, #0x18
_0223A82E:
	add r2, r7, r5
	mov r1, #8
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne _0223A83E
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0223A844
_0223A83E:
	ldr r2, [r6]
	cmp r2, #0
	bge _0223A84E
_0223A844:
	mov r1, #0xa
	bl _s32_div_f
	sub r4, r4, #1
	b _0223A860
_0223A84E:
	mov r1, #1
	ldr r3, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #4]
	add r3, r3, #1
	str r3, [sp, #4]
	lsl r1, r1, #2
	add r3, sp, #0xc
	str r2, [r3, r1]
_0223A860:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #3
	blt _0223A82E
	mov r6, #0
	str r6, [sp]
	cmp r4, #0
	ble _0223A88A
	add r5, sp, #0xc
_0223A872:
	ldr r1, [r5]
	mul r1, r0
	add r6, r6, r1
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, [sp]
	add r5, r5, #4
	add r1, r1, #1
	str r1, [sp]
	cmp r1, r4
	blt _0223A872
_0223A88A:
	ldrb r0, [r7, #1]
	cmp r6, r0
	ble _0223A898
	mov r0, #0
	add sp, #0x24
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0223A898:
	add r0, r6, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov72_0223A7F4

	thumb_func_start ov72_0223A8A0
ov72_0223A8A0: ; 0x0223A8A0
	ldrb r1, [r0, #1]
	cmp r1, #0x64
	beq _0223A8BA
	mov r1, #9
	ldrsb r1, [r0, r1]
	cmp r1, #0
	blt _0223A8D6
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	cmp r0, #0
	blt _0223A8D6
	mov r0, #1
	bx lr
_0223A8BA:
	mov r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	blt _0223A8D6
	mov r1, #9
	ldrsb r1, [r0, r1]
	cmp r1, #0
	blt _0223A8D6
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	cmp r0, #0
	blt _0223A8D6
	mov r0, #1
	bx lr
_0223A8D6:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov72_0223A8A0

