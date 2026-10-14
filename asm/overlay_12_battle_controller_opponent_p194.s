#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02261D30

	.text

	.text
	thumb_func_start ov12_02261D30
ov12_02261D30: ; 0x02261D30
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #0
	bne _02261D6E
	add r0, sp, #0
	ldrh r6, [r0, #0x10]
	mov r1, #9
	add r0, r6, #0
	bl GetMoveAttr
	mov r1, #0x40
	tst r0, r1
	bne _02261D50
	mov r0, #1
	b _02261D52
_02261D50:
	mov r0, #0
_02261D52:
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #9
	bl GetMoveAttr
	mov r1, #0x80
	tst r0, r1
	beq _02261D68
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261D68:
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261D6E:
	sub r3, #0x12
	cmp r3, #0x15
	bhi _02261DBE
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261D80: ; jump table
	.short _02261DAC - _02261D80 - 2 ; case 0
	.short _02261DAC - _02261D80 - 2 ; case 1
	.short _02261DAC - _02261D80 - 2 ; case 2
	.short _02261DAC - _02261D80 - 2 ; case 3
	.short _02261DAC - _02261D80 - 2 ; case 4
	.short _02261DBE - _02261D80 - 2 ; case 5
	.short _02261DBE - _02261D80 - 2 ; case 6
	.short _02261DBE - _02261D80 - 2 ; case 7
	.short _02261DBE - _02261D80 - 2 ; case 8
	.short _02261DBE - _02261D80 - 2 ; case 9
	.short _02261DBE - _02261D80 - 2 ; case 10
	.short _02261DBE - _02261D80 - 2 ; case 11
	.short _02261DBE - _02261D80 - 2 ; case 12
	.short _02261DAC - _02261D80 - 2 ; case 13
	.short _02261DAC - _02261D80 - 2 ; case 14
	.short _02261DBE - _02261D80 - 2 ; case 15
	.short _02261DAC - _02261D80 - 2 ; case 16
	.short _02261DAC - _02261D80 - 2 ; case 17
	.short _02261DB6 - _02261D80 - 2 ; case 18
	.short _02261DAC - _02261D80 - 2 ; case 19
	.short _02261DB6 - _02261D80 - 2 ; case 20
	.short _02261DAC - _02261D80 - 2 ; case 21
_02261DAC:
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261DB6:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02261DBE:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_02261D30

