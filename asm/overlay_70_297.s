#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244CA8
	.public ov70_022451A8

	.text

	thumb_func_start ov70_02244CA8
ov70_02244CA8: ; 0x02244CA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	neg r0, r0
	bl ov00_021E6A70
	ldr r2, [r4, #0x44]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov70_022451A8
	mov r0, #0x18
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02244CA8

