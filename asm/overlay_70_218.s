#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_02238E50
	.public ov70_02238F80
	.public ov70_0224078C
	.public ov70_022407E4

	.text

	thumb_func_start ov70_022407E4
ov70_022407E4: ; 0x022407E4
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0224078C
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x24
	bl ov70_02238D84
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	add r0, r4, #0
	bl ov70_02238F80
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_022407E4

