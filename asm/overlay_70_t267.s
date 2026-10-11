#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022400BC
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_02240500
	.extern ov70_022409C0
	.extern ov70_02240B9C
	.extern ov70_02240CE4

	.text

	.text
	thumb_func_start ov70_022400BC
ov70_022400BC: ; 0x022400BC
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0224015E
	bl ov70_02237F58
	ldr r2, _02240178 ; =0x00001604
	mov r1, #0
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xf
	cmp r2, #0xf
	bhi _02240174
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022400E6: ; jump table
	.short _02240150 - _022400E6 - 2 ; case 0
	.short _02240150 - _022400E6 - 2 ; case 1
	.short _02240158 - _022400E6 - 2 ; case 2
	.short _02240148 - _022400E6 - 2 ; case 3
	.short _02240140 - _022400E6 - 2 ; case 4
	.short _02240140 - _022400E6 - 2 ; case 5
	.short _02240140 - _022400E6 - 2 ; case 6
	.short _02240140 - _022400E6 - 2 ; case 7
	.short _02240140 - _022400E6 - 2 ; case 8
	.short _02240140 - _022400E6 - 2 ; case 9
	.short _02240138 - _022400E6 - 2 ; case 10
	.short _02240174 - _022400E6 - 2 ; case 11
	.short _02240174 - _022400E6 - 2 ; case 12
	.short _02240150 - _022400E6 - 2 ; case 13
	.short _02240174 - _022400E6 - 2 ; case 14
	.short _02240106 - _022400E6 - 2 ; case 15
_02240106:
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov70_022409C0
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r1, _0224017C ; =0x00000A5C
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	bl ov70_02240B9C
	ldr r0, [r4]
	ldr r1, _0224017C ; =0x00000A5C
	ldr r0, [r0, #0x18]
	add r1, r4, r1
	bl ov70_02240CE4
	ldr r1, _0224017C ; =0x00000A5C
	add r0, r4, #0
	add r1, r4, r1
	bl ov70_02240500
	b _02240174
_02240138:
	str r0, [r4, #0x3c]
	mov r0, #0x11
	str r0, [r4, #0x2c]
	b _02240174
_02240140:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _02240174
_02240148:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _02240174
_02240150:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _02240174
_02240158:
	bl sub_020399EC
	b _02240174
_0224015E:
	ldr r0, _02240178 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02240174
	bl sub_020399EC
_02240174:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02240178: .word 0x00001604
_0224017C: .word 0x00000A5C
	thumb_func_end ov70_022400BC

