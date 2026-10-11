#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F714

	.text

	thumb_func_start ov65_0221F714
ov65_0221F714: ; 0x0221F714
	push {r4, lr}
	ldr r3, _0221F744 ; =0x000022C4
	add r4, r0, #0
	ldr r0, [r4, r3]
	mov r1, #6
	add r0, r0, #2
	str r0, [r4, r3]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	mov r2, #0
	bl BgSetPosTextAndCommit
	mov r0, #6
	ldr r3, _0221F744 ; =0x000022C4
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	mov r1, #3
	mov r2, #0
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	.balign 4, 0
_0221F744: .word 0x000022C4
	thumb_func_end ov65_0221F714

