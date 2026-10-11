#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_02238F80
	.public ov70_02244A68

	.text

	thumb_func_start ov70_02244A68
ov70_02244A68: ; 0x02244A68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _02244B02
	bl ov70_02237F58
	add r5, r0, #0
	ldr r0, _02244B1C ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _02244AF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244A94: ; jump table
	.short _02244ADA - _02244A94 - 2 ; case 0
	.short _02244AE8 - _02244A94 - 2 ; case 1
	.short _02244AF6 - _02244A94 - 2 ; case 2
	.short _02244ADA - _02244A94 - 2 ; case 3
	.short _02244AF6 - _02244A94 - 2 ; case 4
	.short _02244AF6 - _02244A94 - 2 ; case 5
	.short _02244AF6 - _02244A94 - 2 ; case 6
	.short _02244AF6 - _02244A94 - 2 ; case 7
	.short _02244AF6 - _02244A94 - 2 ; case 8
	.short _02244AF6 - _02244A94 - 2 ; case 9
	.short _02244AF6 - _02244A94 - 2 ; case 10
	.short _02244AF6 - _02244A94 - 2 ; case 11
	.short _02244AF6 - _02244A94 - 2 ; case 12
	.short _02244AE8 - _02244A94 - 2 ; case 13
	.short _02244ACC - _02244A94 - 2 ; case 14
	.short _02244AB8 - _02244A94 - 2 ; case 15
	.short _02244ABE - _02244A94 - 2 ; case 16
	.short _02244ACC - _02244A94 - 2 ; case 17
_02244AB8:
	mov r0, #9
	str r0, [r4, #0x2c]
	b _02244B18
_02244ABE:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244B18
_02244ACC:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244B18
_02244ADA:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244B18
_02244AE8:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244B18
_02244AF6:
	add r0, r4, #0
	bl ov70_02238F80
	bl sub_020399EC
	b _02244B18
_02244B02:
	ldr r0, _02244B1C ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02244B18
	bl sub_020399EC
_02244B18:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244B1C: .word 0x00001604
	thumb_func_end ov70_02244A68

