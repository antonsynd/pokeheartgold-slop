#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EB74
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EB74
ov45_0222EB74: ; 0x0222EB74
	push {r3, lr}
	ldr r0, _0222EB8C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EB82
	bl GF_AssertFail
_0222EB82:
	ldr r0, _0222EB8C ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222EB90 ; =0x0000012F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	.balign 4, 0
_0222EB8C: .word _022577C0
_0222EB90: .word 0x0000012F
	thumb_func_end ov45_0222EB74

