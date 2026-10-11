#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_0223BD04
	.public ov70_0223CAC4

	.text

	thumb_func_start ov70_0223BD04
ov70_0223BD04: ; 0x0223BD04
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0xf
	ldr r1, _0223BD78 ; =0x00000F0F
	bne _0223BD4E
	mov r2, #0
	str r1, [sp]
	mov r1, #0x20
	add r3, r2, #0
	bl ov70_0223CAC4
	ldr r0, _0223BD7C ; =0x0400006C
	bl GXx_GetMasterBrightness_
	mov r1, #0xf
	mvn r1, r1
	cmp r0, r1
	bne _0223BD48
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	b _0223BD64
_0223BD48:
	mov r0, #1
	str r0, [r4, #0x2c]
	b _0223BD64
_0223BD4E:
	str r1, [sp]
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
_0223BD64:
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223BD78: .word 0x00000F0F
_0223BD7C: .word 0x0400006C
	thumb_func_end ov70_0223BD04

