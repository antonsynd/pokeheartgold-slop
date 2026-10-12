#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE9E4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE9E4
ov112_021EE9E4: ; 0x021EE9E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xd]
	add r7, r1, #0
	mov r6, #0
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, sp, #0x10
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _021EEA06
	mov r6, #0xfe
_021EEA06:
	mov r0, #1
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r2, r3, #0x18
	str r0, [sp, #4]
	ldrh r1, [r4]
	add r0, r7, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl ChangePersonalityToNatureGenderAndAbility
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r1, [r4]
	ldrb r2, [r4, #0xc]
	add r0, r5, #0
	mov r3, #0x20
	bl CreateMon
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #2
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x36
	add r2, r4, #4
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x37
	add r2, r4, #6
	bl SetMonData
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x38
	add r2, #8
	bl SetMonData
	add r4, #0xa
	add r0, r5, #0
	mov r1, #0x39
	add r2, r4, #0
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0x10
	bl SetMonData
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov112_021EE9E4

