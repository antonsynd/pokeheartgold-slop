#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C660
	.extern ov70_0223CD28
	.extern ov70_0223F2BC
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223C660
ov70_0223C660: ; 0x0223C660
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223C6DC ; =0x000011A8
	ldr r0, [r5, r0]
	bl ov70_02242144
	add r4, r0, #0
	cmp r4, #2
	bhi _0223C682
	cmp r4, #0
	beq _0223C6A0
	cmp r4, #1
	beq _0223C6A0
	cmp r4, #2
	beq _0223C6A0
	b _0223C6D6
_0223C682:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0223C6D6
	mov r0, #0
	bl ov70_0223CD28
	ldr r0, _0223C6E0 ; =0x00000F18
	mov r1, #0
	add r0, r5, r0
	bl ClearFrameAndWindow2
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223C6D6
_0223C6A0:
	mov r0, #0
	bl ov70_0223CD28
	ldr r0, _0223C6E4 ; =0x00000B8C
	add r1, r4, #1
	strb r1, [r5, r0]
	ldr r0, _0223C6E8 ; =0x00001088
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C6EC ; =0x00010200
	mov r2, #0xba
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	sub r2, #0x14
	ldr r0, _0223C6E8 ; =0x00001088
	ldrsb r2, [r5, r2]
	add r0, r5, r0
	mov r3, #1
	bl ov70_0223F2BC
_0223C6D6:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223C6DC: .word 0x000011A8
_0223C6E0: .word 0x00000F18
_0223C6E4: .word 0x00000B8C
_0223C6E8: .word 0x00001088
_0223C6EC: .word 0x00010200
	thumb_func_end ov70_0223C660

