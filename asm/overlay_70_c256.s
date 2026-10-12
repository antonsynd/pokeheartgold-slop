#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223EC0C
	.extern ov70_02238B54

	.text

	.text
	thumb_func_start ov70_0223EC0C
ov70_0223EC0C: ; 0x0223EC0C
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
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl Sprite_CreateAffine
	mov r1, #0xdd
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x2f
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xdd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x39
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0x75
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223EC9C ; =0x00000F04
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223EC9C ; =0x00000F04
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x23
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223ECA0 ; =0x00000F08
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223ECA0 ; =0x00000F08
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add sp, #0x30
	pop {r4, pc}
	.balign 4, 0
_0223EC9C: .word 0x00000F04
_0223ECA0: .word 0x00000F08
	thumb_func_end ov70_0223EC0C

