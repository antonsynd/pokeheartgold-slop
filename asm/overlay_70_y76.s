#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223A06C
	.extern ov70_02238B54

	.text

	.text
	thumb_func_start ov70_0223A06C
ov70_0223A06C: ; 0x0223A06C
	push {r4, lr}
	sub sp, #0x30
	mov r2, #0xd6
	add r4, r0, #0
	lsl r2, r2, #4
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov70_02238B54
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl Sprite_CreateAffine
	mov r1, #0xee
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0xee
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xee
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetPriority
	bl sub_0203A880
	add sp, #0x30
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_0223A06C

