#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222FD50
	.extern _022577C0
	.extern ov45_0222F8FC
	.extern ov45_0222F978
	.extern ov45_0222FAF8
	.extern ov45_0222FB24
	.extern ov45_02230008

	.text

	.text
	thumb_func_start ov45_0222FD50
ov45_0222FD50: ; 0x0222FD50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222FDCC ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #0
	bl ov45_0222FB24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FDC8
	mov r6, #0
	ldr r7, _0222FDCC ; =_022577C0
	add r4, r6, #0
_0222FD6E:
	ldr r1, [r7]
	mov r0, #6
	add r2, r1, r4
	lsl r0, r0, #8
	ldr r0, [r2, r0]
	cmp r5, r0
	bne _0222FD88
	ldr r2, _0222FDD0 ; =0x000005B8
	add r0, r5, #0
	add r1, r1, r2
	add r1, r1, r4
	bl ov45_02230008
_0222FD88:
	add r6, r6, #1
	add r4, #0x4c
	cmp r6, #3
	blt _0222FD6E
	ldr r0, _0222FDCC ; =_022577C0
	ldr r2, [r0]
	add r0, r5, #0
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, _0222FDCC ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	bl ov45_0222F978
	ldr r0, _0222FDCC ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	bl ov45_0222F8FC
	ldr r0, _0222FDCC ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #0
	bl ov45_0222FAF8
	ldr r0, _0222FDCC ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	mov r2, #1
	bl ov45_0222FAF8
_0222FDC8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FDCC: .word _022577C0
_0222FDD0: .word 0x000005B8
	thumb_func_end ov45_0222FD50

