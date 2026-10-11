#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237FB4
	.public ov70_0223FE40

	.text

	thumb_func_start ov70_0223FE40
ov70_0223FE40: ; 0x0223FE40
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237FB4
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, _0223FE5C ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	strh r0, [r4, #0x36]
	mov r0, #3
	pop {r4, pc}
	nop
_0223FE5C: .word 0x00001604
	thumb_func_end ov70_0223FE40

