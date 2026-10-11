#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E9F8
	.extern _022577C0
	.extern ov45_0222F88C

	.text

	.text
	thumb_func_start ov45_0222E9F8
ov45_0222E9F8: ; 0x0222E9F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EA28 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EA08
	bl GF_AssertFail
_0222EA08:
	bl ov45_02232580
	add r1, r0, #0
	ldr r0, _0222EA28 ; =_022577C0
	add r2, r4, #0
	ldr r0, [r0]
	bl ov45_0222F88C
	ldr r1, _0222EA28 ; =_022577C0
	add r0, r4, #0
	ldr r1, [r1]
	mov r2, #0
	ldr r1, [r1, #0x28]
	bl ov45_022325B0
	pop {r4, pc}
	.balign 4, 0
_0222EA28: .word _022577C0
	thumb_func_end ov45_0222E9F8

