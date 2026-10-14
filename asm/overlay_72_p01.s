	.include "macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022378DC
	.extern _0223B820
	.extern ov72_02237D88
	.extern ov72_0223B920

	.text

	.text
	thumb_func_start ov72_022378DC
ov72_022378DC: ; 0x022378DC
	push {r3, lr}
	ldr r1, _02237B48 ; =_0223B820
	ldr r0, [r1]
	cmp r0, #0xc
	bls _022378E8
	b _02237B44
_022378E8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022378F4: ; jump table
	.short _02237B44 - _022378F4 - 2 ; case 0
	.short _02237B44 - _022378F4 - 2 ; case 1
	.short _0223790E - _022378F4 - 2 ; case 2
	.short _02237B38 - _022378F4 - 2 ; case 3
	.short _02237958 - _022378F4 - 2 ; case 4
	.short _02237B38 - _022378F4 - 2 ; case 5
	.short _022379C8 - _022378F4 - 2 ; case 6
	.short _02237B38 - _022378F4 - 2 ; case 7
	.short _02237A3A - _022378F4 - 2 ; case 8
	.short _02237B38 - _022378F4 - 2 ; case 9
	.short _02237AAC - _022378F4 - 2 ; case 10
	.short _02237B38 - _022378F4 - 2 ; case 11
	.short _02237B44 - _022378F4 - 2 ; case 12
_0223790E:
	bl ov38_0221BF48
	cmp r0, #1
	beq _0223791C
	cmp r0, #7
	beq _02237934
	pop {r3, pc}
_0223791C:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C014
	bl ov72_02237D88
	ldr r1, _02237B48 ; =_0223B820
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237934:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C020
	cmp r0, #0
	ble _0223794A
	ldr r0, _02237B4C ; =ov72_0223B920
	ldrb r1, [r0, #3]
	ldr r0, _02237B48 ; =_0223B820
	b _02237950
_0223794A:
	mov r1, #1
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
_02237950:
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237958:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237966
	cmp r0, #7
	beq _0223797E
	pop {r3, pc}
_02237966:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C014
	bl ov72_02237D88
	ldr r1, _02237B48 ; =_0223B820
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_0223797E:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C020
	ldr r1, _02237B50 ; =0x00000A38
	cmp r0, r1
	bne _02237996
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0
	str r1, [r0, #4]
	b _022379C2
_02237996:
	ldr r0, _02237B4C ; =ov72_0223B920
	ldr r0, [r0, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _022379A6
	cmp r0, #5
	beq _022379B0
	b _022379BA
_022379A6:
	mov r1, #2
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
	b _022379C2
_022379B0:
	mov r1, #1
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
	b _022379C2
_022379BA:
	mov r1, #4
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
_022379C2:
	bl ov38_0221BFEC
	pop {r3, pc}
_022379C8:
	bl ov38_0221BF48
	cmp r0, #1
	beq _022379D6
	cmp r0, #7
	beq _022379EE
	pop {r3, pc}
_022379D6:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C014
	bl ov72_02237D88
	ldr r1, _02237B48 ; =_0223B820
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_022379EE:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	ldr r2, _02237B4C ; =ov72_0223B920
	str r1, [r0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _02237A2C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02237A08: ; jump table
	.short _02237A2C - _02237A08 - 2 ; case 0
	.short _02237A14 - _02237A08 - 2 ; case 1
	.short _02237A1A - _02237A08 - 2 ; case 2
	.short _02237A2C - _02237A08 - 2 ; case 3
	.short _02237A20 - _02237A08 - 2 ; case 4
	.short _02237A26 - _02237A08 - 2 ; case 5
_02237A14:
	mov r1, #0
	str r1, [r0, #4]
	b _02237A34
_02237A1A:
	sub r1, #0xf
	str r1, [r0, #4]
	b _02237A34
_02237A20:
	sub r1, #0xd
	str r1, [r0, #4]
	b _02237A34
_02237A26:
	sub r1, #0xe
	str r1, [r0, #4]
	b _02237A34
_02237A2C:
	mov r1, #4
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
_02237A34:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237A3A:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237A48
	cmp r0, #7
	beq _02237A60
	pop {r3, pc}
_02237A48:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C014
	bl ov72_02237D88
	ldr r1, _02237B48 ; =_0223B820
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237A60:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	ldr r2, _02237B4C ; =ov72_0223B920
	str r1, [r0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _02237A9E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02237A7A: ; jump table
	.short _02237A9E - _02237A7A - 2 ; case 0
	.short _02237A86 - _02237A7A - 2 ; case 1
	.short _02237A9E - _02237A7A - 2 ; case 2
	.short _02237A8C - _02237A7A - 2 ; case 3
	.short _02237A92 - _02237A7A - 2 ; case 4
	.short _02237A98 - _02237A7A - 2 ; case 5
_02237A86:
	mov r1, #0
	str r1, [r0, #4]
	b _02237AA6
_02237A8C:
	mov r1, #1
	str r1, [r0, #4]
	b _02237AA6
_02237A92:
	mov r1, #2
	str r1, [r0, #4]
	b _02237AA6
_02237A98:
	sub r1, #0xe
	str r1, [r0, #4]
	b _02237AA6
_02237A9E:
	mov r1, #4
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
_02237AA6:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237AAC:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237ABA
	cmp r0, #7
	beq _02237AD2
	pop {r3, pc}
_02237ABA:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C014
	bl ov72_02237D88
	ldr r1, _02237B48 ; =_0223B820
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237AD2:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	bl ov38_0221C020
	cmp r0, #8
	bne _02237AE8
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0
	str r1, [r0, #4]
	b _02237B32
_02237AE8:
	ldr r0, _02237B4C ; =ov72_0223B920
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _02237B2A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237AFC: ; jump table
	.short _02237B2A - _02237AFC - 2 ; case 0
	.short _02237B08 - _02237AFC - 2 ; case 1
	.short _02237B2A - _02237AFC - 2 ; case 2
	.short _02237B10 - _02237AFC - 2 ; case 3
	.short _02237B18 - _02237AFC - 2 ; case 4
	.short _02237B20 - _02237AFC - 2 ; case 5
_02237B08:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #0
	str r1, [r0, #4]
	b _02237B32
_02237B10:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #1
	str r1, [r0, #4]
	b _02237B32
_02237B18:
	ldr r0, _02237B48 ; =_0223B820
	mov r1, #2
	str r1, [r0, #4]
	b _02237B32
_02237B20:
	mov r1, #1
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
	b _02237B32
_02237B2A:
	mov r1, #4
	ldr r0, _02237B48 ; =_0223B820
	mvn r1, r1
	str r1, [r0, #4]
_02237B32:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237B38:
	mov r0, #0xc
	str r0, [r1]
	sub r0, #0x10
	str r0, [r1, #4]
	bl ov38_0221BFEC
_02237B44:
	pop {r3, pc}
	nop
_02237B48: .word _0223B820
_02237B4C: .word ov72_0223B920
_02237B50: .word 0x00000A38
	thumb_func_end ov72_022378DC

