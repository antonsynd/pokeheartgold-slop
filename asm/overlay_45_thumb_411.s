#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F254
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F254
ov45_0222F254: ; 0x0222F254
	push {r3, lr}
	ldr r0, _0222F26C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F262
	bl GF_AssertFail
_0222F262:
	ldr r0, _0222F26C ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F270 ; =0x0000069F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	.balign 4, 0
_0222F26C: .word _022577C0
_0222F270: .word 0x0000069F
	thumb_func_end ov45_0222F254

