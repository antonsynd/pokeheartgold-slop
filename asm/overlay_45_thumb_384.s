#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E9E0
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222E9E0
ov45_0222E9E0: ; 0x0222E9E0
	push {r3, lr}
	ldr r0, _0222E9F4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E9EE
	bl GF_AssertFail
_0222E9EE:
	bl ov45_02232580
	pop {r3, pc}
	.balign 4, 0
_0222E9F4: .word _022577C0
	thumb_func_end ov45_0222E9E0

