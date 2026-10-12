#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_022290A4
	.public ov39_0222915C
	.extern ov39_02228A70
	.extern ov39_02228B04

	.text

	.text
	thumb_func_start ov39_022290A4
ov39_022290A4: ; 0x022290A4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov39_02228A70
	cmp r0, #1
	bne _022290BA
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022290BA:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02229152
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022290D0: ; jump table
	.short _022290D8 - _022290D0 - 2 ; case 0
	.short _022290FA - _022290D0 - 2 ; case 1
	.short _02229110 - _022290D0 - 2 ; case 2
	.short _02229136 - _022290D0 - 2 ; case 3
_022290D8:
	ldr r0, _02229158 ; =0x00000F0F
	add r3, r4, #0
	str r0, [sp]
	add r3, #0x90
	ldr r1, [r4, #0x2c]
	ldr r3, [r3]
	add r0, r4, #0
	mov r2, #0x1a
	bl ov39_02228B04
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229152
_022290FA:
	bl ov00_021EC8D8
	bl sub_0203946C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229152
_02229110:
	bl sub_0203A914
	ldr r0, _02229158 ; =0x00000F0F
	add r3, r4, #0
	str r0, [sp]
	add r3, #0x90
	ldr r1, [r4, #0x2c]
	ldr r3, [r3]
	add r0, r4, #0
	mov r2, #0x1b
	bl ov39_02228B04
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02229152
_02229136:
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
	ble _02229152
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02229152:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02229158: .word 0x00000F0F
	thumb_func_end ov39_022290A4

	thumb_func_start ov39_0222915C
ov39_0222915C: ; 0x0222915C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r5]
	mov r1, #0
	str r0, [r4]
	ldr r0, [r5, #4]
	add r2, r5, #0
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r3, r4, #0
	str r0, [r4, #8]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0xc]
_02229182:
	ldrh r0, [r2, #0x24]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #0xe]
	add r3, r3, #2
	cmp r1, #8
	blt _02229182
	mov r0, #0x34
	ldrsb r0, [r5, r0]
	mov r2, #0
	strb r0, [r4, #0x1e]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	add r0, r5, #0
	add r0, #0x36
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x37
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0x2a]
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	strh r0, [r4, #0x2c]
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	add r0, r5, #0
	add r0, #0x48
_022291E2:
	ldrb r6, [r0]
	add r3, r1, #0
	add r3, #0x30
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #1]
	add r3, #0x31
	add r2, r2, #1
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #2]
	add r3, #0x32
	strb r6, [r3]
	add r3, r1, #0
	ldrb r6, [r0, #3]
	add r3, #0x33
	add r0, r0, #4
	add r1, r1, #4
	strb r6, [r3]
	cmp r2, #0xa
	blt _022291E2
	add r0, r5, #0
	add r0, #0x70
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x58
	add r5, #0x71
	strb r1, [r0]
	ldrb r0, [r5]
	add r4, #0x59
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov39_0222915C

