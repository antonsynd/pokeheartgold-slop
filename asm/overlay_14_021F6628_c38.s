#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7010
	.extern ov14_021F6B28

    .text

	.text
	thumb_func_start ov14_021F7010
ov14_021F7010: ; 0x021F7010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r2, r0
	beq _021F7076
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F7060
	add r0, r4, #0
	sub r0, #0x1e
	cmp r0, #5
	bhi _021F7052
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7042: ; jump table
	.short _021F7076 - _021F7042 - 2 ; case 0
	.short _021F704E - _021F7042 - 2 ; case 1
	.short _021F704E - _021F7042 - 2 ; case 2
	.short _021F7076 - _021F7042 - 2 ; case 3
	.short _021F7076 - _021F7042 - 2 ; case 4
	.short _021F7076 - _021F7042 - 2 ; case 5
_021F704E:
	mov r4, #0x1e
	b _021F7076
_021F7052:
	add r0, r5, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021F7076
	mov r4, #0
	b _021F7076
_021F7060:
	cmp r4, #0x24
	bne _021F7074
	cmp r4, #0x25
	bne _021F7074
	cmp r4, #0x26
	bne _021F7074
	cmp r4, #0x27
	bne _021F7074
	cmp r4, #0x28
	beq _021F7076
_021F7074:
	mov r4, #0x24
_021F7076:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7010

