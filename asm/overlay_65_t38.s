#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DE64
	.extern ov65_0221DE58

	.text

	.text
	thumb_func_start ov65_0221DE64
ov65_0221DE64: ; 0x0221DE64
	push {r3, r4, r5, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020373B4
	cmp r0, #0
	beq _0221DE8A
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0221DE58
	mov r2, #0x59
	add r1, r0, #0
	mov r0, #0x16
	lsl r2, r2, #4
	bl sub_02036FD8
_0221DE8A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0221DE64

