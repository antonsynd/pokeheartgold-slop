#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02228FC8
	.extern ov39_02228A70
	.extern ov39_02228B04

	.text

	.text
	thumb_func_start ov39_02228FC8
ov39_02228FC8: ; 0x02228FC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _02229064
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02228FE4: ; jump table
	.short _02228FEC - _02228FE4 - 2 ; case 0
	.short _0222900C - _02228FE4 - 2 ; case 1
	.short _0222902C - _02228FE4 - 2 ; case 2
	.short _0222904C - _02228FE4 - 2 ; case 3
_02228FEC:
	ldr r1, _02229088 ; =0x00000F0F
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x90
	ldr r1, [r4, #0x24]
	ldr r3, [r3]
	mov r2, #0xba
	bl ov39_02228B04
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229080
_0222900C:
	ldr r0, [r4, #0x40]
	bl ov39_02228A70
	cmp r0, #0
	bne _02229080
	bl sub_0203946C
	bl ov00_021EC8D8
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229080
_0222902C:
	ldr r1, _02229088 ; =0x00000F0F
	add r3, r4, #0
	str r1, [sp]
	add r3, #0x90
	ldr r1, [r4, #0x24]
	ldr r3, [r3]
	mov r2, #0xbb
	bl ov39_02228B04
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229080
_0222904C:
	ldr r0, [r4, #0x40]
	bl ov39_02228A70
	cmp r0, #0
	bne _02229080
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229080
_02229064:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _02229080
	mov r0, #8
	str r0, [r4, #8]
_02229080:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02229088: .word 0x00000F0F
	thumb_func_end ov39_02228FC8

