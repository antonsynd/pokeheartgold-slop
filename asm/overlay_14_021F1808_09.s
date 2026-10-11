#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F1F44
	.extern ov14_021F2330

    .text

	.text
	thumb_func_start ov14_021F1F44
ov14_021F1F44: ; 0x021F1F44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov14_021F7B7C
	cmp r0, #1
	bne _021F1F7E
	ldr r0, _021F2008 ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r5, #0
	add r1, #0x28
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0x97
	bl ov14_021F2330
	pop {r3, r4, r5, pc}
_021F1F7E:
	add r0, r5, #0
	bl ov14_021F7340
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #0
	bne _021F1F96
	mov r4, #1
	mvn r4, r4
_021F1F96:
	mov r1, #2
	mvn r1, r1
	cmp r4, r1
	bhi _021F1FCE
	bhs _021F1FE0
	cmp r4, #0x2a
	bhi _021F1FC4
	add r0, r4, #0
	sub r0, #0x24
	bmi _021F1FFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1FB6: ; jump table
	.short _021F1FF0 - _021F1FB6 - 2 ; case 0
	.short _021F1FFA - _021F1FB6 - 2 ; case 1
	.short _021F1FFA - _021F1FB6 - 2 ; case 2
	.short _021F1FFA - _021F1FB6 - 2 ; case 3
	.short _021F1FFA - _021F1FB6 - 2 ; case 4
	.short _021F1FFA - _021F1FB6 - 2 ; case 5
	.short _021F1FFA - _021F1FB6 - 2 ; case 6
_021F1FC4:
	mov r0, #3
	mvn r0, r0
	cmp r4, r0
	beq _021F2004
	b _021F1FFA
_021F1FCE:
	add r0, r1, #1
	cmp r4, r0
	bhi _021F1FD8
	beq _021F1FF0
	b _021F1FFA
_021F1FD8:
	add r0, r1, #2
	cmp r4, r0
	beq _021F2004
	b _021F1FFA
_021F1FE0:
	ldr r0, _021F200C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x74
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021F1FF0:
	add r0, r5, #0
	mov r1, #0xff
	bl ov14_021F15C8
	pop {r3, r4, r5, pc}
_021F1FFA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F15C8
	pop {r3, r4, r5, pc}
_021F2004:
	mov r0, #0x73
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2008: .word 0x000005DD
_021F200C: .word 0x000005DC
	thumb_func_end ov14_021F1F44

