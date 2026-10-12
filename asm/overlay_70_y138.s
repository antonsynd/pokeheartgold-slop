#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C2B0
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223CAC4

	.text

	.text
	thumb_func_start ov70_0223C2B0
ov70_0223C2B0: ; 0x0223C2B0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C2E4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x9e
	mov r2, #4
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #2
	bl ov70_02238D84
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	ldr r0, _0223C2E8 ; =0x000005F3
	bl PlaySE
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C2E4: .word 0x00000F0F
_0223C2E8: .word 0x000005F3
	thumb_func_end ov70_0223C2B0

