#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5A14
	.extern _021FF500
	.extern _021FF9E0
	.extern ov112_021E594C
	.extern ov112_021E59B4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5A14
ov112_021E5A14: ; 0x021E5A14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021E5A54 ; =_021FF9E0
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	beq _021E5A3E
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021E5A3E
	cmp r4, #0
	bne _021E5A3E
	ldr r0, [r0, #4]
	ldr r3, _021E5A58 ; =_021FF500
	str r0, [sp]
	ldrb r3, [r3]
	mov r0, #0
	add r1, r0, #0
	mov r2, #0xf4
	bl ov112_021E59B4
_021E5A3E:
	ldr r0, _021E5A54 ; =_021FF9E0
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021E5A4A
	add r0, r4, #0
	blx r1
_021E5A4A:
	bl ov112_021E594C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E5A54: .word _021FF9E0
_021E5A58: .word _021FF500
	thumb_func_end ov112_021E5A14

