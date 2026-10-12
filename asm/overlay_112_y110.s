#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAAE4
	.extern ov112_021EAA10
	.extern ov112_021EAA34
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAAE4
ov112_021EAAE4: ; 0x021EAAE4
	push {r4, lr}
	add r2, r1, #0
	mov r1, #2
	ldrsb r4, [r2, r1]
	cmp r4, #0
	bge _021EAB14
	mov r1, #6
	ldrsh r3, [r2, r1]
	add r3, r3, r4
	strh r3, [r2, #6]
	ldrsh r3, [r2, r1]
	sub r1, #0x74
	cmp r3, r1
	bge _021EAB04
	mov r1, #0
	strb r1, [r2, #2]
_021EAB04:
	mov r1, #4
	mov r3, #6
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	bl ov112_021EAA34
	mov r0, #0
	pop {r4, pc}
_021EAB14:
	ble _021EAB3C
	cmp r4, #0x64
	bgt _021EAB3C
	mov r1, #6
	ldrsh r3, [r2, r1]
	add r3, r3, r4
	strh r3, [r2, #6]
	ldrsh r1, [r2, r1]
	cmp r1, #0x6c
	ble _021EAB2C
	mov r1, #0x65
	strb r1, [r2, #2]
_021EAB2C:
	mov r1, #4
	mov r3, #6
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	bl ov112_021EAA34
	mov r0, #0
	pop {r4, pc}
_021EAB3C:
	cmp r4, #0
	beq _021EAB50
	mov r1, #4
	mov r3, #6
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	bl ov112_021EAA34
	mov r0, #0
	pop {r4, pc}
_021EAB50:
	bl ov112_021EAA10
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov112_021EAAE4

