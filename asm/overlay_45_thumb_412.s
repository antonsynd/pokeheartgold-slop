#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F274
	.extern _022577C0
	.extern ov45_0223021C

	.text

	.text
	thumb_func_start ov45_0222F274
ov45_0222F274: ; 0x0222F274
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F290 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F284
	bl GF_AssertFail
_0222F284:
	ldr r0, _0222F290 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_0223021C
	pop {r4, pc}
	.balign 4, 0
_0222F290: .word _022577C0
	thumb_func_end ov45_0222F274

