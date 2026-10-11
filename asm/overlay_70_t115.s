#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B3BC
	.public ov70_0223B3EC
	.public ov70_0223B41C
	.extern ov70_0223F20C
	.extern ov70_0223F324
	.extern ov70_0223F38C
	.extern ov70_0223F864
	.extern ov70_02245084
	.extern ov70_022450B8

	.text

	.text
	thumb_func_start ov70_0223B3BC
ov70_0223B3BC: ; 0x0223B3BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0223B3E8 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223B3E8: .word 0x000F0200
	thumb_func_end ov70_0223B3BC

	thumb_func_start ov70_0223B3EC
ov70_0223B3EC: ; 0x0223B3EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, r2, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223B418 ; =0x000F0200
	mov r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_022450B8
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B418: .word 0x000F0200
	thumb_func_end ov70_0223B3EC

	thumb_func_start ov70_0223B41C
ov70_0223B41C: ; 0x0223B41C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, _0223B480 ; =0x00010200
	mov r3, #0
	str r0, [sp]
	ldrsh r2, [r4, r3]
	add r0, r5, #0
	add r1, r7, #0
	bl ov70_0223F20C
	mov r0, #0x49
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223B480 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r2, #2
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0223F324
	mov r0, #3
	mov r1, #4
	ldrsb r0, [r4, r0]
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov70_0223F864
	add r2, r0, #0
	mov r0, #0x68
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223B480 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #0xc]
	bl ov70_0223F38C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B480: .word 0x00010200
	thumb_func_end ov70_0223B41C

