#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_0223FE60

	.text

	thumb_func_start ov70_0223FE60
ov70_0223FE60: ; 0x0223FE60
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0223FEC6
	bl ov70_02237F58
	ldr r1, _0223FEE0 ; =0x00001604
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0xf
	bhi _0223FEDC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FE8A: ; jump table
	.short _0223FEB8 - _0223FE8A - 2 ; case 0
	.short _0223FEB8 - _0223FE8A - 2 ; case 1
	.short _0223FEC0 - _0223FE8A - 2 ; case 2
	.short _0223FEB0 - _0223FE8A - 2 ; case 3
	.short _0223FEDC - _0223FE8A - 2 ; case 4
	.short _0223FEDC - _0223FE8A - 2 ; case 5
	.short _0223FEDC - _0223FE8A - 2 ; case 6
	.short _0223FEDC - _0223FE8A - 2 ; case 7
	.short _0223FEDC - _0223FE8A - 2 ; case 8
	.short _0223FEDC - _0223FE8A - 2 ; case 9
	.short _0223FEB8 - _0223FE8A - 2 ; case 10
	.short _0223FEB0 - _0223FE8A - 2 ; case 11
	.short _0223FEB8 - _0223FE8A - 2 ; case 12
	.short _0223FEB8 - _0223FE8A - 2 ; case 13
	.short _0223FEB8 - _0223FE8A - 2 ; case 14
	.short _0223FEAA - _0223FE8A - 2 ; case 15
_0223FEAA:
	mov r0, #0x21
	str r0, [r4, #0x2c]
	b _0223FEDC
_0223FEB0:
	str r0, [r4, #0x3c]
	mov r0, #0x27
	str r0, [r4, #0x2c]
	b _0223FEDC
_0223FEB8:
	mov r0, #4
	bl sub_02039AD8
	b _0223FEDC
_0223FEC0:
	bl sub_020399EC
	b _0223FEDC
_0223FEC6:
	ldr r0, _0223FEE0 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _0223FEDC
	bl sub_020399EC
_0223FEDC:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0223FEE0: .word 0x00001604
	thumb_func_end ov70_0223FE60

