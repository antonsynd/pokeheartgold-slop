	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022398BC
	.extern ov72_02237B54
	.extern ov72_02237B74
	.extern ov72_02238680
	.extern ov72_0223A444

	.text

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

