#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022420C4

	.text

	thumb_func_start ov70_022420C4
ov70_022420C4: ; 0x022420C4
	add r2, r0, #0
	add r2, #0x58
	strh r1, [r2]
	cmp r1, #3
	bhi _02242128
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022420DA: ; jump table
	.short _022420E2 - _022420DA - 2 ; case 0
	.short _0224210A - _022420DA - 2 ; case 1
	.short _0224211A - _022420DA - 2 ; case 2
	.short _022420F6 - _022420DA - 2 ; case 3
_022420E2:
	mov r2, #0
	add r1, r0, #0
	str r2, [r0, #0x48]
	add r1, #0x7e
	strb r2, [r1]
	strh r2, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	mov r1, #4
	str r1, [r0, #0x4c]
	bx lr
_022420F6:
	mov r2, #0
	add r1, r0, #0
	str r2, [r0, #0x48]
	add r1, #0x7e
	strb r2, [r1]
	strh r2, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	mov r1, #0x10
	str r1, [r0, #0x4c]
	bx lr
_0224210A:
	mov r2, #0
	add r1, r0, #0
	str r2, [r0, #0x48]
	add r1, #0x7e
	strb r2, [r1]
	mov r1, #0x1c
	str r1, [r0, #0x4c]
	bx lr
_0224211A:
	mov r2, #0
	add r1, r0, #0
	str r2, [r0, #0x48]
	add r1, #0x7e
	strb r2, [r1]
	mov r1, #0x1f
	str r1, [r0, #0x4c]
_02242128:
	bx lr
	.balign 4, 0
	thumb_func_end ov70_022420C4

