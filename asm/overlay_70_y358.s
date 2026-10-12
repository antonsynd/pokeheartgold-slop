#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224308C
	.public ov70_022430CC
	.extern ov70_02238F9C
	.extern ov70_022421D0
	.extern ov70_02242D44

	.text

	.text
	thumb_func_start ov70_0224308C
ov70_0224308C: ; 0x0224308C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #4
	mov r2, #0x20
	bl ov70_02242D44
	ldr r0, [r4, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0xc]
	mov r1, #0x88
	mov r2, #0x28
	bl ov70_02238F9C
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	sub r2, r1, #4
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #1
	str r0, [r4, #0x4c]
	mov r0, #5
	str r0, [r4, #0x50]
	sub r0, r0, #6
	strh r0, [r4, #0x3c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0224308C

	thumb_func_start ov70_022430CC
ov70_022430CC: ; 0x022430CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x64
	bl ov70_022421D0
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022430F6
	cmp r4, #8
	bhi _02243118
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #6
	str r0, [r5, #0x4c]
	strh r4, [r5, #0x3c]
	b _02243118
_022430F6:
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #6
	str r0, [r5, #0x50]
	sub r0, r0, #7
	strh r0, [r5, #0x3c]
_02243118:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_022430CC

