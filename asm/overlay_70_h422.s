#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243400
	.extern ov70_02241DB4

	.text

	.text
	thumb_func_start ov70_02243400
ov70_02243400: ; 0x02243400
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl ov70_02241DB4
	mov r0, #0x3e
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _02243416
	mov r0, #0xc
	b _02243418
_02243416:
	mov r0, #7
_02243418:
	str r0, [r4, #0x4c]
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ov70_02243400

