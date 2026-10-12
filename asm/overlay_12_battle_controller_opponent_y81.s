#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225A914
	.extern ov12_0225FD14
	.extern ov12_02261D30

	.text

	.text
	thumb_func_start ov12_0225A914
ov12_0225A914: ; 0x0225A914
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x70
	add r4, r2, #0
	bl Heap_Alloc
	add r6, r0, #0
	mov r1, #0
	add r0, #0x6a
	strb r1, [r0]
	str r7, [r6]
	add r0, r5, #0
	str r5, [r6, #4]
	add r0, #0x94
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x68
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r6, #0
	add r0, #0x69
	strb r1, [r0]
	add r0, r7, #0
	bl ov12_0223A8DC
	add r3, r6, #0
	str r0, [r6, #0xc]
	add r7, r4, #0
	add r3, #0x10
	mov r2, #0xb
_0225A958:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225A958
	ldr r0, [r5, #0x20]
	str r0, [r6, #8]
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _0225A978
	ldr r0, [r4, #0x50]
	cmp r0, #0x19
	bne _0225A978
	mov r0, #0x1a
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
_0225A978:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _0225A98C
	ldr r0, [r4, #0x50]
	cmp r0, #0x1a
	bne _0225A98C
	mov r0, #0x1a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_0225A98C:
	ldrh r0, [r4, #2]
	add r1, r6, #0
	add r1, #0x6c
	str r0, [sp]
	add r0, r6, #0
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	add r0, #0x6b
	bl ov12_02261D30
	ldr r0, _0225A9AC ; =ov12_0225FD14
	add r1, r6, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A9AC: .word ov12_0225FD14
	thumb_func_end ov12_0225A914

