#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223F94
	.extern ov08_02223FD8
	.extern ov08_0222400C
	.extern ov08_02224064

	.text

	.text
	thumb_func_start ov08_02223F94
ov08_02223F94: ; 0x02223F94
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x31
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #4
_02223FA2:
	ldr r0, [r5, r6]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02223FA2
	cmp r7, #0
	beq _02223FC0
	cmp r7, #1
	beq _02223FC8
	cmp r7, #2
	beq _02223FD0
	pop {r3, r4, r5, r6, r7, pc}
_02223FC0:
	ldr r0, [sp]
	bl ov08_02223FD8
	pop {r3, r4, r5, r6, r7, pc}
_02223FC8:
	ldr r0, [sp]
	bl ov08_0222400C
	pop {r3, r4, r5, r6, r7, pc}
_02223FD0:
	ldr r0, [sp]
	bl ov08_02224064
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov08_02223F94

