#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B484
	.public ov70_02245084

	.text

	thumb_func_start ov70_0223B484
ov70_0223B484: ; 0x0223B484
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #0
	beq _0223B4B4
	mov r2, #0
	ldr r0, _0223B4D0 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_02245084
_0223B4B4:
	cmp r6, #0
	beq _0223B4CC
	mov r2, #0
	ldr r0, _0223B4D0 ; =0x00010200
	str r2, [sp]
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov70_02245084
_0223B4CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223B4D0: .word 0x00010200
	thumb_func_end ov70_0223B484

