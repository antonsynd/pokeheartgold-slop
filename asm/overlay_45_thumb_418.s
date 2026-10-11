#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F464
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F464
ov45_0222F464: ; 0x0222F464
	push {r3, lr}
	ldr r0, _0222F47C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F472
	bl GF_AssertFail
_0222F472:
	ldr r0, _0222F47C ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F480 ; =0x0000069E
	ldrb r0, [r1, r0]
	pop {r3, pc}
	.balign 4, 0
_0222F47C: .word _022577C0
_0222F480: .word 0x0000069E
	thumb_func_end ov45_0222F464

