#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222ECB8
	.public ov45_0222ECDC
	.public ov45_0222ED7C
	.extern _022577C0
	.extern ov45_0222F7B4
	.extern ov45_022303BC

	.text

	.text
	thumb_func_start ov45_0222ECB8
ov45_0222ECB8: ; 0x0222ECB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222ECD8 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222ECC8
	bl GF_AssertFail
_0222ECC8:
	ldr r0, _0222ECD8 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	ldmia r0!, {r2, r3}
	stmia r4!, {r2, r3}
	pop {r4, pc}
	.balign 4, 0
_0222ECD8: .word _022577C0
	thumb_func_end ov45_0222ECB8

	thumb_func_start ov45_0222ECDC
ov45_0222ECDC: ; 0x0222ECDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222ED78 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222ECEC
	bl GF_AssertFail
_0222ECEC:
	ldr r1, _0222ED78 ; =_022577C0
	mov r0, #1
	ldr r2, [r1]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #2
	beq _0222ED02
	cmp r1, #4
	beq _0222ED02
	mov r0, #0
_0222ED02:
	cmp r0, #0
	bne _0222ED0A
	bl GF_AssertFail
_0222ED0A:
	cmp r5, #8
	blt _0222ED12
	bl GF_AssertFail
_0222ED12:
	ldr r0, _0222ED78 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r1, r0
	cmp r5, #7
	bhi _0222ED74
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222ED2C: ; jump table
	.short _0222ED3C - _0222ED2C - 2 ; case 0
	.short _0222ED40 - _0222ED2C - 2 ; case 1
	.short _0222ED44 - _0222ED2C - 2 ; case 2
	.short _0222ED48 - _0222ED2C - 2 ; case 3
	.short _0222ED4C - _0222ED2C - 2 ; case 4
	.short _0222ED58 - _0222ED2C - 2 ; case 5
	.short _0222ED62 - _0222ED2C - 2 ; case 6
	.short _0222ED6C - _0222ED2C - 2 ; case 7
_0222ED3C:
	ldr r4, [r0]
	b _0222ED74
_0222ED40:
	ldr r4, [r0, #4]
	b _0222ED74
_0222ED44:
	ldrb r4, [r0, #0xc]
	b _0222ED74
_0222ED48:
	ldrb r4, [r0, #0xd]
	b _0222ED74
_0222ED4C:
	ldr r0, [r0, #8]
	mov r4, #1
	tst r0, r4
	bne _0222ED74
	mov r4, #0
	b _0222ED74
_0222ED58:
	mov r1, #0x13
	bl ov45_022303BC
	add r4, r0, #0
	b _0222ED74
_0222ED62:
	mov r1, #0x10
	bl ov45_022303BC
	add r4, r0, #0
	b _0222ED74
_0222ED6C:
	mov r1, #0x11
	bl ov45_022303BC
	add r4, r0, #0
_0222ED74:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222ED78: .word _022577C0
	thumb_func_end ov45_0222ECDC

	thumb_func_start ov45_0222ED7C
ov45_0222ED7C: ; 0x0222ED7C
	push {r3, lr}
	ldr r0, _0222EDA4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222ED8A
	bl GF_AssertFail
_0222ED8A:
	ldr r0, _0222EDA4 ; =_022577C0
	ldr r0, [r0]
	bl ov45_0222F7B4
	cmp r0, #0
	beq _0222EDA2
	ldr r1, _0222EDA4 ; =_022577C0
	mov r3, #1
	ldr r2, [r1]
	mov r1, #0x13
	lsl r1, r1, #4
	strb r3, [r2, r1]
_0222EDA2:
	pop {r3, pc}
	.balign 4, 0
_0222EDA4: .word _022577C0
	thumb_func_end ov45_0222ED7C

