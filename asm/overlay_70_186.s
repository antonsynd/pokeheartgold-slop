#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F96C
	.public ov70_0223FA08
	.public ov70_0223FB60
	.public ov70_0223FBF4
	.public ov70_0223FC40
	.public ov70_02241358
	.public ov70_02245124

	.text

	thumb_func_start ov70_0223F96C
ov70_0223F96C: ; 0x0223F96C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_0223FC40
	ldr r0, [r4, #4]
	bl ov70_0223FA08
	add r0, r4, #0
	bl ov70_0223FB60
	add r0, r4, #0
	bl ov70_0223FBF4
	add r0, r4, #0
	bl ov70_02241358
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	bl ov70_02245124
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov70_0223F96C

