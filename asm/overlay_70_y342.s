#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02242144
	.extern ov70_022466F8

	.text

	.text
	thumb_func_start ov70_02242144
ov70_02242144: ; 0x02242144
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x4c]
	lsl r2, r1, #2
	ldr r1, _02242160 ; =ov70_022466F8
	ldr r1, [r1, r2]
	blx r1
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02019934
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_02242160: .word ov70_022466F8
	thumb_func_end ov70_02242144

