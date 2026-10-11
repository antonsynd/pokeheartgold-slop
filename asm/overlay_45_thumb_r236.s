#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CD68
	.extern ov45_0222CE0C

	.text

	.text
	thumb_func_start ov45_0222CD68
ov45_0222CD68: ; 0x0222CD68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0222CD6E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov45_0222CE0C
	add r4, r4, #1
	cmp r4, #0xd
	blt _0222CD6E
	add r0, r5, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
	thumb_func_end ov45_0222CD68

