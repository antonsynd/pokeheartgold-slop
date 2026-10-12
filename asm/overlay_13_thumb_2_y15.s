	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221C78
	.public ov13_02221D34
	.public ov13_02221D58
	.public ov13_02221EAC
	.extern _0224CF98
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_02222A5C
	.extern ov13_02222A84

	.text

	.text
	thumb_func_start ov13_02221C78
ov13_02221C78: ; 0x02221C78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r2, #0x41
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl ov13_02222978
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0x80
_02221C90:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r2, r0, #0
	cmp r2, #0
	bgt _02221CA2
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221CA2:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _02221D18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221CB4: ; jump table
	.short _02221CC2 - _02221CB4 - 2 ; case 0
	.short _02221CCC - _02221CB4 - 2 ; case 1
	.short _02221CD6 - _02221CB4 - 2 ; case 2
	.short _02221CE4 - _02221CB4 - 2 ; case 3
	.short _02221CE4 - _02221CB4 - 2 ; case 4
	.short _02221CF4 - _02221CB4 - 2 ; case 5
	.short _02221D06 - _02221CB4 - 2 ; case 6
_02221CC2:
	add r0, r5, #0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CCC:
	add r0, r7, #0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CD6:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CE4:
	ldrb r0, [r4, #6]
	bl ov13_02222A84
	cmp r0, #0
	bgt _02221D1E
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221CF4:
	add r0, r4, #6
	add r1, r2, #0
	bl ov13_02221D34
	bl ov13_02222A5C
	ldr r1, _02221D30 ; =_0224CF98
	str r0, [r1, #0x34]
	b _02221D1E
_02221D06:
	add r0, r4, #6
	add r1, r2, #0
	bl ov13_02221D34
	bl ov13_02222A5C
	ldr r1, _02221D30 ; =_0224CF98
	str r0, [r1, #0x38]
	b _02221D1E
_02221D18:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221D1E:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02221D2C
	bl ov13_02222A84
	add r4, r6, r0
	b _02221C90
_02221D2C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221D30: .word _0224CF98
	thumb_func_end ov13_02221C78

	thumb_func_start ov13_02221D34
ov13_02221D34: ; 0x02221D34
	push {r4, r5}
	mov r3, #0
	sub r2, r1, #1
	add r5, r0, r2
	add r4, r3, #0
	cmp r1, #0
	ble _02221D50
_02221D42:
	ldrb r0, [r5]
	lsl r2, r3, #8
	add r4, r4, #1
	sub r5, r5, #1
	add r3, r2, r0
	cmp r4, r1
	blt _02221D42
_02221D50:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov13_02221D34

	thumb_func_start ov13_02221D58
ov13_02221D58: ; 0x02221D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r0, #6
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0xf0
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0xb0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x70
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r5, [sp, #0x10]
_02221D86:
	ldrh r0, [r5, #2]
	bl ov13_02222A84
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0x21
	bgt _02221DBE
	bge _02221DDC
	cmp r0, #0x15
	bgt _02221DB8
	add r1, r0, #0
	sub r1, #0x10
	bmi _02221DF4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02221DAC: ; jump table
	.short _02221DD0 - _02221DAC - 2 ; case 0
	.short _02221DD0 - _02221DAC - 2 ; case 1
	.short _02221DD0 - _02221DAC - 2 ; case 2
	.short _02221DD0 - _02221DAC - 2 ; case 3
	.short _02221DF4 - _02221DAC - 2 ; case 4
	.short _02221DE8 - _02221DAC - 2 ; case 5
_02221DB8:
	cmp r0, #0x20
	beq _02221DDC
	b _02221DF4
_02221DBE:
	cmp r0, #0x23
	bgt _02221DCA
	bge _02221DDC
	cmp r0, #0x22
	beq _02221DDC
	b _02221DF4
_02221DCA:
	cmp r0, #0x25
	beq _02221DE8
	b _02221DF4
_02221DD0:
	cmp r4, #5
	bls _02221DF4
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221DDC:
	cmp r4, #0xd
	bls _02221DF4
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221DE8:
	cmp r4, #0x21
	bls _02221DF4
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221DF4:
	cmp r0, #0x21
	bgt _02221E22
	bge _02221E42
	cmp r0, #0x15
	bgt _02221E1C
	add r1, r0, #0
	sub r1, #0x10
	bmi _02221E8C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02221E10: ; jump table
	.short _02221E34 - _02221E10 - 2 ; case 0
	.short _02221E42 - _02221E10 - 2 ; case 1
	.short _02221E50 - _02221E10 - 2 ; case 2
	.short _02221E5E - _02221E10 - 2 ; case 3
	.short _02221E8C - _02221E10 - 2 ; case 4
	.short _02221E6C - _02221E10 - 2 ; case 5
_02221E1C:
	cmp r0, #0x20
	beq _02221E34
	b _02221E8C
_02221E22:
	cmp r0, #0x23
	bgt _02221E2E
	bge _02221E5E
	cmp r0, #0x22
	beq _02221E50
	b _02221E8C
_02221E2E:
	cmp r0, #0x25
	beq _02221E6C
	b _02221E8C
_02221E34:
	add r0, r7, #0
	add r1, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	str r4, [r6, #4]
	b _02221E94
_02221E42:
	ldr r0, [sp]
	add r1, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	str r4, [r6, #4]
	b _02221E94
_02221E50:
	ldr r0, [sp, #4]
	add r1, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	str r4, [r6, #4]
	b _02221E94
_02221E5E:
	ldr r0, [sp, #8]
	add r1, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	str r4, [r6, #4]
	b _02221E94
_02221E6C:
	cmp r4, #0
	beq _02221E80
	add r0, r5, r4
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02221E80
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221E80:
	ldr r0, [sp, #0xc]
	add r1, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	b _02221E94
_02221E8C:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221E94:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02221EA4
	bl ov13_02222A84
	ldr r1, [sp, #0x10]
	add r5, r1, r0
	b _02221D86
_02221EA4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02221D58

	thumb_func_start ov13_02221EAC
ov13_02221EAC: ; 0x02221EAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #6
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r4, [sp, #4]
_02221EC2:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x35
	bgt _02221ED8
	bge _02221EF2
	cmp r0, #0x30
	beq _02221EE6
	b _02221EFE
_02221ED8:
	cmp r0, #0x40
	bgt _02221EE0
	beq _02221EE6
	b _02221EFE
_02221EE0:
	cmp r0, #0x45
	beq _02221EF2
	b _02221EFE
_02221EE6:
	cmp r5, #0x40
	bls _02221EFE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221EF2:
	cmp r5, #0x21
	bls _02221EFE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221EFE:
	cmp r0, #0x35
	bgt _02221F0A
	bge _02221F26
	cmp r0, #0x30
	beq _02221F18
	b _02221F46
_02221F0A:
	cmp r0, #0x40
	bgt _02221F12
	beq _02221F18
	b _02221F46
_02221F12:
	cmp r0, #0x45
	beq _02221F26
	b _02221F46
_02221F18:
	add r0, r7, #0
	add r1, r4, #6
	add r2, r5, #0
	bl ov13_02222968
	str r5, [r6, #4]
	b _02221F4E
_02221F26:
	cmp r5, #0
	beq _02221F3A
	add r0, r4, r5
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02221F3A
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221F3A:
	ldr r0, [sp]
	add r1, r4, #6
	add r2, r5, #0
	bl ov13_02222968
	b _02221F4E
_02221F46:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221F4E:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02221F5E
	bl ov13_02222A84
	ldr r1, [sp, #4]
	add r4, r1, r0
	b _02221EC2
_02221F5E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov13_02221EAC

