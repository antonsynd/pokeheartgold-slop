#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB3D8
	.public ov112_021EB44C
	.public ov112_021EB568
	.public ov112_021EB5AC
	.extern ov112_021E7CA4
	.extern ov112_021E9888
	.extern ov112_021E9F40
	.extern ov112_021E9FA4
	.extern ov112_021EA51C
	.extern ov112_021EA570
	.extern ov112_021EB90C
	.extern ov112_021EB950
	.extern ov112_021EB9C0
	.extern ov112_021EB9E4
	.extern ov112_021EC440
	.extern ov112_021EC460
	.extern ov112_021FF090
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB3D8
ov112_021EB3D8: ; 0x021EB3D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #2
	mov r2, #0xb
	bl ov112_021E7CA4
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x10
	bl ov112_021E7CA4
	ldr r0, _021EB438 ; =0x000F0100
	ldr r2, _021EB43C ; =0x0001E464
	str r0, [sp]
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #3
	mov r3, #4
	bl ov112_021E9FA4
	ldr r0, _021EB438 ; =0x000F0100
	mov r1, #4
	str r0, [sp]
	ldr r2, _021EB440 ; =0x0001E460
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r3, r1, #0
	bl ov112_021E9FA4
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9F40
	ldr r1, _021EB444 ; =0x0001EC50
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021EB448 ; =ov112_021FF090
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	mov r0, #0xd
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EB438: .word 0x000F0100
_021EB43C: .word 0x0001E464
_021EB440: .word 0x0001E460
_021EB444: .word 0x0001EC50
_021EB448: .word ov112_021FF090
	thumb_func_end ov112_021EB3D8

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

	thumb_func_start ov112_021EB568
ov112_021EB568: ; 0x021EB568
	push {r4, lr}
	add r4, r0, #0
	bl ov112_021EA570
	ldr r0, _021EB5A8 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EB582
	cmp r0, #1
	beq _021EB58C
	cmp r0, #2
	beq _021EB596
	b _021EB59C
_021EB582:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x10]
	b _021EB5A4
_021EB58C:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0x10]
	b _021EB5A4
_021EB596:
	mov r0, #0xb
	str r0, [r4, #4]
	b _021EB5A4
_021EB59C:
	cmp r0, #3
	blt _021EB5A4
	bl GF_AssertFail
_021EB5A4:
	mov r0, #0x1a
	pop {r4, pc}
	.balign 4, 0
_021EB5A8: .word 0x0001EC50
	thumb_func_end ov112_021EB568

	thumb_func_start ov112_021EB5AC
ov112_021EB5AC: ; 0x021EB5AC
	push {r3, lr}
	mov r1, #0
	mov r2, #8
	mov r3, #0x11
	bl ov112_021EC460
	mov r0, #0x18
	pop {r3, pc}
	thumb_func_end ov112_021EB5AC

