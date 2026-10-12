#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225AC1C
	.extern ov12_02260418

	.text

	.text
	thumb_func_start ov12_0225AC1C
ov12_0225AC1C: ; 0x0225AC1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x68
	str r2, [sp]
	bl Heap_Alloc
	add r1, r0, #0
	str r5, [r1]
	ldr r0, [sp]
	str r4, [r1, #4]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x60
	strb r2, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x61
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x62
	strb r0, [r2]
	ldr r2, [sp]
	add r7, r1, #0
	ldrb r3, [r2, #1]
	add r2, r1, #0
	add r2, #0x63
	strb r3, [r2]
	ldr r2, [sp]
	add r3, r1, #0
	ldrb r2, [r2, #2]
	str r2, [r1, #0x64]
	ldr r2, [sp]
	mov ip, r2
_0225AC68:
	mov r4, ip
	ldrh r4, [r4, #4]
	strh r4, [r7, #0x20]
	ldr r4, [sp]
	add r7, r7, #2
	add r6, r4, r0
	add r4, r1, r0
	ldrb r5, [r6, #0xc]
	add r4, #0x28
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x10]
	add r4, #0x2c
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x14]
	add r4, #0x30
	add r0, r0, #1
	strb r5, [r4]
	ldr r4, [r2, #0x18]
	add r2, r2, #4
	str r4, [r3, #0x34]
	mov r4, ip
	add r4, r4, #2
	add r3, r3, #4
	mov ip, r4
	cmp r0, #4
	blt _0225AC68
	ldr r0, _0225ACAC ; =ov12_02260418
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ACAC: .word ov12_02260418
	thumb_func_end ov12_0225AC1C

