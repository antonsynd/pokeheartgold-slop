#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222BB60
	.extern ov45_0222C3A8
	.extern ov45_0222CA8C

	.text

	.text
	thumb_func_start ov45_0222BB60
ov45_0222BB60: ; 0x0222BB60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #4
	add r6, r2, #0
	ldrsh r2, [r5, r1]
	add r7, r3, #0
	sub r0, r2, #1
	bmi _0222BB8C
	strh r0, [r5, #4]
	ldrsh r1, [r5, r1]
	mov r0, #0xd2
	lsl r0, r0, #2
	cmp r1, r0
	bne _0222BBA6
	mov r0, #0
	mov r1, #0x7f
	bl GF_SndStartFadeOutBGM
	mov r0, #1
	strb r0, [r5, #0xe]
	b _0222BBA6
_0222BB8C:
	cmp r2, #0
	bne _0222BBA6
	ldrb r2, [r5]
	mov r0, #2
	orr r0, r2
	strb r0, [r5]
	ldr r2, [r4, #8]
	mov r0, #0x80
	orr r0, r2
	str r0, [r4, #8]
	ldrsh r0, [r5, r1]
	sub r0, r0, #1
	strh r0, [r5, #4]
_0222BBA6:
	mov r0, #6
	ldrsh r2, [r5, r0]
	sub r1, r2, #1
	bmi _0222BBB2
	strh r1, [r5, #6]
	b _0222BBCC
_0222BBB2:
	cmp r2, #0
	bne _0222BBCC
	ldr r2, [r4, #8]
	mov r1, #4
	orr r2, r1
	mov r1, #8
	orr r2, r1
	mov r1, #2
	orr r1, r2
	str r1, [r4, #8]
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #6]
_0222BBCC:
	mov r0, #8
	ldrsh r2, [r5, r0]
	sub r1, r2, #1
	bmi _0222BBD8
	strh r1, [r5, #8]
	b _0222BBFC
_0222BBD8:
	cmp r2, #0
	bne _0222BBFC
	ldrb r1, [r5]
	mov r2, #0xc
	bic r1, r2
	mov r2, #4
	orr r1, r2
	strb r1, [r5]
	ldr r2, [r4, #8]
	mov r1, #0x20
	orr r1, r2
	str r1, [r4, #8]
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #8]
	add r0, r7, #0
	bl ov45_0222CA8C
_0222BBFC:
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	bmi _0222BC08
	strh r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0222BC08:
	cmp r1, #0
	bne _0222BC36
	add r0, r6, #0
	bl ov45_0222C3A8
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0222BC1E
	ldr r0, _0222BC38 ; =0x00000481
	bl PlayBGM
_0222BC1E:
	ldrb r1, [r5]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5]
	ldr r1, [r4, #8]
	mov r0, #0x40
	orr r0, r1
	str r0, [r4, #8]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	strh r0, [r5, #0xa]
_0222BC36:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222BC38: .word 0x00000481
	thumb_func_end ov45_0222BB60

