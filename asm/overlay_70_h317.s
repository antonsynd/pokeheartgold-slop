#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223FD98
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_022409C0

	.text

	.text
	thumb_func_start ov70_0223FD98
ov70_0223FD98: ; 0x0223FD98
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0223FE20
	bl ov70_02237F58
	ldr r1, _0223FE3C ; =0x00001604
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _0223FE36
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FDC2: ; jump table
	.short _0223FE12 - _0223FDC2 - 2 ; case 0
	.short _0223FE12 - _0223FDC2 - 2 ; case 1
	.short _0223FE1A - _0223FDC2 - 2 ; case 2
	.short _0223FE0A - _0223FDC2 - 2 ; case 3
	.short _0223FE02 - _0223FDC2 - 2 ; case 4
	.short _0223FE02 - _0223FDC2 - 2 ; case 5
	.short _0223FE02 - _0223FDC2 - 2 ; case 6
	.short _0223FE02 - _0223FDC2 - 2 ; case 7
	.short _0223FE02 - _0223FDC2 - 2 ; case 8
	.short _0223FE02 - _0223FDC2 - 2 ; case 9
	.short _0223FE02 - _0223FDC2 - 2 ; case 10
	.short _0223FE0A - _0223FDC2 - 2 ; case 11
	.short _0223FE36 - _0223FDC2 - 2 ; case 12
	.short _0223FE12 - _0223FDC2 - 2 ; case 13
	.short _0223FDFA - _0223FDC2 - 2 ; case 14
	.short _0223FDE2 - _0223FDC2 - 2 ; case 15
_0223FDE2:
	add r0, r4, #0
	mov r1, #1
	bl ov70_022409C0
	ldr r0, [r4]
	mov r1, #0x2d ; GAME_STAT_UNK45
	ldr r0, [r0, #0x28]
	bl GameStats_Inc
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	b _0223FE36
_0223FDFA:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0223FE36
_0223FE02:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _0223FE36
_0223FE0A:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _0223FE36
_0223FE12:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _0223FE36
_0223FE1A:
	bl sub_020399EC
	b _0223FE36
_0223FE20:
	ldr r0, _0223FE3C ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223FE36
	bl sub_020399EC
_0223FE36:
	mov r0, #3
	pop {r4, pc}
	nop
_0223FE3C: .word 0x00001604
	thumb_func_end ov70_0223FD98

