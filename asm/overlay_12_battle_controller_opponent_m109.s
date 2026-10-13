#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225B060
	.public ov12_0225B0A0
	.extern ov12_02260B30
	.extern ov12_02260BA0

	.text

	.text
	thumb_func_start ov12_0225B060
ov12_0225B060: ; 0x0225B060
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r6, [r1]
	ldr r0, [r5, #0x20]
	str r0, [r1, #4]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #9]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xb]
	strb r2, [r1, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r1, #0xd]
	ldr r0, _0225B09C ; =ov12_02260B30
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	nop
_0225B09C: .word ov12_02260B30
	thumb_func_end ov12_0225B060

	thumb_func_start ov12_0225B0A0
ov12_0225B0A0: ; 0x0225B0A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0225B0CA:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0225B0CA
	ldr r0, _0225B0E4 ; =ov12_02260BA0
	mov r2, #0
	strb r2, [r1, #0xe]
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225B0E4: .word ov12_02260BA0
	thumb_func_end ov12_0225B0A0

