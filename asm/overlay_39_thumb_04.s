#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_022271A4

	.text

	.text
	thumb_func_start ov39_022271A4
ov39_022271A4: ; 0x022271A4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x80
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	thumb_func_end ov39_022271A4

