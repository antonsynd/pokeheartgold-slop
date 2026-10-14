#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F25E4
	.extern ov14_021F2A18
	.extern ov14_021F40E8

    .text

	.text
	thumb_func_start ov14_021F25E4
ov14_021F25E4: ; 0x021F25E4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F40E8
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #0x2f
	bl ov14_021F1100
	pop {r4, pc}
	thumb_func_end ov14_021F25E4

