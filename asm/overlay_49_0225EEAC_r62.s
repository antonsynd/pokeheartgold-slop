	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_02261930
	.extern ov49_0225EF40
	.extern ov49_0225EF68
	.extern ov49_0225EF84
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF98
	.extern ov49_0225F374
	.extern ov49_0225F394
	.extern ov49_0225F430
	.extern ov49_0225F438
	.extern ov49_02269B78

    .text

	.text
	thumb_func_start ov49_02261930
ov49_02261930: ; 0x02261930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov49_02259FE8
	str r0, [sp]
	add r0, r6, #0
	bl ov49_02259FF0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov49_02259FF8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #4
	bhi _022619CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261970: ; jump table
	.short _0226197A - _02261970 - 2 ; case 0
	.short _022619C4 - _02261970 - 2 ; case 1
	.short _02261A2A - _02261970 - 2 ; case 2
	.short _02261AD8 - _02261970 - 2 ; case 3
	.short _02261B48 - _02261970 - 2 ; case 4
_0226197A:
	add r0, r5, #0
	mov r1, #0x20
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02258D70
	str r0, [r4]
	ldr r0, [sp]
	add r1, r7, #0
	bl ov45_0222ADA8
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #4]
	cmp r0, r1
	bne _022619A4
	bl GF_AssertFail
_022619A4:
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r1, r4, #4
	add r2, #8
	bl ov45_0222AE08
	ldr r0, [sp, #8]
	ldr r1, [r4]
	mov r2, #3
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02261B64
_022619C4:
	ldr r0, [r4]
	bl ov49_02258F38
	cmp r0, #0
	bne _022619D0
_022619CE:
	b _02261B64
_022619D0:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x34
	bl ov49_0225E420
	mov r0, #1
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4]
	add r1, sp, #0x34
	bl ov49_02259154
	ldr r0, [sp, #0x38]
	mov r3, sp
	str r0, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, sp, #0xc
	ldrh r2, [r1]
	ldr r0, [r4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_02258DB4
	ldr r0, _02261B6C ; =0x0000064E
	bl PlaySE
	ldr r0, [r4]
	mov r1, #1
	bl ov49_02259184
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02261B64
_02261A2A:
	ldr r0, [r4, #0x14]
	mov r6, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x18
	blt _02261A3C
	mov r0, #0x18
	str r0, [r4, #0x14]
	mov r6, #1
_02261A3C:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x28
	bl ov49_0225E420
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	sub r7, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _02261A6E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02261A7C
_02261A6E:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02261A7C:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x20]
	ldr r1, [r4, #0xc]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4]
	add r1, sp, #0x1c
	bl ov49_02259148
	cmp r6, #1
	bne _02261B64
	ldr r0, [r4]
	mov r1, #0
	bl ov49_02259184
	ldr r0, [r4]
	mov r1, #8
	bl ov49_022591B4
	ldr r0, [r4]
	mov r1, #2
	bl ov49_02259160
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02261B64
_02261AD8:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225A520
	cmp r0, #1
	bne _02261AFA
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F438
	cmp r0, #0
	bne _02261B0E
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F374
	b _02261B0E
_02261AFA:
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F438
	cmp r0, #1
	bne _02261B0E
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F430
_02261B0E:
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F394
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x10
	bl ov49_0225E420
	ldr r0, [sp, #0x14]
	add r1, sp, #0x10
	add r0, r0, r6
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl ov49_02259148
	ldr r0, [sp]
	ldr r1, [r4, #4]
	bl ov45_0222AD80
	cmp r0, #2
	bne _02261B64
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225EF8C
	b _02261B64
_02261B48:
	ldr r0, [r4]
	bl ov49_02258D54
	add r0, r5, #0
	bl ov49_0225EF68
	add r0, r6, #0
	bl ov49_0225A010
	ldr r2, _02261B70 ; =ov49_02269B78
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_02261B64:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261B6C: .word 0x0000064E
_02261B70: .word ov49_02269B78
	thumb_func_end ov49_02261930

