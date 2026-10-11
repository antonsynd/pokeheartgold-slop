#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021F00BC

    .text

	.text
	thumb_func_start ov14_021F00BC
ov14_021F00BC: ; 0x021F00BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r2, #0
	ldr r4, [r0, #0xc]
	ldrh r1, [r4]
	bl ov14_021F34C8
	ldr r0, _021F011C ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F00FC
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
_021F00FC:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	sub r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	bl ov14_021F1F38
	mov r0, #0x91
	pop {r3, r4, r5, pc}
	nop
_021F011C: .word 0x000005EA
	thumb_func_end ov14_021F00BC

