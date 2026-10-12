#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB28C
	.extern ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EB90C
	.extern ov112_021EB950
	.extern ov112_021EB9C0
	.extern ov112_021EB9E4
	.extern ov112_021EC440
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB28C
ov112_021EB28C: ; 0x021EB28C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ov112_021E9888
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EB2B4
	add r0, r4, #0
	add r2, r1, #2
	mov r3, #9
	bl ov112_021EC440
	ldr r0, _021EB378 ; =0x000005DD
	bl PlaySE
	mov r0, #0x19
	pop {r4, pc}
_021EB2B4:
	ldr r0, _021EB37C ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021EB2DC
	ldr r0, _021EB380 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EB2CC
	ldr r0, _021EB384 ; =0x000005DC
	bl PlaySE
_021EB2CC:
	add r0, r4, #0
	mov r1, #2
	bl ov112_021EA51C
	ldr r0, _021EB380 ; =0x0001EC50
	mov r1, #0
	str r1, [r4, r0]
	b _021EB372
_021EB2DC:
	mov r1, #0x80
	tst r1, r0
	beq _021EB300
	ldr r0, _021EB380 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _021EB2F0
	ldr r0, _021EB384 ; =0x000005DC
	bl PlaySE
_021EB2F0:
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EA51C
	ldr r0, _021EB380 ; =0x0001EC50
	mov r1, #1
	str r1, [r4, r0]
	b _021EB372
_021EB300:
	mov r1, #1
	tst r1, r0
	beq _021EB31E
	ldr r0, _021EB378 ; =0x000005DD
	bl PlaySE
	ldr r0, _021EB380 ; =0x0001EC50
	mov r3, #9
	ldr r1, [r4, r0]
	add r0, r4, #0
	add r2, r1, #2
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB31E:
	mov r1, #2
	tst r0, r1
	beq _021EB33A
	ldr r0, _021EB378 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #9
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB33A:
	bl ov112_021EB9C0
	cmp r0, #0
	beq _021EB354
	ldr r0, _021EB384 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EB90C
	mov r0, #0x1a
	pop {r4, pc}
_021EB354:
	bl ov112_021EB9E4
	cmp r0, #0
	beq _021EB372
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EB950
	cmp r0, #0
	beq _021EB372
	ldr r0, _021EB384 ; =0x000005DC
	bl PlaySE
	mov r0, #0x1a
	pop {r4, pc}
_021EB372:
	mov r0, #8
	pop {r4, pc}
	nop
_021EB378: .word 0x000005DD
_021EB37C: .word gSystem
_021EB380: .word 0x0001EC50
_021EB384: .word 0x000005DC
	thumb_func_end ov112_021EB28C

