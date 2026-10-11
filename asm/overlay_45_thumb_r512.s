#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_022309D0

	.text

	.text
	thumb_func_start ov45_022309D0
ov45_022309D0: ; 0x022309D0
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	mul r0, r2
	add r1, r3, #0
	bl _u32_div_f
	lsl r0, r0, #0xc
	pop {r3, pc}
	thumb_func_end ov45_022309D0

