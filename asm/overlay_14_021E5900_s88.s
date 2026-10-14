#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7E10
	.extern ov14_021E7D9C

    .text

	.text
	thumb_func_start ov14_021E7E10
ov14_021E7E10: ; 0x021E7E10
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x34]
	ldr r6, _021E7E3C ; =0x000040C0
	mov r2, #1
	ldr r3, [r5, r6]
	lsl r2, r1
	eor r2, r3
	str r2, [r5, r6]
	bl ov14_021E7D9C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	mov r2, #0x15
	mov r3, #6
	bl sub_020196E8
	pop {r4, r5, r6, pc}
	nop
_021E7E3C: .word 0x000040C0
	thumb_func_end ov14_021E7E10

