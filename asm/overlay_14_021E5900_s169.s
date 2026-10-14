#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E91E0
	.extern ov14_021E65C4
	.extern ov14_021E6CF8
	.extern ov14_021E7148

    .text

	.text
	thumb_func_start ov14_021E91E0
ov14_021E91E0: ; 0x021E91E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E91F2
	cmp r1, #1
	beq _021E9218
	b _021E922E
_021E91F2:
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r2, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, #0x1e
	add r0, r5, #0
	bl ov14_021E6CF8
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E922E
_021E9218:
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E922E
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E922E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E91E0

