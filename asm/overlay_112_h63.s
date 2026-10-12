#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E93BC
	.extern ov112_021E935C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E93BC
ov112_021E93BC: ; 0x021E93BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r3, [sp, #8]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r1, r3, #0
	str r0, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	mov r0, #0
	mul r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	asr r2, r2, #3
	lsl r2, r2, #1
	str r0, [sp, #0x10]
	bl MIi_CpuClearFast
	mov r0, #0
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x14]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _021E945C
	ldr r7, [sp, #0x14]
_021E9402:
	ldr r0, [sp, #0x38]
	mov r6, #0
	cmp r0, #0
	ble _021E944E
_021E940A:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r4, #0
	add r5, r1, r0
_021E9412:
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x30]
	add r3, r3, r4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r6, r2
	add r3, r3, r7
	bl ov112_021E935C
	asr r2, r0, #1
	ldrb r1, [r5]
	lsl r2, r4
	orr r1, r2
	mov r2, #1
	strb r1, [r5]
	and r0, r2
	lsl r0, r4
	ldrb r1, [r5, #1]
	add r4, r4, #1
	orr r0, r1
	strb r0, [r5, #1]
	cmp r4, #8
	blt _021E9412
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	cmp r6, r0
	blt _021E940A
_021E944E:
	ldr r0, [sp, #0x14]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _021E9402
_021E945C:
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021E93BC

