#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230B64
	.extern ov45_022309C4

	.text

	.text
	thumb_func_start ov45_02230B64
ov45_02230B64: ; 0x02230B64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov42_02228188
	add r1, r0, #0
	mov r0, #1
	bl ov45_022309C4
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov45_02230B64

