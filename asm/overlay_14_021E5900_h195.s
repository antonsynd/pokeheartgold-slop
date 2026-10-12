#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021EAA04

    .text

	.text
	thumb_func_start ov14_021EAA04
ov14_021EAA04: ; 0x021EAA04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bls _021EAA1E
	b _021EAB4E
_021EAA1E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAA2A: ; jump table
	.short _021EAA36 - _021EAA2A - 2 ; case 0
	.short _021EAA5A - _021EAA2A - 2 ; case 1
	.short _021EAA76 - _021EAA2A - 2 ; case 2
	.short _021EAA86 - _021EAA2A - 2 ; case 3
	.short _021EAACE - _021EAA2A - 2 ; case 4
	.short _021EAADE - _021EAA2A - 2 ; case 5
_021EAA36:
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA5A:
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EAB4E
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA76:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EAA86:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EAA98
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA98:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021EAB4E
_021EAACE:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EAADE:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EAAEC
	mov r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EAAEC:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0xca
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xca
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_021EAB4E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021EAA04

