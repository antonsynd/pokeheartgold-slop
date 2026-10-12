#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBCD8
	.extern ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EC440
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBCD8
ov112_021EBCD8: ; 0x021EBCD8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ov112_021E9888
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EBD00
	add r0, r4, #0
	add r2, r1, #2
	mov r3, #6
	bl ov112_021EC440
	ldr r0, _021EBD8C ; =0x000005DD
	bl PlaySE
	mov r0, #0x21
	pop {r4, pc}
_021EBD00:
	ldr r0, _021EBD90 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021EBD28
	ldr r0, _021EBD94 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EBD18
	ldr r0, _021EBD98 ; =0x000005DC
	bl PlaySE
_021EBD18:
	add r0, r4, #0
	mov r1, #2
	bl ov112_021EA51C
	ldr r0, _021EBD94 ; =0x0001EC50
	mov r1, #0
	str r1, [r4, r0]
	b _021EBD86
_021EBD28:
	mov r1, #0x80
	tst r1, r0
	beq _021EBD4C
	ldr r0, _021EBD94 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _021EBD3C
	ldr r0, _021EBD98 ; =0x000005DC
	bl PlaySE
_021EBD3C:
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EA51C
	ldr r0, _021EBD94 ; =0x0001EC50
	mov r1, #1
	str r1, [r4, r0]
	b _021EBD86
_021EBD4C:
	mov r1, #1
	tst r1, r0
	beq _021EBD6A
	ldr r0, _021EBD8C ; =0x000005DD
	bl PlaySE
	ldr r0, _021EBD94 ; =0x0001EC50
	mov r3, #6
	ldr r1, [r4, r0]
	add r0, r4, #0
	add r2, r1, #2
	bl ov112_021EC440
	mov r0, #0x21
	pop {r4, pc}
_021EBD6A:
	mov r1, #2
	tst r0, r1
	beq _021EBD86
	ldr r0, _021EBD98 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #6
	bl ov112_021EC440
	mov r0, #0x21
	pop {r4, pc}
_021EBD86:
	mov r0, #5
	pop {r4, pc}
	nop
_021EBD8C: .word 0x000005DD
_021EBD90: .word gSystem
_021EBD94: .word 0x0001EC50
_021EBD98: .word 0x000005DC
	thumb_func_end ov112_021EBCD8

