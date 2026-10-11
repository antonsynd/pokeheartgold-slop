#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E91C
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_0222F78C

	.text

	.text
	thumb_func_start ov45_0222E91C
ov45_0222E91C: ; 0x0222E91C
	push {r3, lr}
	ldr r0, _0222E940 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E92A
	bl GF_AssertFail
_0222E92A:
	bl ov45_0222F78C
	bl ov45_02231490
	bl ov45_0222F74C
	cmp r0, #0
	bne _0222E93E
	bl GF_AssertFail
_0222E93E:
	pop {r3, pc}
	.balign 4, 0
_0222E940: .word _022577C0
	thumb_func_end ov45_0222E91C

