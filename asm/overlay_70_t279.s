#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022405B4
	.extern ov70_02237F38
	.extern ov70_02237F58

	.text

	.text
	thumb_func_start ov70_022405B4
ov70_022405B4: ; 0x022405B4
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0224061C
	bl ov70_02237F58
	ldr r1, _02240638 ; =0x00001604
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _02240632
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022405DE: ; jump table
	.short _0224060E - _022405DE - 2 ; case 0
	.short _0224060E - _022405DE - 2 ; case 1
	.short _02240616 - _022405DE - 2 ; case 2
	.short _0224060C - _022405DE - 2 ; case 3
	.short _02240632 - _022405DE - 2 ; case 4
	.short _02240632 - _022405DE - 2 ; case 5
	.short _02240632 - _022405DE - 2 ; case 6
	.short _02240632 - _022405DE - 2 ; case 7
	.short _02240632 - _022405DE - 2 ; case 8
	.short _02240632 - _022405DE - 2 ; case 9
	.short _02240632 - _022405DE - 2 ; case 10
	.short _0224060C - _022405DE - 2 ; case 11
	.short _02240604 - _022405DE - 2 ; case 12
	.short _0224060E - _022405DE - 2 ; case 13
	.short _02240632 - _022405DE - 2 ; case 14
	.short _022405FE - _022405DE - 2 ; case 15
_022405FE:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _02240632
_02240604:
	mov r0, #3
	bl sub_02039AD8
	b _02240632
_0224060C:
	str r0, [r4, #0x3c]
_0224060E:
	mov r0, #4
	bl sub_02039AD8
	b _02240632
_02240616:
	bl sub_020399EC
	b _02240632
_0224061C:
	ldr r0, _02240638 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02240632
	bl sub_020399EC
_02240632:
	mov r0, #3
	pop {r4, pc}
	nop
_02240638: .word 0x00001604
	thumb_func_end ov70_022405B4

