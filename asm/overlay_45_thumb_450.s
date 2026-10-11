#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230108
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_02230108
ov45_02230108: ; 0x02230108
	push {r3, lr}
	ldr r0, _0223012C ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223011C
	bl GF_AssertFail
_0223011C:
	ldr r0, _0223012C ; =_022577C0
	mov r2, #2
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r3, pc}
	nop
_0223012C: .word _022577C0
	thumb_func_end ov45_02230108

