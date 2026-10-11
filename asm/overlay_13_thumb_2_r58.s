	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02224A30
	.public ov13_02224B2C
	.public ov13_02224D00
	.public ov13_02224DB4
	.public ov13_02224F3C
	.public ov13_02225320
	.public ov13_02225358
	.public ov13_02225510
	.public ov13_022256C8
	.public ov13_02225710
	.public ov13_022259C8
	.public ov13_02225B58
	.public ov13_02225F14
	.extern ov13_02223DE0
	.extern ov13_02223FDC
	.extern ov13_02224100
	.extern ov13_02224330
	.extern ov13_02224618
	.extern ov13_02224694
	.extern ov13_022246E4
	.extern ov13_02224718
	.extern ov13_0222483C
	.extern ov13_02224864
	.extern ov13_02224938
	.extern ov13_02224988
	.extern ov13_02224A24
	.extern ov13_02226C94
	.extern ov13_02226CBC
	.extern ov13_02226D0C
	.extern ov13_02226D40
	.extern ov13_02226F3C
	.extern ov13_02242688
	.extern ov13_022426B0
	.extern ov13_02242AB0
	.extern ov13_02242EB0
	.extern ov13_022432B0
	.extern ov13_022436B0
	.extern ov13_02243AB0
	.extern ov13_02243EB0
	.extern ov13_022442B0
	.extern ov13_022446B0
	.extern ov13_02244AB0
	.extern ov13_02245A58
	.extern ov13_02245B18
	.extern ov13_0224DF30
	.extern ov13_0224DF80
	.extern ov13_0224E09C
	.extern ov13_0224E0B0
	.extern ov13_0224E0C4
	.extern ov13_0224E144
	.extern ov13_0224E184
	.extern ov13_0224E270
	.extern ov13_0224E284
	.extern ov13_0224E2B0
	.extern ov13_0224E2E8
	.extern ov13_0224E380
	.extern ov13_0224E3D8
	.extern ov13_0224E3E0
	.extern ov13_0224E3F0
	.extern ov13_0224E400
	.extern ov13_0224E408
	.extern ov13_0224E464
	.extern ov13_0224EC64

	.text

	.text
	thumb_func_start ov13_02224A30
