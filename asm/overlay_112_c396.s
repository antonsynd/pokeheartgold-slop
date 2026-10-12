#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0B9C
	.extern ov112_021F0C30
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0B9C
ov112_021F0B9C: ; 0x021F0B9C
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x13
	str r2, [sp, #0xc]
	lsl r0, r0, #4
	str r3, [sp, #0x10]
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	add r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	add r3, r0, #0
	add r3, #8
	ldr r3, [r4, r3]
	add r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x2c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4]
	add r2, sp, #0x2c
	str r0, [sp]
	ldr r1, [r4, #4]
	add r0, sp, #0x50
	mov r3, #2
	bl ov112_021F0C30
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x74]
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x94]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x5c]
	add r0, sp, #0x50
	bl Sprite_CreateAffine
	mov r1, #1
	add r4, r0, #0
	bl Sprite_SetAnimActiveFlag
	ldr r1, [sp, #0x98]
	add r0, r4, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetPriority
	ldr r1, [sp, #0x9c]
	add r0, r4, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov112_021F0B9C

