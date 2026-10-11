#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F4AC
	.extern _022577C0
	.extern ov45_0223045C

	.text

	.text
	thumb_func_start ov45_0222F4AC
ov45_0222F4AC: ; 0x0222F4AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F4D0 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F4BC
	bl GF_AssertFail
_0222F4BC:
	ldr r0, _0222F4D0 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl ov45_0223045C
	pop {r4, pc}
	nop
_0222F4D0: .word _022577C0
	thumb_func_end ov45_0222F4AC

