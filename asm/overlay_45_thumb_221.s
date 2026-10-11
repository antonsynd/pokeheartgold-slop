#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222CAA0
	.extern _02254A28
	.extern ov45_0222ECB8

	.text

	.text
	thumb_func_start ov45_0222CAA0
ov45_0222CAA0: ; 0x0222CAA0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0222CB32
	add r0, sp, #0
	bl ov45_0222ECB8
	ldr r3, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [r4, #8]
	sub r0, r3, r0
	sbc r1, r2
	mov r2, #0x1e
	mov r3, #0
	bl _ll_mul
	ldr r2, [r4, #0xc]
	asr r3, r2, #0x1f
	sub r2, r2, r0
	sbc r3, r1
	bge _0222CAD2
	str r0, [r4, #0xc]
_0222CAD2:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _0222CB12
	add r0, r1, #1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #8
	bl _s32_div_f
	mov r2, #0
	ldr r5, _0222CB38 ; =_02254A28
	add r3, r2, #0
_0222CAEC:
	ldrh r1, [r5, #2]
	add r2, r2, r1
	cmp r2, r0
	blo _0222CB08
	ldr r0, _0222CB38 ; =_02254A28
	lsl r1, r3, #2
	ldrh r1, [r0, r1]
	ldr r0, [r4, #0x14]
	cmp r0, r1
	beq _0222CB2C
	str r1, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	b _0222CB2C
_0222CB08:
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #5
	blo _0222CAEC
	b _0222CB2C
_0222CB12:
	ldr r0, [r4, #0x14]
	cmp r0, #5
	beq _0222CB20
	mov r0, #5
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
_0222CB20:
	ldr r0, [r4, #0x18]
	cmp r0, #0x78
	blo _0222CB2C
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4]
_0222CB2C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_0222CB32:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0222CB38: .word _02254A28
	thumb_func_end ov45_0222CAA0

