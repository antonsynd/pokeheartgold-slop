#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021F08BC

    .text

	.text
	thumb_func_start ov14_021F08BC
ov14_021F08BC: ; 0x021F08BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xa
	mov r1, #0xf0
	bl Heap_Alloc
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	mov r6, #0xa
_021F08D0:
	add r0, r6, #0
	bl AllocMonZeroed
	str r0, [r5]
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blo _021F08D0
	ldr r0, [sp]
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r1, [r7, #0x34]
	ldr r0, [sp]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F08BC

