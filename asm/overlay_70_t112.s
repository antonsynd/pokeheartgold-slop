#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B300
	.extern ov70_02238E50

	.text

	.text
	thumb_func_start ov70_0223B300
ov70_0223B300: ; 0x0223B300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223B338 ; =0x00000F14
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223B332
	ldr r2, _0223B33C ; =0x04000304
	ldr r0, _0223B340 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0xf
	bl ov70_02238E50
	ldr r0, _0223B338 ; =0x00000F14
	mov r1, #0x10
	str r1, [r4, r0]
_0223B332:
	mov r0, #3
	pop {r4, pc}
	nop
_0223B338: .word 0x00000F14
_0223B33C: .word 0x04000304
_0223B340: .word 0xFFFF7FFF
	thumb_func_end ov70_0223B300

