#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222A9A4
	.extern ov45_0222AA5C
	.extern ov45_02254A84

	.text

	.text
	thumb_func_start ov45_0222A9A4
ov45_0222A9A4: ; 0x0222A9A4
	push {r3, lr}
	bl ov45_0222AA5C
	ldr r3, _0222A9C4 ; =ov45_02254A84
	mov r2, #0
_0222A9AE:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222A9B8
	add r0, r2, #0
	pop {r3, pc}
_0222A9B8:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x10
	blt _0222A9AE
	mov r0, #0x18
	pop {r3, pc}
	.balign 4, 0
_0222A9C4: .word ov45_02254A84
	thumb_func_end ov45_0222A9A4

