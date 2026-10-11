#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238008
	.public ov70_0223FEE4
	.public ov70_02240D44

	.text

	thumb_func_start ov70_0223FEE4
ov70_0223FEE4: ; 0x0223FEE4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_02238008
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223FF0C ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xb
	bl ov70_02240D44
	mov r0, #3
	pop {r4, pc}
	nop
_0223FF0C: .word 0x00001604
	thumb_func_end ov70_0223FEE4

