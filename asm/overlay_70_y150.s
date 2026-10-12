#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C818
	.extern ov70_0223CD28
	.extern ov70_0223F244
	.extern ov70_0223F8A8
	.extern ov70_02242144
	.extern ov70_0224590C

	.text

	.text
	thumb_func_start ov70_0223C818
ov70_0223C818: ; 0x0223C818
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223C898 ; =0x000011A8
	ldr r0, [r5, r0]
	bl ov70_02242144
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223C890
	sub r0, r0, #1
	cmp r4, r0
	beq _0223C840
	ldr r0, _0223C89C ; =ov70_0224590C
	ldr r0, [r0]
	add r0, r0, #1
	cmp r4, r0
	bne _0223C856
_0223C840:
	mov r0, #0
	bl ov70_0223CD28
	ldr r0, _0223C8A0 ; =0x00000F18
	mov r1, #0
	add r0, r5, r0
	bl ClearFrameAndWindow2
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223C890
_0223C856:
	mov r0, #0
	bl ov70_0223CD28
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0223F8A8
	ldr r0, _0223C8A4 ; =0x00001188
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C8A8 ; =0x00010200
	mov r2, #0xbb
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r3, _0223C8AC ; =0x000012CC
	ldr r0, _0223C8A4 ; =0x00001188
	ldr r1, [r5, r2]
	sub r2, #0x10
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov70_0223F244
_0223C890:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223C898: .word 0x000011A8
_0223C89C: .word ov70_0224590C
_0223C8A0: .word 0x00000F18
_0223C8A4: .word 0x00001188
_0223C8A8: .word 0x00010200
_0223C8AC: .word 0x000012CC
	thumb_func_end ov70_0223C818

