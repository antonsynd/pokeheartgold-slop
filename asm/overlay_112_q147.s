#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB44C
	.extern ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EB90C
	.extern ov112_021EB950
	.extern ov112_021EB9C0
	.extern ov112_021EB9E4
	.extern ov112_021EC440
	.extern ov112_021FF090
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB44C
ov112_021EB44C: ; 0x021EB44C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl ov112_021E9888
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EB478
	ldr r2, _021EB554 ; =ov112_021FF090
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	mov r3, #0xe
	bl ov112_021EC440
	ldr r0, _021EB558 ; =0x000005DD
	bl PlaySE
	mov r0, #0x19
	pop {r4, pc}
_021EB478:
	ldr r0, _021EB55C ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021EB4AA
	ldr r0, _021EB560 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EB498
	ldr r0, _021EB564 ; =0x000005DC
	bl PlaySE
	ldr r0, _021EB560 ; =0x0001EC50
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
_021EB498:
	ldr r1, _021EB560 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB554 ; =ov112_021FF090
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB54E
_021EB4AA:
	mov r1, #0x80
	tst r1, r0
	beq _021EB4D8
	ldr r0, _021EB560 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #2
	bge _021EB4C6
	ldr r0, _021EB564 ; =0x000005DC
	bl PlaySE
	ldr r0, _021EB560 ; =0x0001EC50
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021EB4C6:
	ldr r1, _021EB560 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB554 ; =ov112_021FF090
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB54E
_021EB4D8:
	mov r1, #1
	tst r1, r0
	beq _021EB4FA
	ldr r0, _021EB558 ; =0x000005DD
	bl PlaySE
	ldr r0, _021EB560 ; =0x0001EC50
	ldr r2, _021EB554 ; =ov112_021FF090
	ldr r1, [r4, r0]
	add r0, r4, #0
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	mov r3, #0xe
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB4FA:
	mov r1, #2
	tst r0, r1
	beq _021EB516
	ldr r0, _021EB564 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0xe
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB516:
	bl ov112_021EB9C0
	cmp r0, #0
	beq _021EB530
	ldr r0, _021EB564 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EB90C
	mov r0, #0x1a
	pop {r4, pc}
_021EB530:
	bl ov112_021EB9E4
	cmp r0, #0
	beq _021EB54E
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EB950
	cmp r0, #0
	beq _021EB54E
	ldr r0, _021EB564 ; =0x000005DC
	bl PlaySE
	mov r0, #0x1a
	pop {r4, pc}
_021EB54E:
	mov r0, #0xd
	pop {r4, pc}
	nop
_021EB554: .word ov112_021FF090
_021EB558: .word 0x000005DD
_021EB55C: .word gSystem
_021EB560: .word 0x0001EC50
_021EB564: .word 0x000005DC
	thumb_func_end ov112_021EB44C

