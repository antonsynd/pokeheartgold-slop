#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F1BC
	.extern _022577C0
	.extern ov45_0222F74C

	.text

	.text
	thumb_func_start ov45_0222F1BC
ov45_0222F1BC: ; 0x0222F1BC
	push {r4, r5, r6, lr}
	ldr r0, _0222F210 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F1CA
	bl GF_AssertFail
_0222F1CA:
	ldr r4, _0222F210 ; =_022577C0
	ldr r3, _0222F214 ; =0x0000069E
	ldr r1, [r4]
	ldrb r0, [r1, r3]
	cmp r0, #0
	beq _0222F20C
	sub r2, r3, #2
	ldrh r5, [r1, r2]
	mov r2, #0x4c
	mov r0, #1
	add r6, r5, #0
	mul r6, r2
	add r5, r1, r6
	add r1, r3, #0
	sub r1, #0xda
	str r0, [r5, r1]
	add r0, r3, #0
	ldr r1, [r4]
	sub r0, #0xe6
	add r4, r1, r0
	sub r0, r3, #2
	ldrh r0, [r1, r0]
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	bl ov45_02232BB0
	bl ov45_0222F74C
	cmp r0, #0
	bne _0222F20C
	bl GF_AssertFail
_0222F20C:
	pop {r4, r5, r6, pc}
	nop
_0222F210: .word _022577C0
_0222F214: .word 0x0000069E
	thumb_func_end ov45_0222F1BC

