#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C930
	.extern ov70_02238D84
	.extern ov70_0223CAC4

	.text

	.text
	thumb_func_start ov70_0223C930
ov70_0223C930: ; 0x0223C930
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C954 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x98
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C954: .word 0x00000F0F
	thumb_func_end ov70_0223C930

