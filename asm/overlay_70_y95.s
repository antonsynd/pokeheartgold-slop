#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223A874
	.extern ov70_0223F470
	.extern ov70_0223F864

	.text

	.text
	thumb_func_start ov70_0223A874
ov70_0223A874: ; 0x0223A874
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0223A8B4 ; =0x0000022F
	add r4, r0, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov70_0223F864
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrsh r2, [r4, r1]
	add r1, r1, #2
	ldr r3, _0223A8B8 ; =0x000010E8
	str r2, [sp]
	ldrsb r1, [r4, r1]
	mov r2, #0xba
	lsl r2, r2, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223F470
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223A8B4: .word 0x0000022F
_0223A8B8: .word 0x000010E8
	thumb_func_end ov70_0223A874

