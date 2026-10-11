#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F30BC
	.public ov112_021F3140
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

	thumb_func_start ov112_021F3140
ov112_021F3140: ; 0x021F3140
	push {r4, r5, r6, r7}
	add r6, r1, #0
	mov r1, #0x1f
	mov r5, #0
	mov ip, r1
	mov r7, #0x60
	mov r2, #0x80
_021F314E:
	add r1, r0, #0
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0x1d
	bne _021F31AE
	ldrh r1, [r6]
	strh r1, [r0, #0xc]
	add r1, r0, #0
	add r1, #0x86
	ldrb r4, [r1]
	mov r1, ip
	bic r4, r1
	ldrb r1, [r6, #2]
	lsl r1, r1, #0x1b
	lsr r3, r1, #0x1b
	mov r1, #0x1f
	and r1, r3
	add r3, r4, #0
	orr r3, r1
	add r1, r0, #0
	add r1, #0x86
	strb r3, [r1]
	ldrb r3, [r6, #2]
	add r1, r0, #0
	add r1, #0x86
	ldrb r1, [r1]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x1e
	bic r1, r7
	lsr r3, r3, #0x19
	orr r3, r1
	add r1, r0, #0
	add r1, #0x86
	strb r3, [r1]
	ldrb r3, [r6, #2]
	add r1, r0, #0
	add r1, #0x86
	ldrb r1, [r1]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1f
	lsl r3, r3, #0x1f
	bic r1, r2
	lsr r3, r3, #0x18
	orr r3, r1
	add r1, r0, #0
	add r1, #0x86
	strb r3, [r1]
_021F31AE:
	add r5, r5, #1
	add r0, #0x88
	cmp r5, #0x18
	blt _021F314E
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov112_021F3140

