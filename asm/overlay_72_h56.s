	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022394D8
	.extern ov72_02237B54
	.extern ov72_02237B74
	.extern ov72_02238680
	.extern ov72_0223A444

	.text

	.text
	thumb_func_start ov72_022394D8
ov72_022394D8: ; 0x022394D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	bne _022394E6
	b _022395EE
_022394E6:
	bl ov72_02237B74
	add r5, r0, #0
	ldr r0, _02239608 ; =0x00000FD4
	mov r1, #0
	str r1, [r4, r0]
	add r1, r5, #7
	cmp r1, #9
	bhi _022395E2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239504: ; jump table
	.short _022395C2 - _02239504 - 2 ; case 0
	.short _022395D2 - _02239504 - 2 ; case 1
	.short _022395E2 - _02239504 - 2 ; case 2
	.short _022395C2 - _02239504 - 2 ; case 3
	.short _022395E2 - _02239504 - 2 ; case 4
	.short _022395D2 - _02239504 - 2 ; case 5
	.short _022395B2 - _02239504 - 2 ; case 6
	.short _02239518 - _02239504 - 2 ; case 7
	.short _022395A2 - _02239504 - 2 ; case 8
	.short _022395B2 - _02239504 - 2 ; case 9
_02239518:
	add r0, r4, #0
	bl ov72_0223A444
	ldr r0, _0223960C ; =0x00000FC8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02239530
	cmp r1, #1
	beq _02239586
	cmp r1, #2
	beq _02239586
	b _02239596
_02239530:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _02239604
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239544: ; jump table
	.short _0223954C - _02239544 - 2 ; case 0
	.short _02239576 - _02239544 - 2 ; case 1
	.short _02239576 - _02239544 - 2 ; case 2
	.short _02239576 - _02239544 - 2 ; case 3
_0223954C:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0223955E
	cmp r0, #1
	beq _0223956A
	cmp r0, #2
	beq _02239570
	b _02239604
_0223955E:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov72_02238680
	b _02239604
_0223956A:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _02239604
_02239570:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _02239604
_02239576:
	sub r0, #0x6c
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_02239586:
	ldr r0, _02239610 ; =0x00000F5C
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_02239596:
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _02239604
_022395A2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_022395B2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_022395C2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_022395D2:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _02239604
_022395E2:
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _02239604
_022395EE:
	ldr r0, _02239608 ; =0x00000FD4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02239604
	bl sub_020399EC
_02239604:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02239608: .word 0x00000FD4
_0223960C: .word 0x00000FC8
_02239610: .word 0x00000F5C
	thumb_func_end ov72_022394D8

