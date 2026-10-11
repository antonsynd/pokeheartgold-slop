	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237B54
	.public ov72_02237B74
	.public ov72_02237C30
	.public ov72_02238680
	.public ov72_022398BC
	.public ov72_022399CC
	.public ov72_02239A08
	.public ov72_02239A3C
	.public ov72_02239A88
	.public ov72_02239B5C
	.public ov72_02239B98
	.public ov72_0223A350
	.public ov72_0223A420
	.public ov72_0223A444

	.text

	thumb_func_start ov72_022398BC
ov72_022398BC: ; 0x022398BC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _022399AA
	bl ov72_02237B74
	ldr r1, _022399C8 ; =0x00000FD4
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _022399C0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022398E6: ; jump table
	.short _02239986 - _022398E6 - 2 ; case 0
	.short _02239976 - _022398E6 - 2 ; case 1
	.short _02239996 - _022398E6 - 2 ; case 2
	.short _02239966 - _022398E6 - 2 ; case 3
	.short _02239966 - _022398E6 - 2 ; case 4
	.short _02239956 - _022398E6 - 2 ; case 5
	.short _02239946 - _022398E6 - 2 ; case 6
	.short _022398F6 - _022398E6 - 2 ; case 7
_022398F6:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x90
	add r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, #0xa0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D7C0
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x13
	bl ov72_02238680
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov00_021ECB94
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x94
	add r4, #0x9c
	ldr r1, [r1]
	ldr r2, [r4]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D678
	b _022399C0
_02239946:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _022399C0
_02239956:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _022399C0
_02239966:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _022399C0
_02239976:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _022399C0
_02239986:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _022399C0
_02239996:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _022399C0
_022399AA:
	ldr r0, _022399C8 ; =0x00000FD4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022399C0
	bl sub_020399EC
_022399C0:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_022399C8: .word 0x00000FD4
	thumb_func_end ov72_022398BC

	thumb_func_start ov72_022399CC
ov72_022399CC: ; 0x022399CC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239A00 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239A04 ; =0x00000BD4
	mov r2, #3
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov72_02238680
	add r0, r4, #0
	bl ov72_0223A444
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239A00: .word 0x00000F0F
_02239A04: .word 0x00000BD4
	thumb_func_end ov72_022399CC

	thumb_func_start ov72_02239A08
ov72_02239A08: ; 0x02239A08
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239A34 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239A38 ; =0x00000BD4
	mov r2, #7
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1a
	bl ov72_02238680
	add r0, r4, #0
	bl ov72_0223A420
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02239A34: .word 0x00000F0F
_02239A38: .word 0x00000BD4
	thumb_func_end ov72_02239A08

	thumb_func_start ov72_02239A3C
ov72_02239A3C: ; 0x02239A3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0202D568
	add r4, r0, #0
	ldr r0, [r5]
	add r1, sp, #0
	ldr r0, [r0, #4]
	bl sub_0202D7F0
	ldr r0, [r5]
	ldr r2, _02239A80 ; =0x00000AD8
	ldr r0, [r0, #0xc]
	mov r1, #1
	add r2, r5, r2
	bl sub_02069528
	add r1, sp, #0
	ldrb r0, [r1]
	ldr r3, _02239A80 ; =0x00000AD8
	ldrb r1, [r1, #1]
	add r2, r4, #0
	add r3, r5, r3
	bl ov72_02237C30
	mov r0, #0x1b
	str r0, [r5, #0x1c]
	ldr r0, _02239A84 ; =0x00000FD4
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02239A80: .word 0x00000AD8
_02239A84: .word 0x00000FD4
	thumb_func_end ov72_02239A3C

	thumb_func_start ov72_02239A88
ov72_02239A88: ; 0x02239A88
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _02239B3C
	bl ov72_02237B74
	ldr r1, _02239B58 ; =0x00000FD4
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _02239B52
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02239AB0: ; jump table
	.short _02239B18 - _02239AB0 - 2 ; case 0
	.short _02239B08 - _02239AB0 - 2 ; case 1
	.short _02239B28 - _02239AB0 - 2 ; case 2
	.short _02239B18 - _02239AB0 - 2 ; case 3
	.short _02239AF8 - _02239AB0 - 2 ; case 4
	.short _02239AE8 - _02239AB0 - 2 ; case 5
	.short _02239AD8 - _02239AB0 - 2 ; case 6
	.short _02239AC0 - _02239AB0 - 2 ; case 7
_02239AC0:
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0]
	mov r2, #2
	bl sub_0202D5DC
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x1c
	bl ov72_02238680
	b _02239B52
_02239AD8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239B52
_02239AE8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239B52
_02239AF8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239B52
_02239B08:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239B52
_02239B18:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239B52
_02239B28:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _02239B52
_02239B3C:
	ldr r0, _02239B58 ; =0x00000FD4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02239B52
	bl sub_020399EC
_02239B52:
	mov r0, #3
	pop {r4, pc}
	nop
_02239B58: .word 0x00000FD4
	thumb_func_end ov72_02239A88

	thumb_func_start ov72_02239B5C
ov72_02239B5C: ; 0x02239B5C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239B90 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239B94 ; =0x00000BD4
	mov r2, #8
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov72_02238680
	add r0, r4, #0
	bl ov72_0223A444
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239B90: .word 0x00000F0F
_02239B94: .word 0x00000BD4
	thumb_func_end ov72_02239B5C

	thumb_func_start ov72_02239B98
ov72_02239B98: ; 0x02239B98
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239BC0 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239BC4 ; =0x00000BD4
	mov r2, #5
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1e
	bl ov72_02238680
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239BC0: .word 0x00000F0F
_02239BC4: .word 0x00000BD4
	thumb_func_end ov72_02239B98

