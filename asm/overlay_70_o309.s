#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F904
	.extern ov70_0223F8D0
	.extern ov70_02245B5C

	.text

	.text
	thumb_func_start ov70_0223F904
ov70_0223F904: ; 0x0223F904
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r2, #0
	add r1, sp, #4
	bl ov70_0223F8D0
	mov r1, #0x3d
	add r7, r0, #0
	bl ListMenuItems_New
	str r0, [r5]
	mov r4, #0
	b _0223F938
_0223F922:
	ldr r2, [sp, #4]
	ldr r0, [r5]
	add r3, r2, r4
	lsl r6, r3, #1
	ldr r2, _0223F944 ; =ov70_02245B5C
	ldr r1, [sp]
	ldrh r2, [r2, r6]
	add r3, r3, #1
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
_0223F938:
	cmp r4, r7
	blt _0223F922
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F944: .word ov70_02245B5C
	thumb_func_end ov70_0223F904

