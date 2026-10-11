#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230CD8
	.extern ov45_022309C4
	.extern ov45_02254C34

	.text

	.text
	thumb_func_start ov45_02230CD8
ov45_02230CD8: ; 0x02230CD8
	push {r4, lr}
	add r4, r0, #0
	ldrb r3, [r4, #2]
	mov r0, #0x1e
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _02230D08
	ldr r1, _02230D1C ; =ov45_02254C34
	lsr r2, r3, #2
	ldrb r1, [r1, r2]
	mov r0, #1
	bl ov45_022309C4
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
_02230D08:
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, r1
	cmp r0, #0x10
	bge _02230D16
	strb r0, [r4, #2]
	pop {r4, pc}
_02230D16:
	mov r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	.balign 4, 0
_02230D1C: .word ov45_02254C34
	thumb_func_end ov45_02230CD8

