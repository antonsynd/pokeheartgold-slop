#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9998
	.extern ov112_021E98F8
	.extern ov112_021E9934
	.extern ov112_021FF504
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9998
ov112_021E9998: ; 0x021E9998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, _021E9A2C ; =ov112_021FF504
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r0, [sp, #0x14]
_021E99B0:
	ldr r0, [sp, #0x14]
	mov r5, #0
	ldr r7, [r0]
	ldrb r0, [r7]
	cmp r0, #0xff
	beq _021E9A10
	ldr r0, [sp, #8]
	mov r1, #0xf
	add r6, r0, #0
	and r6, r1
	mov r1, #0xf0
	and r0, r1
	lsr r0, r0, #4
	sub r6, #8
	str r0, [sp, #0x10]
_021E99CE:
	lsl r1, r5, #1
	ldrb r2, [r7, r1]
	add r0, r7, r1
	ldr r1, [sp, #0xc]
	add r4, r1, r2
	ldrb r1, [r0, #1]
	ldr r0, [sp, #0x38]
	add r1, r0, r1
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x18]
	sub r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r1, r6, r4
	bl ov112_021E98F8
	cmp r0, #2
	bne _021E9A02
	ldr r0, [sp]
	ldr r2, [sp, #0x18]
	add r1, r6, r4
	mov r3, #1
	bl ov112_021E9934
_021E9A02:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r0, r5, #1
	ldrb r0, [r7, r0]
	cmp r0, #0xff
	bne _021E99CE
_021E9A10:
	ldr r0, [sp, #8]
	lsr r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _021E99B0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9A2C: .word ov112_021FF504
	thumb_func_end ov112_021E9998

