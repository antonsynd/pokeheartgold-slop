#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6480

    .text

	.text
	thumb_func_start ov14_021E6480
ov14_021E6480: ; 0x021E6480
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	mov r4, #0
	bl Party_GetCount
	cmp r0, #0
	bls _021E64CA
_021E6492:
	cmp r4, r7
	beq _021E64BE
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	bne _021E64BE
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E64BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E64BE:
	ldr r0, [r5, #8]
	add r4, r4, #1
	bl Party_GetCount
	cmp r4, r0
	blo _021E6492
_021E64CA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6480

