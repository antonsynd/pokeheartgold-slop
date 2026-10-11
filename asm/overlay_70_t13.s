#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C14
	.public ov70_02238C2C
	.extern ov70_02238FB4

	.text

	.text
	thumb_func_start ov70_02238C14
ov70_02238C14: ; 0x02238C14
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp, #4]
	bl ov70_02238C2C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02238C14

	thumb_func_start ov70_02238C2C
ov70_02238C2C: ; 0x02238C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x3d
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl YesNoPrompt_Create
	str r0, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _02238C56
	ldr r1, [sp, #0x30]
	mov r0, #0
	cmp r1, #3
	bgt _02238C52
	mov r0, #1
_02238C52:
	bl ov70_02238FB4
_02238C56:
	ldr r0, [sp, #0x30]
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, #0x18
	add r1, sp, #4
	strb r0, [r1, #0x10]
	strb r4, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	mov r0, #0xf
	bic r2, r0
	strb r2, [r1, #0x12]
	ldrb r2, [r1, #0x12]
	mov r0, #0xf0
	bic r2, r0
	strb r2, [r1, #0x12]
	mov r0, #0
	strb r0, [r1, #0x13]
	ldr r0, [sp]
	add r1, sp, #4
	bl YesNoPrompt_InitFromTemplate
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov70_02238C2C

