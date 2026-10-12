#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EE26C.inc"
	.include "global.inc"
	.public ov14_021EE3C8

    .text

	.text
	thumb_func_start ov14_021EE3C8
ov14_021EE3C8: ; 0x021EE3C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021EE402
	bhs _021EE472
	cmp r0, #9
	bhi _021EE4A4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EE3EE: ; jump table
	.short _021EE40C - _021EE3EE - 2 ; case 0
	.short _021EE416 - _021EE3EE - 2 ; case 1
	.short _021EE420 - _021EE3EE - 2 ; case 2
	.short _021EE42A - _021EE3EE - 2 ; case 3
	.short _021EE434 - _021EE3EE - 2 ; case 4
	.short _021EE43E - _021EE3EE - 2 ; case 5
	.short _021EE448 - _021EE3EE - 2 ; case 6
	.short _021EE45A - _021EE3EE - 2 ; case 7
	.short _021EE46A - _021EE3EE - 2 ; case 8
	.short _021EE48A - _021EE3EE - 2 ; case 9
_021EE402:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021EE494
	b _021EE4A4
_021EE40C:
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F1448
	pop {r4, pc}
_021EE416:
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1448
	pop {r4, pc}
_021EE420:
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F1448
	pop {r4, pc}
_021EE42A:
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F1448
	pop {r4, pc}
_021EE434:
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F1448
	pop {r4, pc}
_021EE43E:
	add r0, r4, #0
	mov r1, #5
	bl ov14_021F1448
	pop {r4, pc}
_021EE448:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F1504
	pop {r4, pc}
_021EE45A:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1504
	pop {r4, pc}
_021EE46A:
	add r0, r4, #0
	bl ov14_021F1540
	pop {r4, pc}
_021EE472:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EE4A4
	add r0, r4, #0
	mov r1, #0x71
	bl ov14_021F0244
	pop {r4, pc}
_021EE48A:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021EE494:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F1534
	pop {r4, pc}
_021EE4A4:
	mov r0, #0x61
	pop {r4, pc}
	.balign 4, 0
_021EE4A8: .word 0x000005DC
	thumb_func_end ov14_021EE3C8

