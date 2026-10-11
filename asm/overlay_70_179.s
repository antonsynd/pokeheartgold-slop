#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F1D8
	.public ov70_02245084

	.text

	thumb_func_start ov70_0223F1D8
ov70_0223F1D8: ; 0x0223F1D8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r3, #0
	cmp r2, #0
	beq _0223F206
	add r0, r1, #0
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02245084
	add r0, r4, #0
	bl String_Delete
_0223F206:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_0223F1D8

