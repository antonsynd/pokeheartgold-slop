#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238B54
	.public ov70_0223B9C8
	.public ov70_022464F0

	.text

	thumb_func_start ov70_0223B9C8
ov70_0223B9C8: ; 0x0223B9C8
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
	ldr r0, _0223BA9C ; =ov70_022464F0
	ldrh r1, [r0, #0xe]
	ldrh r0, [r0, #0x10]
	lsl r1, r1, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	str r1, [sp, #8]
	bl Sprite_CreateAffine
	ldr r1, _0223BAA0 ; =0x00000DCC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0223BAA0 ; =0x00000DCC
	mov r1, #0x2d
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223BAA0 ; =0x00000DCC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetPriority
	ldr r0, _0223BAA0 ; =0x00000DCC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetOamMode
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
	ldr r1, _0223BAA4 ; =0x00000F04
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223BAA4 ; =0x00000F04
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x23
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	add r0, sp, #0
	bl Sprite_CreateAffine
	ldr r1, _0223BAA8 ; =0x00000F08
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223BAA8 ; =0x00000F08
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	bl sub_0203A880
	add sp, #0x30
	pop {r4, pc}
	nop
_0223BA9C: .word ov70_022464F0
_0223BAA0: .word 0x00000DCC
_0223BAA4: .word 0x00000F04
_0223BAA8: .word 0x00000F08
	thumb_func_end ov70_0223B9C8

