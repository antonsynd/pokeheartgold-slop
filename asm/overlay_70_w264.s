#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223FF10
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_02240A7C

	.text

	.text
	thumb_func_start ov70_0223FF10
ov70_0223FF10: ; 0x0223FF10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0223FFA8
	bl ov70_02237F58
	ldr r1, _0223FFC4 ; =0x00001604
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _0223FFBE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FF3A: ; jump table
	.short _0223FF9A - _0223FF3A - 2 ; case 0
	.short _0223FF9A - _0223FF3A - 2 ; case 1
	.short _0223FFA2 - _0223FF3A - 2 ; case 2
	.short _0223FF92 - _0223FF3A - 2 ; case 3
	.short _0223FFBE - _0223FF3A - 2 ; case 4
	.short _0223FFBE - _0223FF3A - 2 ; case 5
	.short _0223FFBE - _0223FF3A - 2 ; case 6
	.short _0223FFBE - _0223FF3A - 2 ; case 7
	.short _0223FFBE - _0223FF3A - 2 ; case 8
	.short _0223FFBE - _0223FF3A - 2 ; case 9
	.short _0223FFBE - _0223FF3A - 2 ; case 10
	.short _0223FF8C - _0223FF3A - 2 ; case 11
	.short _0223FF86 - _0223FF3A - 2 ; case 12
	.short _0223FF9A - _0223FF3A - 2 ; case 13
	.short _0223FFBE - _0223FF3A - 2 ; case 14
	.short _0223FF5A - _0223FF3A - 2 ; case 15
_0223FF5A:
	ldr r0, _0223FFC8 ; =0x0000025D
	ldrsb r5, [r4, r0]
	cmp r5, #0
	beq _0223FF68
	mov r0, #0x18
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FF68:
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0202DBA0
	mov r1, #0x4f
	lsl r1, r1, #2
	add r2, r0, #0
	add r0, r4, #0
	add r1, r4, r1
	add r3, r5, #0
	bl ov70_02240A7C
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FF86:
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FF8C:
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FF92:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FF9A:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0223FFBE
_0223FFA2:
	bl sub_020399EC
	b _0223FFBE
_0223FFA8:
	ldr r0, _0223FFC4 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223FFBE
	bl sub_020399EC
_0223FFBE:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_0223FFC4: .word 0x00001604
_0223FFC8: .word 0x0000025D
	thumb_func_end ov70_0223FF10

