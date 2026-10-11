#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02227A5C
	.extern ov39_02227B1C
	.extern ov39_02227B58
	.extern ov39_02227B5C

	.text

	.text
	thumb_func_start ov39_02227A5C
ov39_02227A5C: ; 0x02227A5C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _02227B0C ; =0x000059DC
	cmp r1, r0
	bne _02227A70
	mov r0, #1
	pop {r4, pc}
_02227A70:
	bl ov39_0222A13C
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _02227B06
	cmp r2, #9
	bhi _02227AFC
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02227A94: ; jump table
	.short _02227AFC - _02227A94 - 2 ; case 0
	.short _02227AFC - _02227A94 - 2 ; case 1
	.short _02227AFC - _02227A94 - 2 ; case 2
	.short _02227AFC - _02227A94 - 2 ; case 3
	.short _02227AFC - _02227A94 - 2 ; case 4
	.short _02227AFC - _02227A94 - 2 ; case 5
	.short _02227AFC - _02227A94 - 2 ; case 6
	.short _02227AA8 - _02227A94 - 2 ; case 7
	.short _02227ACC - _02227A94 - 2 ; case 8
	.short _02227ADA - _02227A94 - 2 ; case 9
_02227AA8:
	add r0, r1, #0
	mov r3, #1
	add r0, #0x38
	str r3, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x3c
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #7
	add r0, #0x40
	str r2, [r4, r0]
	add r1, #0x34
	str r3, [r4, r1]
	ldr r1, _02227B10 ; =ov39_02227B58
	ldr r0, _02227B14 ; =0x0000040C
	str r1, [r4, r0]
	b _02227AFC
_02227ACC:
	ldr r1, _02227B18 ; =ov39_02227B1C
	ldr r0, _02227B14 ; =0x0000040C
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov39_02227B5C
	b _02227AFC
_02227ADA:
	add r0, r1, #0
	mov r2, #0
	add r0, #0x38
	str r2, [r4, r0]
	add r1, #0x3c
	str r2, [r4, r1]
	bl ov39_0222A158
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	sub r1, #0xc
	str r0, [r4, r1]
	ldr r1, _02227B10 ; =ov39_02227B58
	ldr r0, _02227B14 ; =0x0000040C
	str r1, [r4, r0]
_02227AFC:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02227B06:
	mov r0, #1
	pop {r4, pc}
	nop
_02227B0C: .word 0x000059DC
_02227B10: .word ov39_02227B58
_02227B14: .word 0x0000040C
_02227B18: .word ov39_02227B1C
	thumb_func_end ov39_02227A5C

