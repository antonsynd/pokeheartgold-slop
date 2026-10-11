#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C2C
	.public ov70_0223B188

	.text

	thumb_func_start ov70_0223B188
ov70_0223B188: ; 0x0223B188
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	ldr r2, _0223B1B0 ; =0x0000012E
	mov r1, #0xa
	mov r3, #3
	bl ov70_02238C2C
	ldr r1, _0223B1B4 ; =0x000011C8
	str r0, [r4, r1]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_0223B1B0: .word 0x0000012E
_0223B1B4: .word 0x000011C8
	thumb_func_end ov70_0223B188

