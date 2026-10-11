#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230C40
	.extern ov45_022309C4
	.extern ov45_022309D0

	.text

	.text
	thumb_func_start ov45_02230C40
ov45_02230C40: ; 0x02230C40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov42_02228188
	add r1, r0, #0
	mov r0, #0
	bl ov45_022309C4
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #9
	bl ov42_02228188
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov42_02228188
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r6, #0
	mov r2, #4
	bl ov45_022309D0
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	add r0, #0x85
	ldrb r0, [r0]
	cmp r0, r4
	ldr r0, [r5, #8]
	bne _02230CA0
	mov r1, #0
	bl sub_02023F40
	ldr r0, [r5, #8]
	add r5, #0x88
	ldr r1, [r5]
	add r1, r6, r1
	bl sub_02023F04
	pop {r4, r5, r6, pc}
_02230CA0:
	mov r1, #0
	bl sub_02023F40
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02023F04
	pop {r4, r5, r6, pc}
	thumb_func_end ov45_02230C40

