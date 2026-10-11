#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5D8C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5D8C
ov112_021E5D8C: ; 0x021E5D8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp]
	add r7, r1, #0
	ldr r1, [sp]
	add r6, r0, #0
	mov r0, #0
	add r1, #0x7f
	str r0, [sp, #8]
	asr r0, r1, #6
	lsr r0, r0, #0x19
	add r0, r1, r0
	lsl r0, r0, #9
	lsr r0, r0, #0x10
	add r5, r3, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _021E5E12
_021E5DB0:
	ldr r4, [sp]
	add r0, r4, #0
	cmp r0, #0x80
	bls _021E5DBA
	mov r4, #0x80
_021E5DBA:
	cmp r4, #0x80
	beq _021E5DD0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl MI_CpuCopy8
	mov r0, #0x80
	strb r0, [r5]
	add r5, r5, #1
	b _021E5DF8
_021E5DD0:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl MI_CompressLZImpl
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _021E5DF4
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl MI_CpuCopy8
	mov r0, #0x80
	strb r0, [r5]
	add r5, r5, #1
	b _021E5DF8
_021E5DF4:
	strb r0, [r5]
	add r5, r5, #1
_021E5DF8:
	ldr r0, [sp]
	add r6, #0x80
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, #0x80
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021E5DB0
_021E5E12:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021E5D8C

