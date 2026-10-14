#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225A524

	.text

	.text
	thumb_func_start ov12_0225A524
ov12_0225A524: ; 0x0225A524
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x3c
	add r7, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x3c
	bl MIi_CpuClearFast
	mov r2, #0
	strb r2, [r4, #0xa]
	strb r2, [r4, #0xb]
	str r5, [r4]
	ldrb r0, [r7]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #8]
	ldr r0, [sp]
	add r5, r7, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	add r6, r4, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r4, #4]
	add r0, r4, #0
	ldrb r1, [r7, #1]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x24
	ldrsh r0, [r7, r0]
	strh r0, [r4, #0x36]
	ldrh r0, [r7, #0x26]
	strh r0, [r4, #0x38]
	add r0, r7, #0
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3b
	strb r1, [r0]
_0225A596:
	mov r3, #0
_0225A598:
	add r0, r5, r3
	ldrb r1, [r0, #8]
	add r0, r6, r3
	add r3, r3, #1
	strb r1, [r0, #0x10]
	cmp r3, #6
	blt _0225A598
	add r2, r2, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r2, #2
	blt _0225A596
	mov r0, #0
	add r3, r0, #0
_0225A5B4:
	add r2, r7, r0
	ldrb r1, [r2, #8]
	cmp r1, #2
	bne _0225A5C2
	add r1, r4, r0
	strb r3, [r1, #0x1c]
	b _0225A5C8
_0225A5C2:
	ldrb r2, [r2, #2]
	add r1, r4, r0
	strb r2, [r1, #0x1c]
_0225A5C8:
	add r0, r0, #1
	cmp r0, #6
	blt _0225A5B4
	mov r3, #0
	add r5, r7, #0
	add r6, r4, #0
_0225A5D4:
	ldrh r0, [r5, #0x14]
	add r2, r7, r3
	add r5, r5, #2
	strh r0, [r6, #0x24]
	ldrb r1, [r2, #0x1c]
	add r0, r4, r3
	add r0, #0x2c
	strb r1, [r0]
	add r0, r4, r3
	add r2, #0x20
	ldrb r1, [r2]
	add r0, #0x30
	add r3, r3, #1
	add r6, r6, #2
	strb r1, [r0]
	cmp r3, #4
	blt _0225A5D4
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0225A524

