#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222FBD8
	.extern ov45_0222F7B0
	.extern ov45_0222FB5C
	.extern ov45_02254C30

	.text

	.text
	thumb_func_start ov45_0222FBD8
ov45_0222FBD8: ; 0x0222FBD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	cmp r1, #4
	blt _0222FBE8
	bl GF_AssertFail
_0222FBE8:
	ldr r0, [sp]
	bl ov45_0222F7B0
	str r0, [sp, #4]
	ldr r0, _0222FC3C ; =0x0000011E
	mov r7, #0
	ldrh r0, [r6, r0]
	add r4, r7, #0
	cmp r0, #0
	ble _0222FC26
	add r5, r6, #0
_0222FBFE:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov45_0222FB5C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222FC1A
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _0222FC1A
	add r7, r7, #1
_0222FC1A:
	ldr r0, _0222FC3C ; =0x0000011E
	add r4, r4, #1
	ldrh r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _0222FBFE
_0222FC26:
	ldr r1, _0222FC40 ; =ov45_02254C30
	ldr r0, [sp]
	ldrb r0, [r1, r0]
	cmp r0, r7
	ble _0222FC36
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222FC36:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222FC3C: .word 0x0000011E
_0222FC40: .word ov45_02254C30
	thumb_func_end ov45_0222FBD8

