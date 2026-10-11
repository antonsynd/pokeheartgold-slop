#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F524
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F524
ov45_0222F524: ; 0x0222F524
	push {r3, lr}
	ldr r0, _0222F540 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F532
	bl GF_AssertFail
_0222F532:
	ldr r0, _0222F540 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_0222F540: .word _022577C0
	thumb_func_end ov45_0222F524

