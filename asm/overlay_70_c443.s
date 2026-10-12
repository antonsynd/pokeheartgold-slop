#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243FE0
	.extern ov70_02243FD4
	.extern ov70_02245E84
	.extern ov70_02245F58
	.extern ov70_02245F5C

	.text

	.text
	thumb_func_start ov70_02243FE0
ov70_02243FE0: ; 0x02243FE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0224402C ; =ov70_02245E84
	lsl r3, r1, #2
	ldr r4, [r2, r3]
	ldr r2, _02244030 ; =ov70_02245F5C
	lsl r1, r1, #3
	ldr r2, [r2, r1]
	add r7, r0, #0
	cmp r2, #0
	ble _02244018
	mov r5, #0
	cmp r2, #0
	ble _02244026
	ldr r0, _02244034 ; =ov70_02245F58
	add r6, r0, r1
_02243FFE:
	add r0, r7, #0
	add r1, r4, r5
	bl ov70_02243FD4
	cmp r0, #0
	ble _0224400E
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224400E:
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _02243FFE
	b _02244026
_02244018:
	add r1, r4, #0
	bl ov70_02243FD4
	cmp r0, #0
	ble _02244026
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244026:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224402C: .word ov70_02245E84
_02244030: .word ov70_02245F5C
_02244034: .word ov70_02245F58
	thumb_func_end ov70_02243FE0

