#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_0223FFE8

	.text

	thumb_func_start ov70_0223FFE8
ov70_0223FFE8: ; 0x0223FFE8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0224004C
	bl ov70_02237F58
	ldr r1, _02240068 ; =0x00001604
	mov r2, #0
	add r0, #0xf
	str r2, [r4, r1]
	cmp r0, #0xf
	bhi _02240062
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240010: ; jump table
	.short _0224003E - _02240010 - 2 ; case 0
	.short _0224003E - _02240010 - 2 ; case 1
	.short _02240046 - _02240010 - 2 ; case 2
	.short _0224003E - _02240010 - 2 ; case 3
	.short _02240062 - _02240010 - 2 ; case 4
	.short _02240062 - _02240010 - 2 ; case 5
	.short _02240062 - _02240010 - 2 ; case 6
	.short _02240062 - _02240010 - 2 ; case 7
	.short _02240062 - _02240010 - 2 ; case 8
	.short _02240062 - _02240010 - 2 ; case 9
	.short _02240036 - _02240010 - 2 ; case 10
	.short _02240036 - _02240010 - 2 ; case 11
	.short _02240036 - _02240010 - 2 ; case 12
	.short _0224003E - _02240010 - 2 ; case 13
	.short _02240062 - _02240010 - 2 ; case 14
	.short _02240030 - _02240010 - 2 ; case 15
_02240030:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _02240062
_02240036:
	mov r0, #3
	bl sub_02039AD8
	b _02240062
_0224003E:
	mov r0, #4
	bl sub_02039AD8
	b _02240062
_02240046:
	bl sub_020399EC
	b _02240062
_0224004C:
	ldr r0, _02240068 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02240062
	bl sub_020399EC
_02240062:
	mov r0, #3
	pop {r4, pc}
	nop
_02240068: .word 0x00001604
	thumb_func_end ov70_0223FFE8

