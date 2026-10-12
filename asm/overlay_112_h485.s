#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F30BC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F30BC
ov112_021F30BC: ; 0x021F30BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x88
	bl MI_CpuFill8
	add r1, r5, #0
	ldr r0, [r4]
	add r1, #0x20
	mov r2, #0x16
	bl MI_CpuCopy8
	ldrh r0, [r4, #8]
	mov r1, #0x1f
	strh r0, [r5, #0xa]
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	bic r0, r1
	ldrb r1, [r4, #0xa]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x85
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	mov r1, #0x60
	bic r0, r1
	ldrb r1, [r4, #0xa]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r1, r0
	add r0, r5, #0
	add r0, #0x85
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	mov r1, #0x80
	bic r0, r1
	ldrb r1, [r4, #0xa]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, r5, #0
	add r0, #0x85
	strb r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #0x1a
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0x84
	strb r1, [r0]
	sub r1, #0x1b
	str r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_021F30BC

