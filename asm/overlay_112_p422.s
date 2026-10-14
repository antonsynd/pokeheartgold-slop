#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0D48
	.extern ov112_021FF244
	.extern ov112_021FF2CC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0D48
ov112_021F0D48: ; 0x021F0D48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021F0DB8 ; =ov112_021FF2CC
	mov r7, #0
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x40
	ldr r4, _021F0DBC ; =ov112_021FF244
	str r7, [sp, #4]
	str r0, [sp, #8]
_021F0D60:
	ldr r0, [sp]
	strh r7, [r5]
	ldrb r2, [r0]
	mov r6, #0
	add r0, r6, #0
	strb r2, [r5, #2]
	ldr r1, [r4]
	lsr r2, r2, #1
	beq _021F0D8A
_021F0D72:
	ldrb r3, [r1]
	add r0, r0, #1
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	ldrb r3, [r1, #1]
	add r1, r1, #2
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	cmp r0, r2
	blo _021F0D72
_021F0D8A:
	strb r6, [r5, #3]
	ldr r1, [sp, #8]
	ldrb r2, [r5, #2]
	ldr r0, [r4]
	add r1, r1, r7
	bl MI_CpuCopy8
	ldrb r0, [r5, #2]
	add r5, r5, #4
	add r4, r4, #4
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _021F0D60
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0DB8: .word ov112_021FF2CC
_021F0DBC: .word ov112_021FF244
	thumb_func_end ov112_021F0D48

