#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E7CC
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222E7CC
ov45_0222E7CC: ; 0x0222E7CC
	push {r3, lr}
	ldr r0, _0222E7F4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E7DA
	bl GF_AssertFail
_0222E7DA:
	ldr r0, _0222E7F4 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222E7F8 ; =0x00000984
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222E7EC
	bl ov45_02233220
	pop {r3, pc}
_0222E7EC:
	bl ov45_022331E8
	pop {r3, pc}
	nop
_0222E7F4: .word _022577C0
_0222E7F8: .word 0x00000984
	thumb_func_end ov45_0222E7CC

