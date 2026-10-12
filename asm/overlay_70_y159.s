#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223CA40
	.extern ov70_02238E50
	.extern ov70_02241164

	.text

	.text
	thumb_func_start ov70_0223CA40
ov70_0223CA40: ; 0x0223CA40
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223CAB4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _0223CA68
	mov r1, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	b _0223CAAC
_0223CA68:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov70_02241164
	add r4, r0, #0
	ldr r0, _0223CAB8 ; =0x000011DE
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223CAAC
	cmp r4, #0
	blt _0223CAAC
	add r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0223CABC ; =0x00000EE4
	ldr r0, [r1, r0]
	lsl r1, r4, #2
	add r1, #0x10
	bl Sprite_SetAnimCtrlSeq
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov70_02238E50
	mov r0, #0x4b
	lsl r0, r0, #2
	str r4, [r5, r0]
	ldr r0, _0223CAC0 ; =0x000005DC
	bl PlaySE
_0223CAAC:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223CAB4: .word gSystem
_0223CAB8: .word 0x000011DE
_0223CABC: .word 0x00000EE4
_0223CAC0: .word 0x000005DC
	thumb_func_end ov70_0223CA40

