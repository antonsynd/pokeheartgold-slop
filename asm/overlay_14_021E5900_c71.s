#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7B04

    .text

	.text
	thumb_func_start ov14_021E7B04
ov14_021E7B04: ; 0x021E7B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	ldr r2, [r4, #0x18]
	lsr r3, r2, #2
	cmp r3, #8
	bne _021E7B32
	cmp r1, #1
	ldrh r1, [r4]
	bne _021E7B22
	ldr r2, [r4, #4]
	bl ov14_021F396C
	b _021E7B28
_021E7B22:
	ldr r2, [r4, #4]
	bl ov14_021F39A0
_021E7B28:
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7B32:
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	ldr r1, [r4, #8]
	bne _021E7B40
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	b _021E7B44
_021E7B40:
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
_021E7B44:
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E7B56
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	b _021E7B5A
_021E7B56:
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
_021E7B5A:
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r5, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	ldr r1, [r4, #0x18]
	mov r0, #3
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #2
	add r0, r0, #1
	lsl r0, r0, #2
	orr r0, r2
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7B04

