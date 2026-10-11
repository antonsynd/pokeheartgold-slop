#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EC3C
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EC3C
ov45_0222EC3C: ; 0x0222EC3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EC64 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EC4C
	bl GF_AssertFail
_0222EC4C:
	ldr r1, _0222EC64 ; =_022577C0
	mov r0, #0x49
	ldr r2, [r1]
	lsl r0, r0, #2
	ldrsh r2, [r2, r0]
	add r0, r0, #4
	str r2, [r4]
	ldr r1, [r1]
	ldr r0, [r1, r0]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_0222EC64: .word _022577C0
	thumb_func_end ov45_0222EC3C

