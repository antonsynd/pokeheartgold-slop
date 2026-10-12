#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C23C
	.extern ov70_02238D84
	.extern ov70_0223CAC4

	.text

	.text
	thumb_func_start ov70_0223C23C
ov70_0223C23C: ; 0x0223C23C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xb9
	add r4, r0, #0
	mov r3, #0
	lsl r1, r1, #4
	strh r3, [r4, r1]
	ldr r1, _0223C26C ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0x26
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223C270 ; =0x000005F3
	bl PlaySE
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C26C: .word 0x00000F0F
_0223C270: .word 0x000005F3
	thumb_func_end ov70_0223C23C

