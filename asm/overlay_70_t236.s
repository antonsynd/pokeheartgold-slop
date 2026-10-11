#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F244
	.extern ov70_02245084

	.text

	.text
	thumb_func_start ov70_0223F244
ov70_0223F244: ; 0x0223F244
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r3, #0
	beq _0223F276
	add r0, r1, #0
	add r1, r3, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02245084
	add r0, r5, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
_0223F276:
	add r0, r2, #0
	mov r1, #0xad
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02245084
	add r0, r5, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_0223F244

