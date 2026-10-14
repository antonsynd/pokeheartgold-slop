	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02224164
	.public ov13_02224330
	.extern ov13_02223AE4
	.extern ov13_02223B28
	.extern ov13_02223E6C
	.extern ov13_02223ED4
	.extern ov13_02226CBC
	.extern ov13_02226CD8
	.extern ov13_02226CFC
	.extern ov13_02226D40
	.extern ov13_02226F3C
	.extern ov13_02245A58
	.extern ov13_02245AC4
	.extern ov13_0224DF30
	.extern ov13_0224E3E0
	.extern ov13_0224E440

	.text

	.text
	thumb_func_start ov13_02224164
ov13_02224164: ; 0x02224164
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r6, r0, #4
	add r0, r1, #0
	add r4, r0, #4
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _02224238
_02224188:
	add r2, sp, #0x48
	add r2, #2
	mov r1, #0x22
	mov r0, #0
_02224190:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02224190
	add r0, sp, #0x48
	add r0, #2
	add r1, r6, #4
	mov r2, #0x20
	bl memcpy
	add r0, sp, #0x48
	ldr r1, [r6]
	mov r7, #0
	add r0, #2
	strb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _0222421C
	add r0, r6, #0
	str r0, [sp, #0x24]
	add r0, #0x28
	ldr r5, [r6]
	str r0, [sp, #0x24]
_022241C2:
	cmp r5, #0
	beq _0222421C
	cmp r5, #0x20
	bhi _0222421C
	cmp r5, #1
	bne _022241D8
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0222421C
	cmp r0, #0x20
	beq _0222421C
_022241D8:
	add r0, sp, #0x48
	add r0, #2
	bl strlen
	add r2, r0, #0
	add r0, sp, #0x48
	add r0, #2
	add r1, r4, #4
	bl memcmp
	cmp r0, #0
	bne _02224212
	add r1, r4, #0
	ldr r0, [sp, #0x24]
	add r1, #0x28
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bne _02224212
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r4, #0x2e]
	cmp r1, r0
	beq _02224212
	cmp r1, #0
	bne _02224212
	mov r0, #1
	str r0, [sp, #0x20]
	b _0222421C
_02224212:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r4, #0x30
	cmp r7, r0
	blo _022241C2
_0222421C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02224238
	ldr r0, [sp, #4]
	add r6, #0x30
	add r4, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02224188
_02224238:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _02224314
	add r2, sp, #0x28
	mov r1, #0x22
	mov r0, #0
_02224244:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02224244
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r6, [sp, #0x18]
	add r4, r0, #4
	ldr r0, [sp, #4]
	add r5, r0, #4
	ldr r0, [r0]
	cmp r0, #0
	bls _022242A0
	add r7, sp, #0x28
_02224264:
	add r0, r7, #0
	add r1, r5, #4
	mov r2, #0x20
	bl memcpy
	ldr r1, [r5]
	mov r0, #0
	strb r0, [r7, r1]
	ldr r0, _0222432C ; =ov13_02245AC4
	bl strlen
	add r2, r0, #0
	ldr r1, _0222432C ; =ov13_02245AC4
	add r0, r7, #0
	bl memcmp
	cmp r0, #0
	bne _02224294
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _02224294
	mov r0, #1
	str r0, [sp, #0x14]
	b _022242A0
_02224294:
	ldr r0, [sp, #4]
	add r6, r6, #1
	ldr r0, [r0]
	add r5, #0x30
	cmp r6, r0
	blo _02224264
_022242A0:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _02224304
	ldr r7, _0222432C ; =ov13_02245AC4
	add r5, sp, #0x28
_022242B0:
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0x20
	bl memcpy
	ldr r1, [r4]
	mov r0, #0
	strb r0, [r5, r1]
	add r0, r5, #0
	bl strlen
	add r6, r0, #0
	add r0, r7, #0
	bl strlen
	cmp r6, r0
	bne _022242F2
	add r0, r7, #0
	bl strlen
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl memcmp
	cmp r0, #0
	bne _022242F2
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _022242F2
	mov r0, #1
	str r0, [sp, #0x18]
	b _02224304
_022242F2:
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _022242B0
_02224304:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02224314
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02224314
	mov r0, #1
	str r0, [sp, #0x20]
_02224314:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02224324
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #0x1c]
_02224324:
	ldr r0, [sp, #0x1c]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_0222432C: .word ov13_02245AC4
	thumb_func_end ov13_02224164

	thumb_func_start ov13_02224330
ov13_02224330: ; 0x02224330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _022245A8 ; =ov13_0224DF30
	mov r4, #0
	ldr r1, [r0, #0x70]
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, #1
	mvn r4, r4
	bl ov13_02226CD8
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02224368
	ldr r1, [sp, #0x10]
	mov r0, #1
	bl ov13_02226CD8
	str r0, [sp, #8]
	cmp r0, #0
	bne _0222436A
_02224368:
	b _0222458E
_0222436A:
	mov r0, #0
	str r0, [sp, #0x1c]
	b _02224556
_02224370:
	bl ov13_02226CBC
	ldr r1, _022245AC ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _0222445A
	mov r0, #0
	ldr r3, _022245B0 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	bl ov13_02223B28
	cmp r0, #0
	bne _02224392
	mov r4, #1
	mvn r4, r4
	b _0222458E
_02224392:
	add r0, sp, #0x24
	bl OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _022245B4 ; =0x000FFB10
	ldr r3, _022245B8 ; =ov13_02223ED4
	add r0, sp, #0x24
	mov r2, #0
	bl OS_SetAlarm
	ldr r7, _022245A8 ; =ov13_0224DF30
	mov r5, #1
	mov r4, #0
	add r6, sp, #0x24
_022243B0:
	mov r0, #0xa
	bl OS_Sleep
	bl ov13_02226CBC
	ldr r1, _022245AC ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _02224444
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02224444
	bl ov13_02223E6C
	cmp r0, #0
	beq _02224440
_022243D0:
	cmp r0, #0x13
	bhi _02224436
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022243E0: ; jump table
	.short _02224436 - _022243E0 - 2 ; case 0
	.short _02224436 - _022243E0 - 2 ; case 1
	.short _02224436 - _022243E0 - 2 ; case 2
	.short _02224436 - _022243E0 - 2 ; case 3
	.short _02224438 - _022243E0 - 2 ; case 4
	.short _0222440C - _022243E0 - 2 ; case 5
	.short _02224436 - _022243E0 - 2 ; case 6
	.short _02224436 - _022243E0 - 2 ; case 7
	.short _02224438 - _022243E0 - 2 ; case 8
	.short _02224436 - _022243E0 - 2 ; case 9
	.short _02224432 - _022243E0 - 2 ; case 10
	.short _02224436 - _022243E0 - 2 ; case 11
	.short _02224436 - _022243E0 - 2 ; case 12
	.short _02224436 - _022243E0 - 2 ; case 13
	.short _02224436 - _022243E0 - 2 ; case 14
	.short _02224436 - _022243E0 - 2 ; case 15
	.short _02224436 - _022243E0 - 2 ; case 16
	.short _02224436 - _022243E0 - 2 ; case 17
	.short _02224438 - _022243E0 - 2 ; case 18
	.short _02224408 - _022243E0 - 2 ; case 19
_02224408:
	mov r5, #0
	b _02224438
_0222440C:
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x70]
	bl ov13_02223AE4
	cmp r0, r4
	ble _02224438
	add r4, r0, #0
	add r0, r6, #0
	bl OS_CancelAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _022245B4 ; =0x000FFB10
	ldr r3, _022245B8 ; =ov13_02223ED4
	add r0, r6, #0
	mov r2, #0
	bl OS_SetAlarm
	b _02224438
_02224432:
	mov r5, #0
	b _02224438
_02224436:
	mov r5, #0
_02224438:
	bl ov13_02223E6C
	cmp r0, #0
	bne _022243D0
_02224440:
	cmp r5, #0
	bne _022243B0
_02224444:
	add r0, sp, #0x24
	bl OS_CancelAlarm
_0222444A:
	bl ov13_02223E6C
	cmp r0, #0
	bne _0222444A
	ldr r1, _022245A8 ; =ov13_0224DF30
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0222445C
_0222445A:
	b _02224566
_0222445C:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x70]
	cmp r4, r0
	blt _0222446C
	ldr r0, [sp, #0x14]
	sub r4, r0, #6
	b _0222458E
_0222446C:
	ldr r0, [sp, #0x14]
	ldr r5, [r1, #0x5c]
	str r0, [sp, #0x18]
	cmp r4, #0
	ble _022244E2
	ble _022244E2
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0xc]
	str r0, [sp, #4]
	add r0, #8
	add r6, r7, #0
	str r0, [sp, #4]
	add r6, #0x2c
_02224486:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0xc
	mov r2, #0x20
	bl memcpy
	ldrh r0, [r5, #0xa]
	str r0, [r7, #4]
	ldrh r0, [r5, #0xa]
	add r1, r7, r0
	mov r0, #0
	strb r0, [r1, #8]
	ldrh r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	beq _022244AA
	mov r0, #1
	b _022244AC
_022244AA:
	mov r0, #0
_022244AC:
	strh r0, [r7, #0x32]
	ldrb r0, [r5, #4]
	add r7, #0x30
	strb r0, [r6]
	ldrb r0, [r5, #5]
	strb r0, [r6, #1]
	ldrb r0, [r5, #6]
	strb r0, [r6, #2]
	ldrb r0, [r5, #7]
	strb r0, [r6, #3]
	ldrb r0, [r5, #8]
	strb r0, [r6, #4]
	ldrb r0, [r5, #9]
	add r5, #0xc0
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	add r6, #0x30
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _02224486
_022244E2:
	ldr r0, [sp, #0xc]
	str r4, [r0]
	ldr r0, _022245A8 ; =ov13_0224DF30
	ldr r0, [r0, #0x38]
	cmp r0, #1
	beq _0222453C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	bl ov13_02224164
	cmp r0, #0
	beq _0222453C
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r1, r0, #4
	mov r0, #0x30
	mul r0, r2
	add r4, r1, r0
	ldr r0, _022245A8 ; =ov13_0224DF30
	add r1, r4, #4
	str r2, [r0, #0x18]
	ldr r0, _022245BC ; =ov13_0224E440
	bl strcpy
	add r0, r4, #0
	add r4, #0x28
	ldrb r2, [r4]
	ldr r1, _022245C0 ; =ov13_0224E3E0
	add r0, #0x28
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r0, [r0, #5]
	strb r0, [r1, #5]
	add r0, sp, #0x50
	bl ov13_02226D40
	b _02224566
_0222453C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl memcpy
	ldr r0, _022245A8 ; =ov13_0224DF30
	mov r1, #2
	str r1, [r0, #0x38]
	bl ov13_02226F3C
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_02224556:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02224566
	ldr r0, _022245A8 ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02224566
	b _02224370
_02224566:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _02224578
	bl ov13_02226CBC
	ldr r1, _022245AC ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bls _0222457E
_02224578:
	mov r4, #2
	mvn r4, r4
	b _0222458E
_0222457E:
	ldr r0, _022245A8 ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0222458C
	mov r4, #7
	mvn r4, r4
	b _0222458E
_0222458C:
	mov r4, #1
_0222458E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02224598
	bl ov13_02226CFC
_02224598:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022245A2
	bl ov13_02226CFC
_022245A2:
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022245A8: .word ov13_0224DF30
_022245AC: .word ov13_02245A58
_022245B0: .word 0x0030BFFE
_022245B4: .word 0x000FFB10
_022245B8: .word ov13_02223ED4
_022245BC: .word ov13_0224E440
_022245C0: .word ov13_0224E3E0
	thumb_func_end ov13_02224330

