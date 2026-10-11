#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230D20
	.extern ov45_022309C4

	.text

	.text
	thumb_func_start ov45_02230D20
ov45_02230D20: ; 0x02230D20
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02230D5A
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov42_02228188
	ldr r0, [r4, #4]
	mov r1, #6
	bl ov42_02228188
	add r1, r0, #0
	mov r0, #1
	bl ov45_022309C4
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_02023EE0
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_02023F40
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_02230D5A:
	pop {r4, pc}
	thumb_func_end ov45_02230D20

