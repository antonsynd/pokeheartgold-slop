#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222C3B0
	.extern ov45_02254A3C

	.text

	.text
	thumb_func_start ov45_0222C3B0
ov45_0222C3B0: ; 0x0222C3B0
	push {r4, r5, r6, r7}
	ldr r1, [r0]
	cmp r1, #0
	beq _0222C3FA
	ldr r3, _0222C400 ; =ov45_02254A3C
	mov r2, #0
	add r4, r0, #0
	mov r1, #1
	mov r6, #2
_0222C3C2:
	ldr r7, [r0, #4]
	ldr r5, [r3]
	cmp r7, r5
	bne _0222C3CC
	str r1, [r4, #0x2c]
_0222C3CC:
	ldr r5, [r4, #0x2c]
	cmp r5, #1
	bne _0222C3E4
	ldr r5, [r4, #8]
	add r7, r5, #1
	mov r5, #0x4b
	lsl r5, r5, #4
	cmp r7, r5
	bgt _0222C3E2
	str r7, [r4, #8]
	b _0222C3E4
_0222C3E2:
	str r6, [r4, #0x2c]
_0222C3E4:
	add r2, r2, #1
	add r3, r3, #4
	add r4, r4, #4
	cmp r2, #9
	blt _0222C3C2
	ldr r1, [r0, #4]
	add r2, r1, #1
	ldr r1, _0222C404 ; =0x000010E0
	cmp r2, r1
	bgt _0222C3FA
	str r2, [r0, #4]
_0222C3FA:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0222C400: .word ov45_02254A3C
_0222C404: .word 0x000010E0
	thumb_func_end ov45_0222C3B0

