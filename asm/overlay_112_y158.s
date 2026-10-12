#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBC7C
	.public ov112_021EBCD8
	.extern ov112_021E7CA4
	.extern ov112_021E9888
	.extern ov112_021E9F40
	.extern ov112_021E9FA4
	.extern ov112_021EA51C
	.extern ov112_021EC440
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBC7C
ov112_021EBC7C: ; 0x021EBC7C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021EBCCC ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EBCC4
	ldr r0, _021EBCD0 ; =0x000F0100
	ldr r2, _021EBCD4 ; =0x0001E458
	str r0, [sp]
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #5
	mov r3, #4
	bl ov112_021E9FA4
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xa
	bl ov112_021E7CA4
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9F40
	add r0, r4, #0
	mov r1, #2
	bl ov112_021EA51C
	add sp, #4
	mov r0, #5
	pop {r3, r4, pc}
_021EBCC4:
	mov r0, #4
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EBCCC: .word 0x0001E524
_021EBCD0: .word 0x000F0100
_021EBCD4: .word 0x0001E458
	thumb_func_end ov112_021EBC7C

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

