#include "config.h"
	.include "macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230ACC
	.extern ov45_022308C0
	.extern ov45_02230DC4
	.extern ov45_02254F28

	.text

	.text
	thumb_func_start ov45_02230ACC
ov45_02230ACC: ; 0x02230ACC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	beq _02230B5C
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov42_02228188
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #8
	bl ov42_02228188
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r0, r6
	bhi _02230B02
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, r4
	beq _02230B2E
_02230B02:
	add r0, r5, #0
	add r0, #0x84
	ldrb r0, [r0]
	bl ov45_02230DC4
	cmp r0, #1
	bne _02230B28
	ldr r0, [r5, #8]
	bl sub_02023EF4
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	ldr r0, [r5, #8]
	bl sub_02023F70
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
_02230B28:
	add r0, r5, #0
	add r0, #0x84
	strb r4, [r0]
_02230B2E:
	ldr r1, _02230B60 ; =ov45_02254F28
	add r0, r5, #0
	lsl r2, r4, #2
	add r0, #0x86
	strh r6, [r0]
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #4]
	bl ov42_022282F4
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	add r0, r5, #0
	bl ov45_022308C0
_02230B5C:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02230B60: .word ov45_02254F28
	thumb_func_end ov45_02230ACC

