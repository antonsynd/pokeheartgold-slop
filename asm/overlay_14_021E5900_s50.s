#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7034
	.extern ov14_021E6070
	.extern ov14_021E6B48
	.extern ov14_021E6CC8

    .text

	.text
	thumb_func_start ov14_021E7034
ov14_021E7034: ; 0x021E7034
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	ldr r2, [r5, #0x34]
	ldr r0, _021E70AC ; =0x000040C4
	add r6, r1, #0
	ldr r4, [r2, #0xc]
	mov r1, #1
	str r1, [r2, r0]
	mov r0, #0
	add r1, r4, #0
	add r3, r0, #0
_021E704C:
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	add r0, r0, #1
	add r1, #0x20
	cmp r0, #7
	blo _021E704C
	cmp r7, #0xff
	beq _021E706C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0xac
	bl ov14_021E6070
	cmp r0, #0
	beq _021E708C
_021E706C:
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
_021E708C:
	add r0, r4, #0
	add r0, #0xe4
	str r6, [r0]
	add r4, #0xe8
	str r7, [r4]
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1e
	bl ov14_021E6CC8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E70AC: .word 0x000040C4
	thumb_func_end ov14_021E7034

