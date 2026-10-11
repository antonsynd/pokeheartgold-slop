#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F38C
	.public ov70_02245084
	.public ov70_022459F4
	.public ov70_02245A4C

	.text

	thumb_func_start ov70_0223F38C
ov70_0223F38C: ; 0x0223F38C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	add r5, r3, #0
	cmp r2, r0
	beq _0223F3CC
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0223F3A6
	ldr r3, _0223F3D0 ; =ov70_02245A4C
	b _0223F3A8
_0223F3A6:
	ldr r3, _0223F3D4 ; =ov70_022459F4
_0223F3A8:
	add r0, r1, #0
	lsl r1, r2, #3
	ldr r1, [r3, r1]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02245084
	add r0, r4, #0
	bl String_Delete
_0223F3CC:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223F3D0: .word ov70_02245A4C
_0223F3D4: .word ov70_022459F4
	thumb_func_end ov70_0223F38C

