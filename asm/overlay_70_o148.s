#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B55C
	.extern ov70_0223B7CC
	.extern ov70_0223B8E0
	.extern ov70_0223B9C8
	.extern ov70_0223BAE0
	.extern ov70_0223BC7C
	.extern ov70_0223CB1C
	.extern ov70_0223CC04
	.extern ov70_0223CCA4
	.extern ov70_0223F1D8
	.extern ov70_0223F244
	.extern ov70_0223F2BC
	.extern ov70_0223F370
	.extern ov70_0223F864
	.extern ov70_02242014

	.text

	.text
	thumb_func_start ov70_0223B55C
ov70_0223B55C: ; 0x0223B55C
	push {r3, r4, lr}
	sub sp, #0x3c
	add r4, r0, #0
	bl ov70_0223BC7C
	ldr r0, [r4, #4]
	bl ov70_0223B7CC
	add r0, r4, #0
	bl ov70_0223B8E0
	add r0, r4, #0
	bl ov70_0223BAE0
	add r0, r4, #0
	bl ov70_0223B9C8
	ldr r0, [r4, #4]
	ldr r3, _0223B6AC ; =0x00000F58
	str r0, [sp, #0xc]
	add r0, r4, r3
	str r0, [sp, #0x10]
	ldr r0, _0223B6B0 ; =0x00001168
	add r1, r4, r0
	str r1, [sp, #0x14]
	mov r1, #0xdd
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	sub r1, r1, #4
	str r2, [sp, #0x18]
	add r2, r3, #0
	sub r2, #0x54
	ldr r2, [r4, r2]
	sub r3, #0x50
	str r2, [sp, #0x1c]
	ldr r2, [r4, r3]
	add r0, #0x5c
	str r2, [sp, #0x20]
	ldr r1, [r4, r1]
	mov r2, #0xba
	lsl r2, r2, #4
	str r1, [sp, #0x24]
	ldr r1, [r4, r2]
	str r1, [sp, #0x28]
	add r1, r2, #4
	ldr r1, [r4, r1]
	add r2, #0x10
	str r1, [sp, #0x2c]
	ldr r1, [r4, r2]
	mov r2, #1
	str r1, [sp, #0x30]
	ldr r1, [r4]
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x34]
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x38]
	add r0, sp, #0xc
	bl ov70_02242014
	ldr r1, _0223B6B4 ; =0x000011A8
	mov r2, #0xba
	str r0, [r4, r1]
	ldr r0, _0223B6B8 ; =0x00001058
	lsl r2, r2, #4
	sub r1, #0x30
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_0223CB1C
	ldr r3, _0223B6BC ; =0x000011DE
	mov r2, #0xba
	ldr r1, _0223B6C0 ; =0x000010D8
	lsl r2, r2, #4
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl ov70_0223CC04
	mov r3, #0
	ldr r0, _0223B6C4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0223B6C8 ; =0x00000BA4
	ldr r0, _0223B6CC ; =0x00001068
	ldr r1, [r4, r2]
	sub r2, #0x1a
	ldrsh r2, [r4, r2]
	add r0, r4, r0
	bl ov70_0223F1D8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B6C4 ; =0x00010200
	mov r2, #0xba
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223B6D0 ; =0x00001088
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov70_0223F2BC
	ldr r1, _0223B6D4 ; =0x00000B8D
	mov r2, #1
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov70_0223F864
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223B6C4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0xba
	str r0, [sp, #8]
	ldr r0, _0223B6D8 ; =0x000010A8
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov70_0223F370
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B6C4 ; =0x00010200
	mov r2, #0xbb
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r3, _0223B6DC ; =0x000012CC
	ldr r0, _0223B6E0 ; =0x00001188
	ldr r1, [r4, r2]
	sub r2, #0x10
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r4, r0
	bl ov70_0223F244
	ldr r1, _0223B6E4 ; =ov70_0223CCA4
	ldr r0, _0223B6E8 ; =0x00001208
	str r1, [r4, r0]
	ldr r0, [r4, #0x24]
	cmp r0, #0xd
	bne _0223B6A2
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
_0223B6A2:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0x3c
	pop {r3, r4, pc}
	.balign 4, 0
_0223B6AC: .word 0x00000F58
_0223B6B0: .word 0x00001168
_0223B6B4: .word 0x000011A8
_0223B6B8: .word 0x00001058
_0223B6BC: .word 0x000011DE
_0223B6C0: .word 0x000010D8
_0223B6C4: .word 0x00010200
_0223B6C8: .word 0x00000BA4
_0223B6CC: .word 0x00001068
_0223B6D0: .word 0x00001088
_0223B6D4: .word 0x00000B8D
_0223B6D8: .word 0x000010A8
_0223B6DC: .word 0x000012CC
_0223B6E0: .word 0x00001188
_0223B6E4: .word ov70_0223CCA4
_0223B6E8: .word 0x00001208
	thumb_func_end ov70_0223B55C

