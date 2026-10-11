#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222DC64
	.extern ov45_0222E04C
	.extern ov45_0222E0A4
	.extern ov45_0222E0E0
	.extern ov45_0222E5B4
	.extern ov45_02254BC8

	.text

	.text
	thumb_func_start ov45_0222DC64
ov45_0222DC64: ; 0x0222DC64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0222DC7A
	cmp r0, #1
	beq _0222DC7A
	cmp r0, #2
	bne _0222DCDA
_0222DC7A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov45_0222E5B4
	cmp r0, #0
	beq _0222DCDA
	ldr r7, [r4]
	ldr r0, _0222DCE0 ; =ov45_02254BC8
	ldrb r6, [r0, r7]
	add r0, r5, #0
	add r0, #0x5c
	add r1, r6, #0
	bl ov45_0222E04C
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _0222DCDA
	ldr r1, [r4, #8]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r4, #0xc]
	str r1, [sp, #4]
	ldr r1, [r4, #0x10]
	str r1, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r4, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r4, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #0x1c]
	ldr r1, _0222DCE4 ; =0x000001C2
	str r1, [sp, #0x20]
	str r6, [sp, #0x24]
	mov r1, #8
	str r1, [sp, #0x28]
	ldr r2, [r4, #4]
	add r1, r7, #0
	bl ov45_0222E0E0
	add r5, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov45_0222E0A4
_0222DCDA:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DCE0: .word ov45_02254BC8
_0222DCE4: .word 0x000001C2
	thumb_func_end ov45_0222DC64

