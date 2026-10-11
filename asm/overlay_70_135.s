#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C14
	.public ov70_0223DD68

	.text

	thumb_func_start ov70_0223DD68
ov70_0223DD68: ; 0x0223DD68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _0223DD8C ; =0x000001AD
	mov r1, #0xc
	mov r3, #8
	bl ov70_02238C14
	ldr r1, _0223DD90 ; =0x000011C8
	str r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223DD8C: .word 0x000001AD
_0223DD90: .word 0x000011C8
	thumb_func_end ov70_0223DD68

