#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F4D4
	.extern _022577C0
	.extern ov45_0222F74C

	.text

	.text
	thumb_func_start ov45_0222F4D4
ov45_0222F4D4: ; 0x0222F4D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F520 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F4E4
	bl GF_AssertFail
_0222F4E4:
	cmp r4, #3
	blt _0222F4EC
	bl GF_AssertFail
_0222F4EC:
	ldr r0, _0222F520 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0222F4FE
	bl GF_AssertFail
_0222F4FE:
	add r0, r4, #0
	bl ov45_02232E60
	bl ov45_0222F74C
	cmp r0, #1
	beq _0222F510
	bl GF_AssertFail
_0222F510:
	ldr r0, _0222F520 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r4, pc}
	nop
_0222F520: .word _022577C0
	thumb_func_end ov45_0222F4D4