ov13_02224A30: ; 0x02224A30
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r1, _02224B1C ; =ov13_02245B18
	add r4, r0, #0
	ldrb r0, [r1]
	add r2, r4, #0
	add r2, #0xc
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #4
	add r1, #2
	strb r0, [r2, #3]
	ldr r0, _02224B20 ; =ov13_0224E3E0
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	strb r2, [r1, #4]
	strb r0, [r1, #5]
	add r1, sp, #0
	ldrb r2, [r1, #6]
	mov r0, #0xfd
	and r0, r2
	strb r0, [r1, #6]
	add r0, sp, #0
	bl ov13_02224A24
	add r1, sp, #0
	ldrb r2, [r1]
	ldr r0, _02224B24 ; =ov13_0224E3D8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r2, [r1, #4]
	strb r2, [r0, #4]
	ldrb r2, [r1, #5]
	strb r2, [r0, #5]
	add r0, sp, #4
	add r0, #2
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bgt _02224AC4
	add r1, sp, #0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #4
	add r1, #2
	strb r0, [r4, #5]
	b _02224AE2
_02224AC4:
	add r1, sp, #4
	add r1, #2
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #0
	strb r0, [r4, #5]
_02224AE2:
	ldrb r0, [r1]
	strb r0, [r4, #6]
	ldrb r0, [r1, #1]
	strb r0, [r4, #7]
	ldrb r0, [r1, #2]
	strb r0, [r4, #8]
	ldrb r0, [r1, #3]
	strb r0, [r4, #9]
	ldrb r0, [r1, #4]
	strb r0, [r4, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r4, #0xb]
	ldr r0, _02224B28 ; =ov13_02245A58
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02224B14
	add r0, sp, #0x2c
	add r1, sp, #0
	bl ov13_02226D40
	add r1, sp, #4
	add r0, sp, #0xc
	add r1, #2
	bl ov13_02226D40
_02224B14:
	mov r0, #1
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_02224B1C: .word ov13_02245B18
_02224B20: .word ov13_0224E3E0
_02224B24: .word ov13_0224E3D8
_02224B28: .word ov13_02245A58
	thumb_func_end ov13_02224A30

	thumb_func_start ov13_02224B2C
ov13_02224B2C: ; 0x02224B2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r1, r0, #0
	str r1, [sp, #4]
	add r1, #8
	str r1, [sp, #4]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp]
	ldrh r1, [r0]
	add r3, sp, #0xc
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	bl ov13_02224694
	add r5, r0, #0
	bne _02224B6C
	b _02224CDC
_02224B6C:
	ldr r2, [sp, #0x10]
	ldr r0, _02224CE4 ; =0x00000201
	sub r1, r2, r0
	cmp r1, #9
	bhi _02224BFA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02224B82: ; jump table
	.short _02224B96 - _02224B82 - 2 ; case 0
	.short _02224BB6 - _02224B82 - 2 ; case 1
	.short _02224BD2 - _02224B82 - 2 ; case 2
	.short _02224BFC - _02224B82 - 2 ; case 3
	.short _02224C26 - _02224B82 - 2 ; case 4
	.short _02224C42 - _02224B82 - 2 ; case 5
	.short _02224C42 - _02224B82 - 2 ; case 6
	.short _02224C42 - _02224B82 - 2 ; case 7
	.short _02224C42 - _02224B82 - 2 ; case 8
	.short _02224CA2 - _02224B82 - 2 ; case 9
_02224B96:
	ldr r3, _02224CE8 ; =ov13_0224E284
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl memcpy
	mov r0, #1
	str r0, [sp]
	b _02224CC6
_02224BB6:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02224CEC ; =ov13_0224E2B0
	str r1, [r0]
	b _02224CC6
_02224BD2:
	ldrh r3, [r5]
	ldr r1, _02224CF0 ; =ov13_0224E184
	mov r0, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x57
	lsl r2, r2, #2
_02224BF0:
	add r0, r0, #1
	str r3, [r1, r2]
	add r1, #0x28
	cmp r0, #4
	blt _02224BF0
_02224BFA:
	b _02224CC6
_02224BFC:
	ldrh r3, [r5]
	ldr r0, _02224CF0 ; =ov13_0224E184
	mov r1, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x16
	lsl r2, r2, #4
_02224C1A:
	add r1, r1, #1
	str r3, [r0, r2]
	add r0, #0x28
	cmp r1, #4
	blt _02224C1A
	b _02224CC6
_02224C26:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02224CEC ; =ov13_0224E2B0
	str r1, [r0, #4]
	b _02224CC6
_02224C42:
	add r0, r0, #5
	sub r2, r2, r0
	mov r0, #0x28
	mul r0, r2
	ldr r1, _02224CF4 ; =ov13_0224E2E8
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	bl memset
	ldr r0, _02224CEC ; =ov13_0224E2B0
	ldr r1, _02224CF8 ; =0x00000206
	ldr r0, [r0, #0x30]
	cmp r0, #1
	bne _02224C8C
	ldr r2, [sp, #0x10]
	ldr r0, _02224CF4 ; =ov13_0224E2E8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r4, r0, r1
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02224CC6
	add r7, r6, #0
_02224C76:
	ldrsb r1, [r5, r7]
	add r0, r4, #0
	add r5, r5, #1
	bl ov13_02226D0C
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _02224C76
	b _02224CC6
_02224C8C:
	ldr r2, [sp, #0x10]
	ldr r0, _02224CF4 ; =ov13_0224E2E8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	bl memcpy
	b _02224CC6
_02224CA2:
	ldr r3, _02224CFC ; =ov13_0224E380
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	bl memcpy
_02224CC6:
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov13_02224694
	add r5, r0, #0
	beq _02224CDC
	b _02224B6C
_02224CDC:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224CE4: .word 0x00000201
_02224CE8: .word ov13_0224E284
_02224CEC: .word ov13_0224E2B0
_02224CF0: .word ov13_0224E184
_02224CF4: .word ov13_0224E2E8
_02224CF8: .word 0x00000206
_02224CFC: .word ov13_0224E380
	thumb_func_end ov13_02224B2C

	thumb_func_start ov13_02224D00
ov13_02224D00: ; 0x02224D00
	push {r4, r5, r6, r7}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r3, r2, #0
	cmp r4, #0
	ble _02224DAE
	mov r7, #0x1f
_02224D10:
	ldrsb r1, [r5, r3]
	cmp r1, #0x63
	bgt _02224D66
	bge _02224D7E
	cmp r1, #0x61
	bgt _02224D60
	bge _02224D7E
	add r6, r1, #0
	sub r6, #0x30
	cmp r6, #0x16
	bhi _02224D8A
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_02224D32: ; jump table
	.short _02224D78 - _02224D32 - 2 ; case 0
	.short _02224D78 - _02224D32 - 2 ; case 1
	.short _02224D78 - _02224D32 - 2 ; case 2
	.short _02224D78 - _02224D32 - 2 ; case 3
	.short _02224D78 - _02224D32 - 2 ; case 4
	.short _02224D78 - _02224D32 - 2 ; case 5
	.short _02224D78 - _02224D32 - 2 ; case 6
	.short _02224D78 - _02224D32 - 2 ; case 7
	.short _02224D78 - _02224D32 - 2 ; case 8
	.short _02224D78 - _02224D32 - 2 ; case 9
	.short _02224D8A - _02224D32 - 2 ; case 10
	.short _02224D8A - _02224D32 - 2 ; case 11
	.short _02224D8A - _02224D32 - 2 ; case 12
	.short _02224D8A - _02224D32 - 2 ; case 13
	.short _02224D8A - _02224D32 - 2 ; case 14
	.short _02224D8A - _02224D32 - 2 ; case 15
	.short _02224D8A - _02224D32 - 2 ; case 16
	.short _02224D84 - _02224D32 - 2 ; case 17
	.short _02224D84 - _02224D32 - 2 ; case 18
	.short _02224D84 - _02224D32 - 2 ; case 19
	.short _02224D84 - _02224D32 - 2 ; case 20
	.short _02224D84 - _02224D32 - 2 ; case 21
	.short _02224D84 - _02224D32 - 2 ; case 22
_02224D60:
	cmp r1, #0x62
	beq _02224D7E
	b _02224D8A
_02224D66:
	cmp r1, #0x65
	bgt _02224D72
	bge _02224D7E
	cmp r1, #0x64
	beq _02224D7E
	b _02224D8A
_02224D72:
	cmp r1, #0x66
	beq _02224D7E
	b _02224D8A
_02224D78:
	sub r1, #0x30
	add r2, r2, r1
	b _02224D90
_02224D7E:
	sub r1, #0x57
	add r2, r2, r1
	b _02224D90
_02224D84:
	sub r1, #0x37
	add r2, r2, r1
	b _02224D90
_02224D8A:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02224D90:
	lsr r6, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r6
	ror r1, r7
	add r1, r6, r1
	bne _02224DA0
	lsl r2, r2, #4
	b _02224DA8
_02224DA0:
	add r6, r3, r6
	asr r1, r6, #1
	strb r2, [r0, r1]
	mov r2, #0
_02224DA8:
	add r3, r3, #1
	cmp r3, r4
	blt _02224D10
_02224DAE:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov13_02224D00

	thumb_func_start ov13_02224DB4
ov13_02224DB4: ; 0x02224DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r0, #1
	str r0, [sp]
	ldr r0, _02224F1C ; =ov13_0224E09C
	ldr r1, _02224F20 ; =ov13_0224E284
	bl strcpy
	ldr r1, _02224F24 ; =ov13_0224E2B0
	ldr r0, [r1]
	cmp r0, #3
	bls _02224DCE
	b _02224F0E
_02224DCE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224DDA: ; jump table
	.short _02224DE2 - _02224DDA - 2 ; case 0
	.short _02224DEA - _02224DDA - 2 ; case 1
	.short _02224EE2 - _02224DDA - 2 ; case 2
	.short _02224EF8 - _02224DDA - 2 ; case 3
_02224DE2:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #0
	str r1, [r0, #0xc]
	b _02224F14
_02224DEA:
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02224DF8
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
	b _02224F14
_02224DF8:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	ldr r6, _02224F2C ; =ov13_0224E2E8
	ldr r5, _02224F30 ; =ov13_0224E0C4
	str r1, [r0, #0x10]
	mov r7, #0
	add r4, sp, #4
_02224E04:
	add r0, sp, #4
	add r1, r6, #0
	mov r2, #0x20
	bl memcpy
	mov r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	bl strlen
	cmp r0, #0x10
	bhi _02224E3C
	cmp r0, #0xa
	blo _02224E2E
	beq _02224E66
	cmp r0, #0xd
	beq _02224E78
	cmp r0, #0x10
	beq _02224EA4
	b _02224ED0
_02224E2E:
	cmp r0, #0
	bhi _02224E36
	beq _02224ED6
	b _02224ED0
_02224E36:
	cmp r0, #5
	beq _02224E4A
	b _02224ED0
_02224E3C:
	cmp r0, #0x1a
	bhi _02224E44
	beq _02224E92
	b _02224ED0
_02224E44:
	cmp r0, #0x20
	beq _02224EBE
	b _02224ED0
_02224E4A:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #1
	str r1, [r0, #0xc]
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldrb r0, [r4, #4]
	strb r0, [r5, #4]
	b _02224ED6
_02224E66:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	bl ov13_02224D00
	b _02224ED6
_02224E78:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #2
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0xd
_02224E84:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02224E84
	b _02224ED6
_02224E92:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1a
	bl ov13_02224D00
	b _02224ED6
_02224EA4:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #3
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0x10
_02224EB0:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02224EB0
	b _02224ED6
_02224EBE:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #3
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x20
	bl ov13_02224D00
	b _02224ED6
_02224ED0:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02224ED6:
	add r7, r7, #1
	add r6, #0x28
	add r5, #0x20
	cmp r7, #4
	blt _02224E04
	b _02224F14
_02224EE2:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #4
	ldr r4, _02224F34 ; =ov13_0224E144
	ldr r3, _02224F38 ; =ov13_0224E380
	str r1, [r0, #0xc]
	mov r2, #8
_02224EEE:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02224EEE
	b _02224F14
_02224EF8:
	ldr r0, _02224F28 ; =ov13_0224E0B0
	mov r1, #5
	ldr r4, _02224F34 ; =ov13_0224E144
	ldr r3, _02224F38 ; =ov13_0224E380
	str r1, [r0, #0xc]
	mov r2, #8
_02224F04:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _02224F04
	b _02224F14
_02224F0E:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_02224F14:
	ldr r0, [sp]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224F1C: .word ov13_0224E09C
_02224F20: .word ov13_0224E284
_02224F24: .word ov13_0224E2B0
_02224F28: .word ov13_0224E0B0
_02224F2C: .word ov13_0224E2E8
_02224F30: .word ov13_0224E0C4
_02224F34: .word ov13_0224E144
_02224F38: .word ov13_0224E380
	thumb_func_end ov13_02224DB4

	thumb_func_start ov13_02224F3C
ov13_02224F3C: ; 0x02224F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	sub r0, r4, #5
	str r0, [sp, #8]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #1
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	add r6, r4, #0
	str r1, [r0, #0x1c]
	b _022252EE
_02224F54:
	mov r0, #0x7d
	lsl r0, r0, #2
	bl OS_Sleep
	ldr r0, _02225284 ; =ov13_0224DF30
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	bls _02224F66
	b _022252EE
_02224F66:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224F72: ; jump table
	.short _022252EE - _02224F72 - 2 ; case 0
	.short _02224F88 - _02224F72 - 2 ; case 1
	.short _02224FA8 - _02224F72 - 2 ; case 2
	.short _02224FBE - _02224F72 - 2 ; case 3
	.short _0222500C - _02224F72 - 2 ; case 4
	.short _02225074 - _02224F72 - 2 ; case 5
	.short _02225098 - _02224F72 - 2 ; case 6
	.short _02225142 - _02224F72 - 2 ; case 7
	.short _0222519E - _02224F72 - 2 ; case 8
	.short _02225226 - _02224F72 - 2 ; case 9
	.short _022252C4 - _02224F72 - 2 ; case 10
_02224F88:
	bl ov13_02224330
	str r0, [sp, #8]
	cmp r0, #1
	beq _02224F96
	mov r6, #1
	b _022252EE
_02224F96:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #3
	str r1, [r0, #0x38]
	bl ov13_02226F3C
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #2
	str r1, [r0, #0x1c]
	b _022252EE
_02224FA8:
	bl ov13_02223FDC
	str r0, [sp, #8]
	cmp r0, #1
	beq _02224FB6
	mov r6, #1
	b _022252EE
_02224FB6:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #3
	str r1, [r0, #0x1c]
	b _022252EE
_02224FBE:
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl SOC_Socket
	add r4, r0, #0
	bpl _02224FD6
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022252EE
_02224FD6:
	add r5, sp, #0x24
	mov r1, #0
	str r1, [r5]
	str r1, [r5, #4]
	mov r3, #8
	add r2, sp, #0x10
	strb r3, [r2, #0x14]
	mov r3, #2
	strb r3, [r2, #0x15]
	ldr r3, _02225288 ; =0x000001E6
	strh r3, [r2, #0x16]
	str r1, [sp, #0x28]
	add r1, r5, #0
	bl SOC_Bind
	str r0, [sp, #8]
	cmp r0, #0
	bge _02225004
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022252EE
_02225004:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #4
	str r1, [r0, #0x1c]
	b _022252EE
_0222500C:
	bl ov13_02226CBC
	ldr r1, _0222528C ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _02225028
	add r0, r4, #0
	bl SOC_Close
	mov r0, #2
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022252EE
_02225028:
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xc]
	ldr r0, _02225290 ; =ov13_0224E3F0
	add r1, sp, #0x1c
	bl ov13_02224A30
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02225294 ; =ov13_0224EC64
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _02225126
	ldr r0, _02225294 ; =ov13_0224EC64
	ldr r1, _02225298 ; =ov13_0224DF80
	bl ov13_02224864
	cmp r0, #0
	beq _02225126
	bl ov13_02226CBC
	ldr r1, _0222529C ; =0x00007530
	add r1, r0, r1
	ldr r0, _0222528C ; =ov13_02245A58
	str r1, [r0, #0xc]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #5
	str r1, [r0, #0x1c]
	mov r1, #4
	str r1, [r0, #0x38]
	bl ov13_02226F3C
	b _022252EE
_02225074:
	ldr r0, _02225294 ; =ov13_0224EC64
	bl ov13_02224988
	add r3, r0, #0
	ldr r0, _02225284 ; =ov13_0224DF30
	ldr r2, _02225294 ; =ov13_0224EC64
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov13_02224618
	bl ov13_02226CBC
	str r0, [sp, #0xc]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #6
	str r1, [r0, #0x1c]
	b _022252EE
_02225098:
	bl ov13_02226CBC
	ldr r1, _0222528C ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _022250B4
	add r0, r4, #0
	bl SOC_Close
	mov r0, #3
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022252EE
_022250B4:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02225294 ; =ov13_0224EC64
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _02225128
	ldr r0, _02225294 ; =ov13_0224EC64
	ldr r2, _022252A0 ; =ov13_0224E464
	ldr r3, _02225290 ; =ov13_0224E3F0
	mov r1, #3
	bl ov13_02224938
	cmp r0, #0
	beq _02225128
	ldr r0, _022252A0 ; =ov13_0224E464
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov13_022246E4
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, _022252A4 ; =0x00000101
	cmp r1, r0
	bne _02225126
	bl ov13_02226CBC
	ldr r2, _022252A8 ; =ov13_0224E400
	str r0, [sp, #0x10]
	mov r1, #8
_022250F8:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022250F8
	ldr r0, _022252AC ; =ov13_0224E408
	add r1, sp, #0x10
	mov r2, #4
	bl ov13_02226C94
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #7
	str r1, [r0, #0x1c]
	mov r1, #5
	str r1, [r0, #0x38]
	ldr r0, _0222528C ; =ov13_02245A58
	sub r1, r1, #6
	str r1, [r0, #0xc]
	bl ov13_02226F3C
_02225126:
	b _022252EE
_02225128:
	bl ov13_02226CBC
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	bhs _0222513A
	b _022252EE
_0222513A:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #5
	str r1, [r0, #0x1c]
	b _022252EE
_02225142:
	ldr r0, _022252A0 ; =ov13_0224E464
	ldr r1, _022252B0 ; =0x00000102
	ldr r2, _022252AC ; =ov13_0224E408
	mov r3, #8
	bl ov13_0222483C
	ldr r3, _02225284 ; =ov13_0224DF30
	ldr r2, _022252A0 ; =ov13_0224E464
	str r0, [r3, #0x34]
	ldr r0, _02225290 ; =ov13_0224E3F0
	mov r1, #4
	str r0, [sp]
	ldr r0, _02225294 ; =ov13_0224EC64
	ldr r3, [r3, #0x34]
	bl ov13_02224718
	add r3, r0, #0
	ldr r0, _02225284 ; =ov13_0224DF30
	ldr r2, _02225294 ; =ov13_0224EC64
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov13_02224618
	bl ov13_02226CBC
	str r0, [sp, #0xc]
	mov r0, #0
	mov r5, #0x12
	ldr r7, _022252B4 ; =ov13_0224E184
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov ip, r5
_02225186:
	stmia r7!, {r0, r1, r2, r3}
	mov r5, ip
	sub r5, r5, #1
	stmia r7!, {r0, r1, r2, r3}
	mov ip, r5
	bne _02225186
	stmia r7!, {r0, r1, r2, r3}
	str r0, [r7]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #8
	str r1, [r0, #0x1c]
	b _022252EE
_0222519E:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _02225294 ; =ov13_0224EC64
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	bl SOC_RecvFrom
	cmp r0, #0
	ble _022251F4
	ldr r0, _02225294 ; =ov13_0224EC64
	ldr r2, _022252A0 ; =ov13_0224E464
	ldr r3, _022252A8 ; =ov13_0224E400
	mov r1, #5
	bl ov13_02224938
	ldr r1, _02225284 ; =ov13_0224DF30
	cmp r0, #0
	str r0, [r1, #0x34]
	beq _022251F4
	ldr r0, _022252A0 ; =ov13_0224E464
	bl ov13_02224B2C
	cmp r0, #0
	beq _022251F4
	ldr r1, _022252B8 ; =ov13_0224E270
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _022251E2
	mov r1, #1
	ldr r0, _02225284 ; =ov13_0224DF30
	b _022251E6
_022251E2:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #0
_022251E6:
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #9
	str r1, [r0, #0x1c]
	b _022252EE
_022251F4:
	bl ov13_02226CBC
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022252EE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _0222521E
	add r0, r4, #0
	bl SOC_Close
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _022252EE
_0222521E:
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #7
	str r1, [r0, #0x1c]
	b _022252EE
_02225226:
	ldr r0, _022252A0 ; =ov13_0224E464
	ldr r1, _022252BC ; =0x00000301
	ldr r2, _022252C0 ; =ov13_0224DF30
	mov r3, #1
	bl ov13_0222483C
	ldr r3, _02225284 ; =ov13_0224DF30
	ldr r2, _022252A0 ; =ov13_0224E464
	str r0, [r3, #0x34]
	ldr r0, _022252A8 ; =ov13_0224E400
	mov r1, #6
	str r0, [sp]
	ldr r0, _02225294 ; =ov13_0224EC64
	ldr r3, [r3, #0x34]
	bl ov13_02224718
	ldr r1, _02225284 ; =ov13_0224DF30
	str r0, [r1, #0x14]
	bl ov13_02223DE0
	cmp r0, #7
	beq _02225268
	bl ov13_02226CBC
	mov r1, #0xfa
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0xa
	ldr r1, _02225284 ; =ov13_0224DF30
	str r0, [sp, #4]
	str r0, [r1, #0x1c]
	b _022252EE
_02225268:
	ldr r3, _02225284 ; =ov13_0224DF30
	ldr r2, _02225294 ; =ov13_0224EC64
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl ov13_02224618
	bl ov13_02226CBC
	str r0, [sp, #0xc]
	ldr r0, _02225284 ; =ov13_0224DF30
	mov r1, #0xa
	str r1, [r0, #0x1c]
	b _022252EE
	.balign 4, 0
_02225284: .word ov13_0224DF30
_02225288: .word 0x000001E6
_0222528C: .word ov13_02245A58
_02225290: .word ov13_0224E3F0
_02225294: .word ov13_0224EC64
_02225298: .word ov13_0224DF80
_0222529C: .word 0x00007530
_022252A0: .word ov13_0224E464
_022252A4: .word 0x00000101
_022252A8: .word ov13_0224E400
_022252AC: .word ov13_0224E408
_022252B0: .word 0x00000102
_022252B4: .word ov13_0224E184
_022252B8: .word ov13_0224E270
_022252BC: .word 0x00000301
_022252C0: .word ov13_0224DF30
_022252C4:
	bl ov13_02226CBC
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _022252EE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _022252E8
	mov r6, #1
	bl ov13_02224DB4
	str r0, [sp, #8]
	b _022252EE
_022252E8:
	ldr r0, _0222531C ; =ov13_0224DF30
	mov r1, #9
	str r1, [r0, #0x1c]
_022252EE:
	cmp r6, #0
	bne _022252FC
	ldr r0, _0222531C ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _022252FC
	b _02224F54
_022252FC:
	cmp r4, #0
	beq _02225306
	add r0, r4, #0
	bl SOC_Close
_02225306:
	ldr r0, _0222531C ; =ov13_0224DF30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02225314
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
_02225314:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0222531C: .word ov13_0224DF30
	thumb_func_end ov13_02224F3C

	thumb_func_start ov13_02225320
ov13_02225320: ; 0x02225320
	push {r4, lr}
	bl ov13_02224F3C
	add r4, r0, #0
	ldr r0, _02225350 ; =ov13_0224DF30
	str r4, [r0, #0x78]
	bl ov13_02224100
	cmp r4, #1
	bne _0222533A
	mov r1, #6
	ldr r0, _02225350 ; =ov13_0224DF30
	b _0222533E
_0222533A:
	ldr r0, _02225350 ; =ov13_0224DF30
	mov r1, #7
_0222533E:
	str r1, [r0, #0x38]
	mov r1, #0
	ldr r0, _02225354 ; =ov13_02245A58
	mvn r1, r1
	str r1, [r0, #0xc]
	bl ov13_02226F3C
	pop {r4, pc}
	nop
_02225350: .word ov13_0224DF30
_02225354: .word ov13_02245A58
	thumb_func_end ov13_02225320

	thumb_func_start ov13_02225358
ov13_02225358: ; 0x02225358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _0222550C ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02225376
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _0222537C
_02225376:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222537C:
	lsr r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _0222538A
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222538A:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov13_02225710
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r5, #0
	add r0, #8
	add r2, r4, #0
	bl memcpy
	add r3, sp, #0x58
	add r2, sp, #0x48
	mov r1, #8
_022253A8:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _022253A8
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_022253BE:
	ldr r0, [sp, #0x14]
	mov r4, #1
	cmp r0, #1
	bge _022253C8
	b _022254E4
_022253C8:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ll_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022253E6:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	add r3, r5, #0
	add r2, sp, #0x60
	mov r1, #8
_022253F2:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022253F2
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov13_02225B58
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r3, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xff
	lsl r0, r0, #8
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #8
	lsr r2, r2, #0x18
	str r2, [sp, #0x34]
	orr r2, r6
	lsr r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r3
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r3
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r3
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r3, r7, #0
	orr r3, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r2, r0
	ldr r0, [sp, #0x30]
	orr r1, r0
	ldr r0, [sp, #0x2c]
	orr r2, r0
	ldr r0, [sp, #0x28]
	orr r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov13_022256C8
	add r2, sp, #0x60
	mov r1, #8
_022254D0:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022254D0
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	ble _022253E6
_022254E4:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _022254F0
	b _022253BE
_022254F0:
	add r3, sp, #0x58
	mov r2, #8
_022254F4:
	ldrb r1, [r3]
	ldr r0, [sp]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	str r0, [sp]
	sub r2, r2, #1
	bne _022254F4
	mov r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222550C: .word 0xA6A6A6A6
	thumb_func_end ov13_02225358

	thumb_func_start ov13_02225510
ov13_02225510: ; 0x02225510
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022256C4 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _02225532
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _02225538
_02225532:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225538:
	sub r0, r4, #1
	lsr r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _02225548
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02225548:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl ov13_022259C8
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	add r2, r5, #0
	mov r1, #8
_0222555A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0222555A
	add r5, #8
	ldr r0, [sp]
	add r1, r5, #0
	sub r2, r4, #1
	bl memcpy
	mov r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_0222557C:
	ldr r4, [sp, #0x14]
	add r0, r4, #0
	cmp r0, #0
	bgt _02225586
	b _022256A0
_02225586:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	bl _ll_mul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_022255A4:
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r5, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, r1, #0
	and r2, r0
	mov r0, #0
	add r3, r5, #0
	and r3, r0
	lsl r0, r2, #8
	lsr r3, r3, #0x18
	orr r3, r0
	lsr r0, r2, #0x18
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r5
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r5
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov ip, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r5
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r5
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r5
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r5, r7, #0
	orr r5, r0
	mov r0, ip
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r5
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r1, r0
	ldr r0, [sp, #0x30]
	orr r2, r0
	ldr r0, [sp, #0x2c]
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl ov13_022256C8
	sub r0, r4, #1
	lsl r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	add r5, r0, r1
	add r3, r5, #0
	mov r1, #8
_02225672:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02225672
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	add r3, r2, #0
	bl ov13_02225F14
	add r2, sp, #0x60
	mov r1, #8
_0222568E:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0222568E
	sub r4, r4, #1
	cmp r4, #0
	bgt _022255A4
_022256A0:
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	bmi _022256AA
	b _0222557C
_022256AA:
	add r0, sp, #0x48
	add r1, sp, #0x58
	mov r2, #8
	bl memcmp
	cmp r0, #0
	beq _022256BC
	mov r0, #0
	str r0, [sp, #0x1c]
_022256BC:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022256C4: .word 0xA6A6A6A6
	thumb_func_end ov13_02225510

	thumb_func_start ov13_022256C8
ov13_022256C8: ; 0x022256C8
	push {r3, r4}
	ldrb r4, [r0]
	ldrb r3, [r1]
	eor r3, r4
	strb r3, [r2]
	ldrb r4, [r0, #1]
	ldrb r3, [r1, #1]
	eor r3, r4
	strb r3, [r2, #1]
	ldrb r4, [r0, #2]
	ldrb r3, [r1, #2]
	eor r3, r4
	strb r3, [r2, #2]
	ldrb r4, [r0, #3]
	ldrb r3, [r1, #3]
	eor r3, r4
	strb r3, [r2, #3]
	ldrb r4, [r0, #4]
	ldrb r3, [r1, #4]
	eor r3, r4
	strb r3, [r2, #4]
	ldrb r4, [r0, #5]
	ldrb r3, [r1, #5]
	eor r3, r4
	strb r3, [r2, #5]
	ldrb r4, [r0, #6]
	ldrb r3, [r1, #6]
	eor r3, r4
	strb r3, [r2, #6]
	ldrb r3, [r0, #7]
	ldrb r0, [r1, #7]
	eor r0, r3
	strb r0, [r2, #7]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov13_022256C8

	thumb_func_start ov13_02225710
ov13_02225710: ; 0x02225710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r3, r1, #0
	add r1, r2, #0
	mov r2, #0
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrb r6, [r3, #1]
	ldrb r5, [r3, #3]
	lsl r4, r2, #8
	ldrb r2, [r3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0]
	ldrb r2, [r3, #6]
	ldrb r6, [r3, #5]
	ldrb r5, [r3, #7]
	lsl r4, r2, #8
	ldrb r2, [r3, #4]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #4]
	ldrb r2, [r3, #0xa]
	ldrb r6, [r3, #9]
	ldrb r5, [r3, #0xb]
	lsl r4, r2, #8
	ldrb r2, [r3, #8]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #8]
	ldrb r2, [r3, #0xe]
	ldrb r6, [r3, #0xd]
	ldrb r5, [r3, #0xf]
	lsl r4, r2, #8
	ldrb r2, [r3, #0xc]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0xc]
	cmp r1, #0x80
	bne _022257F4
	ldr r5, _022259C0 ; =ov13_02242688
	ldr r2, _022259C4 ; =ov13_022442B0
_0222577C:
	ldr r4, [r0, #0xc]
	ldr r3, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r6, #0
	and r7, r1
	ldr r1, [r0]
	str r1, [sp, #4]
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	lsr r4, r4, #8
	and r6, r1
	ldr r1, [sp, #4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	eor r1, r6
	ldr r6, [r2, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r6
	eor r1, r4
	add r4, r7, #0
	eor r4, r1
	ldr r1, [sp, #8]
	eor r1, r4
	eor r3, r1
	str r3, [r0, #0x10]
	ldr r1, [r0, #4]
	eor r3, r1
	str r3, [r0, #0x14]
	ldr r1, [r0, #8]
	eor r3, r1
	str r3, [r0, #0x18]
	ldr r1, [r0, #0xc]
	eor r1, r3
	str r1, [r0, #0x1c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #0xa
	blt _022257F0
	add sp, #0x18
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_022257F0:
	add r0, #0x10
	b _0222577C
_022257F4:
	ldrb r2, [r3, #0x12]
	ldrb r6, [r3, #0x11]
	ldrb r5, [r3, #0x13]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x10]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x10]
	ldrb r2, [r3, #0x16]
	ldrb r6, [r3, #0x15]
	ldrb r5, [r3, #0x17]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x14]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x14]
	cmp r1, #0xc0
	bne _022258B0
	ldr r5, _022259C0 ; =ov13_02242688
	ldr r3, _022259C4 ; =ov13_022442B0
_02225828:
	ldr r4, [r0, #0x14]
	ldr r6, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0]
	mov lr, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, lr
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x18]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x1c]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x24]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #8
	blt _0222589E
	add sp, #0x18
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0222589E:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x24]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0x14]
	eor r1, r2
	str r1, [r0, #0x2c]
	add r0, #0x18
	b _02225828
_022258B0:
	ldrb r2, [r3, #0x1a]
	ldrb r6, [r3, #0x19]
	ldrb r5, [r3, #0x1b]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x18]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x18]
	ldrb r2, [r3, #0x1e]
	ldrb r5, [r3, #0x1f]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x1c]
	ldrb r3, [r3, #0x1d]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x10
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x1c]
	mov r2, #1
	lsl r2, r2, #8
	cmp r1, r2
	bne _022259BA
	ldr r5, _022259C0 ; =ov13_02242688
	ldr r3, _022259C4 ; =ov13_022442B0
_022258E8:
	ldr r4, [r0, #0x1c]
	ldr r6, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0]
	mov ip, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, ip
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x24]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x2c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #7
	blt _0222595E
	add sp, #0x18
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0222595E:
	ldr r6, [r0, #0x2c]
	ldr r7, [r0, #0x10]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x16
	ldr r1, [r3, r1]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	str r1, [sp, #0x14]
	lsr r1, r6, #0x18
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	lsr r2, r6, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r6, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	eor r1, r7
	and r2, r6
	eor r2, r1
	ldr r1, [sp, #0x14]
	eor r1, r2
	add r2, r4, #0
	eor r2, r1
	str r2, [r0, #0x30]
	ldr r1, [r0, #0x14]
	eor r2, r1
	str r2, [r0, #0x34]
	ldr r1, [r0, #0x18]
	eor r2, r1
	str r2, [r0, #0x38]
	ldr r1, [r0, #0x1c]
	eor r1, r2
	str r1, [r0, #0x3c]
	add r0, #0x20
	b _022258E8
_022259BA:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022259C0: .word ov13_02242688
_022259C4: .word ov13_022442B0
	thumb_func_end ov13_02225710

	thumb_func_start ov13_022259C8
ov13_022259C8: ; 0x022259C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov13_02225710
	mov ip, r0
	mov r1, ip
	lsl r6, r1, #2
	mov r0, #0
	cmp r6, #0
	ble _02225A0E
	lsl r2, r6, #2
	add r1, r4, #0
	add r2, r4, r2
_022259E2:
	ldr r5, [r1]
	ldr r3, [r2]
	add r0, r0, #4
	str r3, [r1]
	str r5, [r2]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	sub r6, r6, #4
	str r3, [r1, #4]
	str r5, [r2, #4]
	ldr r5, [r1, #8]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	str r5, [r2, #8]
	ldr r5, [r1, #0xc]
	ldr r3, [r2, #0xc]
	str r3, [r1, #0xc]
	str r5, [r2, #0xc]
	add r1, #0x10
	sub r2, #0x10
	cmp r0, r6
	blt _022259E2
_02225A0E:
	mov r0, #1
	str r0, [sp]
	mov r0, ip
	cmp r0, #1
	bgt _02225A1A
	b _02225B3E
_02225A1A:
	ldr r2, _02225B44 ; =ov13_022442B0
	ldr r7, _02225B48 ; =ov13_02242AB0
_02225A1E:
	add r4, #0x10
	ldr r3, [r4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02225B4C ; =ov13_022426B0
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _02225B50 ; =ov13_022446B0
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02225B54 ; =ov13_02244AB0
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4]
	ldr r3, [r4, #4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02225B4C ; =ov13_022426B0
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _02225B50 ; =ov13_022446B0
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02225B54 ; =ov13_02244AB0
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02225B4C ; =ov13_022426B0
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _02225B50 ; =ov13_022446B0
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02225B54 ; =ov13_02244AB0
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #8]
	ldr r3, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _02225B4C ; =ov13_022426B0
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _02225B50 ; =ov13_022446B0
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _02225B54 ; =ov13_02244AB0
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0xc]
	ldr r0, [sp]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp]
	cmp r1, r0
	bge _02225B3E
	b _02225A1E
_02225B3E:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02225B44: .word ov13_022442B0
_02225B48: .word ov13_02242AB0
_02225B4C: .word ov13_022426B0
_02225B50: .word ov13_022446B0
_02225B54: .word ov13_02244AB0
	thumb_func_end ov13_022259C8

	thumb_func_start ov13_02225B58
ov13_02225B58: ; 0x02225B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r5, r2
	ldrb r2, [r1, #0xe]
	ldrb r4, [r1, #0xf]
	ldr r6, [r0, #0xc]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_02225BCA:
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F00 ; =ov13_02243EB0
	ldr r4, [r0, #0x10]
	ldr r3, [r1, r2]
	lsr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F04 ; =ov13_02243AB0
	ldr r1, [r1, r2]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02225F08 ; =ov13_022432B0
	ldr r7, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F0C ; =ov13_022436B0
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x40]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F00 ; =ov13_02243EB0
	ldr r3, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F04 ; =ov13_02243AB0
	ldr r1, [r1, r2]
	str r1, [sp, #0x48]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _02225F08 ; =ov13_022432B0
	ldr r7, [r1, r2]
	lsr r1, r5, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F0C ; =ov13_022436B0
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x48]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	ldr r4, [r0, #0x18]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F00 ; =ov13_02243EB0
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F04 ; =ov13_02243AB0
	ldr r1, [r1, r2]
	str r1, [sp, #0x14]
	lsr r1, r5, #0x18
	lsl r2, r1, #2
	ldr r1, _02225F08 ; =ov13_022432B0
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _02225F0C ; =ov13_022436B0
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x14]
	ldr r7, [r0, #0x1c]
	eor r1, r2
	eor r1, r3
	add r2, r4, #0
	eor r2, r1
	lsl r1, r5, #0x18
	lsr r3, r1, #0x16
	ldr r1, _02225F00 ; =ov13_02243EB0
	add r0, #0x20
	ldr r3, [r1, r3]
	ldr r1, [sp, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02225F04 ; =ov13_02243AB0
	ldr r1, [r1, r4]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _02225F08 ; =ov13_022432B0
	ldr r6, [r4, r5]
	ldr r4, [sp, #0xc]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _02225F0C ; =ov13_022436B0
	ldr r4, [r4, r5]
	eor r4, r6
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	eor r1, r7
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _02225D94
	lsl r3, r1, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02225F00 ; =ov13_02243EB0
	ldr r4, [r0]
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02225F04 ; =ov13_02243AB0
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02225F08 ; =ov13_022432B0
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02225F0C ; =ov13_022436B0
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _02225F00 ; =ov13_02243EB0
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02225F04 ; =ov13_02243AB0
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _02225F08 ; =ov13_022432B0
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	lsr r5, r2, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _02225F0C ; =ov13_022436B0
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r6, [r0, #8]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02225F00 ; =ov13_02243EB0
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02225F04 ; =ov13_02243AB0
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _02225F08 ; =ov13_022432B0
	lsl r2, r2, #0x18
	ldr r7, [r3, r4]
	lsr r3, r1, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02225F0C ; =ov13_022436B0
	lsr r1, r1, #0x18
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	eor r3, r4
	eor r3, r5
	add r5, r6, #0
	eor r5, r3
	lsr r3, r2, #0x16
	ldr r2, _02225F00 ; =ov13_02243EB0
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x44]
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x16
	ldr r2, _02225F04 ; =ov13_02243AB0
	ldr r2, [r2, r4]
	lsl r4, r1, #2
	ldr r1, _02225F08 ; =ov13_022432B0
	ldr r6, [r1, r4]
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _02225F0C ; =ov13_022436B0
	ldr r1, [r1, r4]
	eor r1, r6
	eor r1, r2
	eor r1, r3
	add r6, r7, #0
	eor r6, r1
	b _02225BCA
_02225D94:
	ldr r3, [r0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _02225F10 ; =ov13_022442B0
	lsl r6, r6, #0x10
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	ldr r4, [sp, #0x10]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r2, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r2, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	and r2, r0
	lsr r0, r1, #0x18
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r3, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x10
	and r1, r3
	eor r0, r1
	eor r0, r2
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02225F00: .word ov13_02243EB0
_02225F04: .word ov13_02243AB0
_02225F08: .word ov13_022432B0
_02225F0C: .word ov13_022436B0
_02225F10: .word ov13_022442B0
	thumb_func_end ov13_02225B58

	thumb_func_start ov13_02225F14
ov13_02225F14: ; 0x02225F14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #0x40]
	ldrb r2, [r1, #0xe]
	ldr r5, [r0, #0xc]
	ldrb r4, [r1, #0xf]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r6, r5, #0
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_02225F8A:
	ldr r1, [sp, #8]
	ldr r5, [r0, #0x10]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262BC ; =ov13_02242AB0
	ldr r4, [r1, r2]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262C0 ; =ov13_022426B0
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _022262C4 ; =ov13_022446B0
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262C8 ; =ov13_02244AB0
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x40]
	ldr r5, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262BC ; =ov13_02242AB0
	ldr r4, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262C0 ; =ov13_022426B0
	ldr r3, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _022262C4 ; =ov13_022446B0
	ldr r7, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262C8 ; =ov13_02244AB0
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x44]
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _022262BC ; =ov13_02242AB0
	ldr r3, [r0, #0x18]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _022262C0 ; =ov13_022426B0
	ldr r1, [r1, r4]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #0x18
	lsl r4, r1, #2
	ldr r1, _022262C4 ; =ov13_022446B0
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _022262C8 ; =ov13_02244AB0
	ldr r4, [r4, r5]
	eor r4, r1
	ldr r1, [sp, #0x14]
	eor r1, r4
	eor r1, r2
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x1c]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _022262BC ; =ov13_02242AB0
	add r0, #0x20
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _022262C0 ; =ov13_022426B0
	ldr r7, [r4, r5]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _022262C4 ; =ov13_022446B0
	ldr r6, [r4, r5]
	ldr r4, [sp, #0x40]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _022262C8 ; =ov13_02244AB0
	ldr r4, [r4, r5]
	eor r4, r6
	eor r4, r7
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _0222614E
	ldr r3, [sp, #0x44]
	ldr r4, [r0]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _022262BC ; =ov13_02242AB0
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _022262C0 ; =ov13_022426B0
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _022262C4 ; =ov13_022446B0
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	lsr r5, r1, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _022262C8 ; =ov13_02244AB0
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	lsl r3, r2, #0x18
	lsr r5, r3, #0x16
	ldr r3, _022262BC ; =ov13_02242AB0
	ldr r4, [r0, #4]
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _022262C0 ; =ov13_022426B0
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _022262C4 ; =ov13_022446B0
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _022262C8 ; =ov13_02244AB0
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _022262BC ; =ov13_02242AB0
	ldr r6, [r0, #8]
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r1, r1, #0x18
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _022262C0 ; =ov13_022426B0
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _022262C4 ; =ov13_022446B0
	lsr r2, r2, #0x10
	ldr r7, [r3, r4]
	ldr r3, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r3, r3, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _022262C8 ; =ov13_02244AB0
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	eor r3, r4
	eor r3, r5
	eor r3, r6
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x10]
	ldr r5, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _022262BC ; =ov13_02242AB0
	ldr r4, [r3, r4]
	ldr r3, [sp, #0x44]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r6, r3, #0x16
	ldr r3, _022262C0 ; =ov13_022426B0
	ldr r3, [r3, r6]
	lsl r6, r1, #2
	ldr r1, _022262C4 ; =ov13_022446B0
	ldr r1, [r1, r6]
	lsr r6, r2, #0x16
	ldr r2, _022262C8 ; =ov13_02244AB0
	ldr r2, [r2, r6]
	add r6, r5, #0
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	b _02225F8A
_0222614E:
	ldr r3, [r0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x44]
	lsl r6, r6, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _022262CC ; =ov13_02242EB0
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	lsl r4, r2, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	lsl r4, r1, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov ip, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, ip
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	ldr r0, [sp, #0x10]
	lsr r2, r2, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r6, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r1, r1, #2
	and r0, r6
	mov r6, #0xff
	lsr r2, r2, #0x16
	ldr r1, [r3, r1]
	ldr r3, [r3, r2]
	mov r2, #0xff
	lsl r6, r6, #0x18
	lsl r2, r2, #0x10
	and r1, r6
	and r2, r3
	eor r1, r2
	eor r0, r1
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022262BC: .word ov13_02242AB0
_022262C0: .word ov13_022426B0
_022262C4: .word ov13_022446B0
_022262C8: .word ov13_02244AB0
_022262CC: .word ov13_02242EB0
	thumb_func_end ov13_02225F14

