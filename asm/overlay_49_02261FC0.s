	.include "asm/macros.inc"
	.include "overlay_49_02261FC0.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02261FC0
ov49_02261FC0: ; 0x02261FC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	str r1, [sp, #4]
	add r6, r3, #0
	str r0, [sp, #0x20]
	ldr r4, _02262024 ; =0x00000000
	beq _0226201C
_02261FD4:
	mov r0, #0
	str r0, [sp]
	add r2, sp, #8
	ldr r1, [r5]
	add r0, r7, #0
	add r2, #2
	add r3, sp, #8
	bl ov49_022589D8
	cmp r0, #1
	bne _02262014
	add r1, sp, #8
	add r2, sp, #8
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [sp, #4]
	bl ov49_02258F7C
	cmp r0, #0
	bne _02262014
	add r1, sp, #8
	ldrh r0, [r1, #2]
	lsl r2, r0, #4
	ldr r0, [sp, #0x20]
	strh r2, [r0]
	ldrh r0, [r1]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add sp, #0xc
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02262014:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02261FD4
_0226201C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02262024: .word 0x00000000
	thumb_func_end ov49_02261FC0

	thumb_func_start ov49_02262028
ov49_02262028: ; 0x02262028
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x10]
	add r5, r1, #0
	str r2, [sp, #0x14]
	bl ov49_0225EF3C
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	bl ov49_0225EF88
	cmp r0, #0x1b
	bhi _02262140
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226205E: ; jump table
	.short _02262140 - _0226205E - 2 ; case 0
	.short _02262140 - _0226205E - 2 ; case 1
	.short _02262140 - _0226205E - 2 ; case 2
	.short _02262140 - _0226205E - 2 ; case 3
	.short _02262140 - _0226205E - 2 ; case 4
	.short _02262140 - _0226205E - 2 ; case 5
	.short _02262140 - _0226205E - 2 ; case 6
	.short _02262114 - _0226205E - 2 ; case 7
	.short _022620DE - _0226205E - 2 ; case 8
	.short _02262096 - _0226205E - 2 ; case 9
	.short _02262096 - _0226205E - 2 ; case 10
	.short _02262096 - _0226205E - 2 ; case 11
	.short _02262096 - _0226205E - 2 ; case 12
	.short _02262096 - _0226205E - 2 ; case 13
	.short _02262096 - _0226205E - 2 ; case 14
	.short _02262140 - _0226205E - 2 ; case 15
	.short _02262140 - _0226205E - 2 ; case 16
	.short _02262114 - _0226205E - 2 ; case 17
	.short _02262114 - _0226205E - 2 ; case 18
	.short _02262114 - _0226205E - 2 ; case 19
	.short _02262114 - _0226205E - 2 ; case 20
	.short _02262114 - _0226205E - 2 ; case 21
	.short _02262114 - _0226205E - 2 ; case 22
	.short _02262140 - _0226205E - 2 ; case 23
	.short _02262140 - _0226205E - 2 ; case 24
	.short _02262140 - _0226205E - 2 ; case 25
	.short _02262096 - _0226205E - 2 ; case 26
	.short _02262096 - _0226205E - 2 ; case 27
_02262096:
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	ldrh r1, [r4, #8]
	cmp r1, r0
	bls _022620B0
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262140
_022620B0:
	bl sub_02037454
	ldrh r1, [r4, #8]
	cmp r1, r0
	ble _022620C8
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262140
_022620C8:
	bl sub_0203988C
	cmp r0, #0
	bne _022620DE
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262140
_022620DE:
	bl ov45_0222F464
	cmp r0, #1
	bne _022620FE
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	cmp r0, #1
	bhi _022620FE
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262140
_022620FE:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02262114
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262140
_02262114:
	bl sub_020390C4
	cmp r0, #5
	bhi _02262140
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02262128: ; jump table
	.short _02262140 - _02262128 - 2 ; case 0
	.short _02262140 - _02262128 - 2 ; case 1
	.short _02262134 - _02262128 - 2 ; case 2
	.short _02262134 - _02262128 - 2 ; case 3
	.short _02262134 - _02262128 - 2 ; case 4
	.short _02262134 - _02262128 - 2 ; case 5
_02262134:
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
_02262140:
	ldr r0, [sp, #0x10]
	bl ov49_0225EF88
	cmp r0, #0x1c
	bls _0226214E
	bl _02262AB8
_0226214E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226215A: ; jump table
	.short _02262194 - _0226215A - 2 ; case 0
	.short _022621A6 - _0226215A - 2 ; case 1
	.short _022621EA - _0226215A - 2 ; case 2
	.short _02262208 - _0226215A - 2 ; case 3
	.short _0226222E - _0226215A - 2 ; case 4
	.short _02262292 - _0226215A - 2 ; case 5
	.short _022622B2 - _0226215A - 2 ; case 6
	.short _0226239C - _0226215A - 2 ; case 7
	.short _02262556 - _0226215A - 2 ; case 8
	.short _022625DC - _0226215A - 2 ; case 9
	.short _02262630 - _0226215A - 2 ; case 10
	.short _0226265C - _0226215A - 2 ; case 11
	.short _022626D4 - _0226215A - 2 ; case 12
	.short _02262702 - _0226215A - 2 ; case 13
	.short _0226273C - _0226215A - 2 ; case 14
	.short _02262806 - _0226215A - 2 ; case 15
	.short _02262856 - _0226215A - 2 ; case 16
	.short _0226287C - _0226215A - 2 ; case 17
	.short _022628A4 - _0226215A - 2 ; case 18
	.short _022628B4 - _0226215A - 2 ; case 19
	.short _0226290C - _0226215A - 2 ; case 20
	.short _0226296C - _0226215A - 2 ; case 21
	.short _022629BE - _0226215A - 2 ; case 22
	.short _02262A08 - _0226215A - 2 ; case 23
	.short _02262A1A - _0226215A - 2 ; case 24
	.short _02262A2C - _0226215A - 2 ; case 25
	.short _02262A40 - _0226215A - 2 ; case 26
	.short _02262A64 - _0226215A - 2 ; case 27
	.short _02262A8E - _0226215A - 2 ; case 28
_02262194:
	ldr r0, [sp, #0x10]
	mov r1, #0x44
	bl ov49_0225EF40
	ldr r0, [sp, #0x10]
	bl ov49_0225EF90
	bl _02262AB8
_022621A6:
	ldr r0, [sp, #0x30]
	bl ov45_0222A414
	cmp r0, #0
	beq _022621C0
	mov r0, #7
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	bl _02262AB8
_022621C0:
	ldr r0, [sp, #0x30]
	bl ov45_0222A394
	cmp r0, #0
	beq _022621DA
	mov r0, #2
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	bl _02262AB8
_022621DA:
	ldr r0, _022624F4 ; =0x000005DD
	bl PlaySE
	ldr r0, [sp, #0x10]
	bl ov49_0225EF90
	bl _02262AB8
_022621EA:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r0, #3
	str r0, [sp]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0
	bl ov49_02262BF8
	bl _02262AB8
_02262208:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #1
	bl ov49_02262C38
	add r4, #0x18
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0225A174
	ldr r0, [sp, #0x10]
	mov r1, #4
	bl ov49_0225EF8C
	bl _02262AB8
_0226222E:
	add r0, r5, #0
	mov r7, #0
	bl ov49_0225A1D4
	cmp r0, #2
	bhi _02262248
	cmp r0, #0
	beq _0226226A
	cmp r0, #1
	beq _0226225E
	cmp r0, #2
	beq _0226224E
	b _02262274
_02262248:
	sub r1, r7, #2
	cmp r0, r1
	bne _02262274
_0226224E:
	mov r0, #5
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	mov r7, #1
	b _02262274
_0226225E:
	ldr r0, [sp, #0x10]
	mov r1, #5
	bl ov49_0225EF8C
	mov r7, #1
	b _02262274
_0226226A:
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov49_0225EF8C
	mov r7, #1
_02262274:
	cmp r7, #1
	beq _0226227C
	bl _02262AB8
_0226227C:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262CA8
	bl _02262AB8
_02262292:
	ldrb r1, [r6, #2]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r6, #2]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r2, r5, #0
	add r3, #0x22
	bl ov49_02262BF8
	bl _02262AB8
_022622B2:
	ldr r0, [sp, #0x30]
	bl ov45_0222A394
	cmp r0, #0
	beq _022622CA
	mov r0, #2
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	b _02262AB8
_022622CA:
	ldrb r0, [r6, #1]
	bl ov45_0222F274
	cmp r0, #1
	bne _0226230E
	ldrb r0, [r6, #1]
	bl ov45_0222F2D4
	cmp r0, #0
	beq _022622E8
	ldrb r0, [r6, #1]
	bl ov45_0222F294
	cmp r0, #0
	bne _022622F6
_022622E8:
	mov r0, #1
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	b _02262AB8
_022622F6:
	ldrb r0, [r6, #1]
	bl ov45_0222F3E8
	cmp r0, #0
	bne _0226230E
	mov r0, #7
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	b _02262AB8
_0226230E:
	ldrb r0, [r6, #1]
	bl ov45_0222F3E8
	strh r0, [r4]
	mov r0, #0xe1
	lsl r0, r0, #2
	str r0, [r4, #0x10]
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022624F8 ; =0x0000014A
	cmp r2, r0
	ble _02262330
	add r0, r5, #0
	mov r2, #0xa
	bl ov49_0225A30C
	b _0226233C
_02262330:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov49_0225A30C
_0226233C:
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	ldrb r0, [r6, #1]
	bl sub_0203981C
	bl ov45_0222F464
	cmp r0, #1
	bne _02262372
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	mov r2, #1
	bl ov45_0222AC14
	mov r0, #1
	strb r0, [r4, #7]
_02262372:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	ldrb r2, [r6, #2]
	add r0, r4, #0
	add r0, #0x3c
	bl ov49_02262D70
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262E04
	ldr r0, [sp, #0x10]
	mov r1, #7
	bl ov49_0225EF8C
	b _02262AB8
_0226239C:
	bl sub_0203988C
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	add r7, r0, #0
	ldrb r0, [r6, #1]
	bl ov45_0222F3E8
	strh r0, [r4]
	mov r1, #0
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x3c
	bl ov49_02262DD4
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _022624F8 ; =0x0000014A
	cmp r1, r0
	bgt _022623F0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022623F0
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
_022623F0:
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02262410
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_02262410:
	cmp r0, #2
	bne _02262462
	mov r0, #8
	strb r0, [r6]
	cmp r7, #4
	bne _02262420
	mov r6, #0x10
	b _02262422
_02262420:
	mov r6, #0x12
_02262422:
	add r0, r5, #0
	bl ov49_0225A0CC
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	ldr r0, [sp, #0x10]
	mov r1, #9
	bl ov49_0225EF8C
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	strh r7, [r4, #8]
	bl ov49_02262DD4
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	b _02262AB8
_02262462:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022624A8
	ldr r0, _022624FC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022624A8
	ldr r0, _02262500 ; =0x000005DC
	bl PlaySE
	bl ov45_0222F464
	cmp r0, #0
	bne _02262494
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov49_0225A0CC
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_02262494:
	mov r0, #6
	strb r0, [r6]
	add r0, r5, #0
	bl ov49_0225A0CC
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	bl ov49_0225EF8C
	b _02262AB8
_022624A8:
	bl ov45_0222F464
	cmp r0, #1
	bne _02262504
	ldrb r0, [r4, #7]
	cmp r0, r7
	beq _022624D2
	strb r7, [r4, #7]
	cmp r7, #4
	beq _022624D2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	add r2, r7, #0
	bl ov45_0222AC14
_022624D2:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02262504
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	cmp r0, #1
	bhi _02262504
	mov r0, #3
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
	nop
_022624F4: .word 0x000005DD
_022624F8: .word 0x0000014A
_022624FC: .word gSystem
_02262500: .word 0x000005DC
_02262504:
	ldrb r0, [r6, #1]
	bl ov45_0222F274
	cmp r0, #1
	bne _02262526
	ldrb r0, [r6, #1]
	bl ov45_0222F294
	cmp r0, #0
	bne _02262526
	mov r0, #0
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_02262526:
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022625CC
	ldr r0, [sp, #0x10]
	mov r1, #8
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	b _02262AB8
_02262556:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	bl sub_0203988C
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	add r7, r0, #0
	bl sub_020390C4
	cmp r0, #3
	beq _02262586
	cmp r0, #4
	bne _02262592
_02262586:
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
_02262592:
	cmp r5, #0
	bne _022625A4
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_022625A4:
	cmp r5, #2
	bne _022625B8
	mov r0, #8
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #9
	bl ov49_0225EF8C
	strh r7, [r4, #8]
	b _02262AB8
_022625B8:
	ldrb r0, [r6, #1]
	bl ov45_0222F274
	cmp r0, #1
	bne _022625CC
	ldrb r0, [r6, #1]
	bl ov45_0222F294
	cmp r0, #0
	beq _022625CE
_022625CC:
	b _02262AB8
_022625CE:
	mov r0, #0
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_022625DC:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	add r0, r5, #0
	bl ov49_02259FE8
	ldrb r1, [r6, #3]
	bl ov45_0222A5E8
	bl sub_02039B38
	add r0, r5, #0
	bl ov49_02259FE8
	bl ov45_0222A2C8
	mov r1, #0
	bl sub_02034354
	ldr r0, [sp, #0x30]
	bl ov45_0222AB1C
	bl sub_02034B00
	mov r0, #0
	bl sub_020378E4
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #0x11
	bl ov49_02262C20
	b _02262AB8
_02262630:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	bl sub_02034434
	bl sub_0203769C
	bl sub_0203476C
	ldr r0, [sp, #0x10]
	mov r1, #0xb
	bl ov49_0225EF8C
	b _02262AB8
_0226265C:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	bl sub_02034780
	cmp r0, #0xff
	beq _02262686
_0226267A:
	bl sub_0203476C
	bl sub_02034780
	cmp r0, #0xff
	bne _0226267A
_02262686:
	bl sub_020347A0
	add r5, r0, #0
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	cmp r5, r0
	blo _022626BE
	bl ov45_0222F464
	cmp r0, #1
	bne _022626AC
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _022626AC
	bl ov45_0222F1BC
	mov r0, #1
	strh r0, [r4, #2]
_022626AC:
	bl ov45_0222F218
	cmp r0, #1
	bne _02262730
	ldr r0, [sp, #0x10]
	mov r1, #0xc
	bl ov49_0225EF8C
	b _02262AB8
_022626BE:
	bl ov45_0222F218
	cmp r0, #1
	bne _02262730
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_022626D4:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	bl sub_02037BEC
	ldr r0, [sp, #0x30]
	bl ov45_0222A43C
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0xd
	mov r3, #0xe
	bl ov49_02262C20
	b _02262AB8
_02262702:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	ldr r0, [sp, #0x30]
	bl ov45_0222A548
	str r0, [r4, #0xc]
	bl sub_0203769C
	add r4, #0xc
	add r1, r4, #0
	bl sub_02037C0C
	cmp r0, #1
	beq _02262732
_02262730:
	b _02262AB8
_02262732:
	ldr r0, [sp, #0x10]
	mov r1, #0xe
	bl ov49_0225EF8C
	b _02262AB8
_0226273C:
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262DF8
	mov r0, #0
	str r0, [sp, #0x18]
	bl sub_020347A0
	str r0, [sp, #0x28]
	bl sub_0203769C
	mov r7, #0
	str r0, [sp, #0x24]
	str r7, [sp, #0x20]
	bl ov45_0222F430
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r4, r7, #0
	cmp r0, #0
	ble _022627DC
_02262774:
	ldr r0, [sp, #0x24]
	cmp r0, r4
	beq _022627BE
	add r0, r4, #0
	bl sub_02037C44
	add r5, r0, #0
	beq _022627D4
	ldr r0, [r5]
	bl ov45_0222EC68
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022627A4
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022627DC
_022627A4:
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	add r2, r4, #0
	bl ov45_0222A450
	ldr r1, [r5]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bne _022627BA
	mov r0, #1
	str r0, [sp, #0x20]
_022627BA:
	add r7, r7, #1
	b _022627D4
_022627BE:
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	bl ov45_0222A480
	bl ov45_0222F464
	cmp r0, #1
	bne _022627D2
	mov r0, #1
	str r0, [sp, #0x20]
_022627D2:
	add r7, r7, #1
_022627D4:
	ldr r0, [sp, #0x28]
	add r4, r4, #1
	cmp r4, r0
	blt _02262774
_022627DC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022628C6
	ldr r0, [sp, #0x28]
	cmp r7, r0
	bne _022628C6
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _022627F8
	ldr r0, [sp, #0x10]
	mov r1, #0xf
	bl ov49_0225EF8C
	b _02262AB8
_022627F8:
	mov r0, #4
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	b _02262AB8
_02262806:
	mov r0, #0
	mov r1, #1
	bl sub_020398D4
	bl ov45_0222F464
	cmp r0, #1
	bne _02262842
	ldr r0, [sp, #0x30]
	add r1, sp, #0x34
	bl ov45_0222A498
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	add r3, sp, #0x34
	add r2, r0, #0
	ldrb r0, [r3, #1]
	str r0, [sp]
	ldrb r0, [r3, #2]
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldrb r3, [r3]
	ldr r0, [sp, #0x30]
	bl ov45_0222AC14
_02262842:
	add r0, r5, #0
	bl ov49_0225A0CC
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0x12
	bl ov49_02262C20
	b _02262AB8
_02262856:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1a
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	ldr r0, [sp, #0x10]
	mov r1, #0x11
	bl ov49_0225EF8C
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262DB8
	b _02262AB8
_0226287C:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_02262CB4
	cmp r0, #0
	bne _022628C6
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _022628C6
	ldr r0, [sp, #0x10]
	mov r1, #0x12
	bl ov49_0225EF8C
	b _02262AB8
_022628A4:
	add r0, r5, #0
	bl ov49_0225A294
	ldr r0, [sp, #0x10]
	mov r1, #0x13
	bl ov49_0225EF8C
	b _02262AB8
_022628B4:
	add r0, r5, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _022628C8
	cmp r0, #1
	beq _022628DE
	cmp r0, #2
	beq _022628EE
_022628C6:
	b _02262AB8
_022628C8:
	add r0, r5, #0
	bl ov49_0225A2F8
	ldr r0, [sp, #0x10]
	mov r1, #0x17
	bl ov49_0225EF8C
	ldr r0, [sp, #0x30]
	bl ov45_0222A404
	b _02262AB8
_022628DE:
	add r0, r5, #0
	bl ov49_0225A2F8
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	bl ov49_0225EF8C
	b _02262AB8
_022628EE:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_02262CB4
	cmp r0, #1
	beq _02262904
	b _02262AB8
_02262904:
	add r0, r5, #0
	bl ov49_0225A2F8
	b _02262AB8
_0226290C:
	ldrb r0, [r6, #1]
	bl ov45_0222F3E8
	strh r0, [r4]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, r5, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	bl ov49_02262D70
	add r0, r4, #0
	add r0, #0x3c
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262E04
	mov r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _02262AC0 ; =0x0000014A
	cmp r2, r0
	ble _02262948
	add r0, r5, #0
	mov r2, #0xa
	bl ov49_0225A30C
	b _02262954
_02262948:
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xb
	bl ov49_0225A30C
_02262954:
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	ldr r0, [sp, #0x10]
	mov r1, #7
	bl ov49_0225EF8C
	b _02262AB8
_0226296C:
	ldrb r0, [r6, #1]
	bl ov45_0222F314
	mov r1, #8
	strb r1, [r6]
	cmp r0, #4
	bne _0226297E
	mov r2, #0x10
	b _02262980
_0226297E:
	mov r2, #0x12
_02262980:
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	ldr r0, [sp, #0x10]
	mov r1, #9
	bl ov49_0225EF8C
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov49_02262D70
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262E04
	b _02262AB8
_022629BE:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldrb r2, [r6, #2]
	add r0, #0x3c
	add r1, r5, #0
	mov r3, #1
	bl ov49_02262D70
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl ov49_02262DD4
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262DF8
	ldr r0, [sp, #0x10]
	mov r1, #8
	bl ov49_0225EF8C
	b _02262AB8
_02262A08:
	bl sub_020343E4
	bl sub_0203986C
	ldr r0, [sp, #0x10]
	mov r1, #0x18
	bl ov49_0225EF8C
	b _02262AB8
_02262A1A:
	bl sub_0203988C
	cmp r0, #0
	bne _02262AB8
	ldr r0, [sp, #0x10]
	mov r1, #0x1c
	bl ov49_0225EF8C
	b _02262AB8
_02262A2C:
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _02262AB8
	ldrb r1, [r4, #4]
	ldr r0, [sp, #0x10]
	bl ov49_0225EF8C
	b _02262AB8
_02262A40:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02262A4C
	sub r0, r0, #1
	strb r0, [r4, #5]
_02262A4C:
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _02262AB8
	ldrb r0, [r4, #6]
	bl sub_02037AC0
	ldr r0, [sp, #0x10]
	mov r1, #0x1b
	bl ov49_0225EF8C
	b _02262AB8
_02262A64:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0x96
	blo _02262A7A
	ldrb r0, [r4, #6]
	bl sub_02037AC0
	mov r0, #0
	strh r0, [r4, #0xa]
_02262A7A:
	ldrb r0, [r4, #6]
	bl sub_02037B38
	cmp r0, #0
	beq _02262AB8
	ldrb r1, [r4, #4]
	ldr r0, [sp, #0x10]
	bl ov49_0225EF8C
	b _02262AB8
_02262A8E:
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262CA8
	add r4, #0x3c
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262DB8
	add r0, r5, #0
	bl ov49_0225A2F8
	ldr r0, [sp, #0x10]
	bl ov49_0225EF68
	add sp, #0x38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262AB8:
	mov r0, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262AC0: .word 0x0000014A
	thumb_func_end ov49_02262028

	thumb_func_start ov49_02262AC4
ov49_02262AC4: ; 0x02262AC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02262AD8
	cmp r0, #1
	beq _02262B02
	b _02262B0E
_02262AD8:
	mov r0, #0
	add r1, r0, #0
	bl sub_020398D4
	bl sub_020392A0
	cmp r0, #0
	bne _02262AF0
	bl sub_020343E4
	bl sub_0203986C
_02262AF0:
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02262B0E
_02262B02:
	bl sub_020392A0
	cmp r0, #1
	bne _02262B0E
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262B0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_02262AC4

	thumb_func_start ov49_02262B14
ov49_02262B14: ; 0x02262B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02262B32
	cmp r0, #1
	beq _02262BA8
	b _02262BEC
_02262B32:
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225EF40
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_0225A040
	cmp r0, #0x27
	beq _02262B50
	cmp r0, #0x28
	beq _02262B56
	cmp r0, #0x29
	beq _02262B5C
	b _02262B62
_02262B50:
	mov r7, #0x2a
	mov r4, #0
	b _02262B6C
_02262B56:
	mov r7, #0x29
	mov r4, #1
	b _02262B6C
_02262B5C:
	mov r7, #0x2b
	mov r4, #2
	b _02262B6C
_02262B62:
	bl GF_AssertFail
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262B6C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A0FC
	mov r3, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp]
	bl ov49_02262D70
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262E04
	add r0, r6, #0
	bl ov49_0225EF90
	b _02262BEC
_02262BA8:
	ldr r0, _02262BF4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _02262BE2
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262DB8
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF68
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262BE2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262E04
_02262BEC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262BF4: .word gSystem
	thumb_func_end ov49_02262B14

	thumb_func_start ov49_02262BF8
ov49_02262BF8: ; 0x02262BF8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r3, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r6, #0
	bl ov49_0225A08C
	ldr r0, [sp, #0x10]
	mov r1, #0x19
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov49_0225EF8C
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_02262BF8

	thumb_func_start ov49_02262C20
ov49_02262C20: ; 0x02262C20
	strb r2, [r0, #4]
	strb r3, [r0, #6]
	mov r2, #0
	strb r2, [r0, #5]
	strh r2, [r0, #0xa]
	add r0, r1, #0
	ldr r3, _02262C34 ; =ov49_0225EF8C
	mov r1, #0x1a
	bx r3
	nop
_02262C34: .word ov49_0225EF8C
	thumb_func_end ov49_02262C20

	thumb_func_start ov49_02262C38
ov49_02262C38: ; 0x02262C38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov49_0225A10C
	ldr r0, [sp]
	mov r4, #0
	str r6, [r0, #0x38]
	cmp r6, #0
	bls _02262C6E
_02262C54:
	add r0, r5, #0
	mov r1, #0
	add r2, r7, r4
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, r6
	blo _02262C54
_02262C6E:
	ldr r2, [sp]
	ldr r3, _02262CA4 ; =ov49_02269DFC
	add r2, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x38]
	strh r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	ldrh r0, [r0, #0x2a]
	cmp r0, r1
	bls _02262C96
	ldr r0, [sp]
	strh r1, [r0, #0x2a]
_02262C96:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262CA4: .word ov49_02269DFC
	thumb_func_end ov49_02262C38

	thumb_func_start ov49_02262CA8
ov49_02262CA8: ; 0x02262CA8
	ldr r3, _02262CB0 ; =ov49_0225A134
	add r0, r1, #0
	bx r3
	nop
_02262CB0: .word ov49_0225A134
	thumb_func_end ov49_02262CA8

	thumb_func_start ov49_02262CB4
ov49_02262CB4: ; 0x02262CB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r6, r3, #0
	bl ov49_02259FE8
	str r0, [sp, #0x10]
	bl sub_0203988C
	add r7, r0, #0
	ldrb r0, [r4, #1]
	bl ov45_0222F314
	add r2, r0, #0
	cmp r7, #0
	bne _02262CEA
	mov r0, #4
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02262CEA:
	cmp r7, #2
	bne _02262CFE
	add r0, r6, #0
	mov r1, #0x15
	strh r2, [r5, #8]
	bl ov49_0225EF8C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02262CFE:
	ldrb r0, [r5, #7]
	cmp r0, r2
	beq _02262D1E
	strb r2, [r5, #7]
	cmp r2, #4
	beq _02262D1E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl ov45_0222AC14
_02262D1E:
	ldrb r0, [r4, #1]
	bl ov45_0222F3E8
	strh r0, [r5]
	mov r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bne _02262D58
	ldrb r0, [r4, #1]
	bl ov45_0222F314
	cmp r0, #1
	bhi _02262D4A
	mov r0, #3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02262D4A:
	add r0, r6, #0
	mov r1, #0x16
	bl ov49_0225EF8C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02262D58:
	ldr r1, _02262D6C ; =0x0000014A
	cmp r2, r1
	bgt _02262D68
	add r0, r6, #0
	mov r1, #0x14
	bl ov49_0225EF8C
	mov r0, #1
_02262D68:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02262D6C: .word 0x0000014A
	thumb_func_end ov49_02262CB4

	thumb_func_start ov49_02262D70
ov49_02262D70: ; 0x02262D70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02262D82
	bl GF_AssertFail
_02262D82:
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strb r0, [r5, #5]
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	strb r4, [r5, #6]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	strb r6, [r5, #3]
	bl ov49_02262DD4
	ldr r0, _02262DB4 ; =ov49_02269DF8
	mov r1, #0x12
	ldrb r0, [r0, r4]
	mov r2, #3
	mov r3, #0xd
	str r0, [sp]
	add r0, r7, #0
	bl ov49_0225A204
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02262DB4: .word ov49_02269DF8
	thumb_func_end ov49_02262D70


    .rodata

ov49_02269DF8: ; 0x02269DF8
	.byte 0x08, 0x0A, 0x00, 0x00

ov49_02269DFC: ; 0x02269DFC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00
	.byte 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

