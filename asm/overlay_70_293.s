#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022382C0
	.public ov70_02244A4C

	.text

	thumb_func_start ov70_02244A4C
ov70_02244A4C: ; 0x02244A4C
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022382C0
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _02244A64 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_02244A64: .word 0x00001604
	thumb_func_end ov70_02244A4C

