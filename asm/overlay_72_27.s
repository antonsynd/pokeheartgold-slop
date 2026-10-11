	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237B54
	.public ov72_02237B74
	.public ov72_02238680
	.public ov72_022393CC
	.public ov72_0223A444

	.text

	thumb_func_start ov72_022393CC
ov72_022393CC: ; 0x022393CC
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _02239484
	bl ov72_02237B74
	ldr r1, _022394A0 ; =0x00000FD4
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #9
	bhi _02239478
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022393F4: ; jump table
	.short _02239458 - _022393F4 - 2 ; case 0
	.short _02239468 - _022393F4 - 2 ; case 1
	.short _02239478 - _022393F4 - 2 ; case 2
	.short _02239458 - _022393F4 - 2 ; case 3
	.short _02239478 - _022393F4 - 2 ; case 4
	.short _02239468 - _022393F4 - 2 ; case 5
	.short _02239448 - _022393F4 - 2 ; case 6
	.short _02239408 - _022393F4 - 2 ; case 7
	.short _02239438 - _022393F4 - 2 ; case 8
	.short _02239448 - _022393F4 - 2 ; case 9
_02239408:
	add r0, r4, #0
	bl ov72_0223A444
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _02239420
	cmp r0, #1
	beq _0223942C
	cmp r0, #2
	beq _02239432
	b _0223949A
_02239420:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov72_02238680
	b _0223949A
_0223942C:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _0223949A
_02239432:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223949A
_02239438:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _0223949A
_02239448:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _0223949A
_02239458:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _0223949A
_02239468:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	b _0223949A
_02239478:
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _0223949A
_02239484:
	ldr r0, _022394A0 ; =0x00000FD4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223949A
	bl sub_020399EC
_0223949A:
	mov r0, #3
	pop {r4, pc}
	nop
_022394A0: .word 0x00000FD4
	thumb_func_end ov72_022393CC

