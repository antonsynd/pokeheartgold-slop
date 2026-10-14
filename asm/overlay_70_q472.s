#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244124
	.extern ov70_02238E44
	.extern ov70_02246780

	.text

	.text
	thumb_func_start ov70_02244124
ov70_02244124: ; 0x02244124
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_02238E44
	bl sub_0203A930
	ldr r4, [r5, #0x2c]
	ldr r1, _02244150 ; =ov70_02246780
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x2c]
	cmp r4, r1
	beq _0224414E
	mov r1, #0x16
	mov r2, #0
	lsl r1, r1, #8
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_0224414E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244150: .word ov70_02246780
	thumb_func_end ov70_02244124

