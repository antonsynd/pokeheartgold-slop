#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243CEC
	.extern ov70_02238F9C
	.extern ov70_02242E58
	.extern ov70_02245D66
	.extern ov70_02245D67

	.text

	.text
	thumb_func_start ov70_02243CEC
ov70_02243CEC: ; 0x02243CEC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x48]
	bl ov70_02242E58
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x48]
	ldr r1, _02243D20 ; =ov70_02245D66
	lsl r3, r0, #1
	ldr r2, _02243D24 ; =ov70_02245D67
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	mov r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0x1d
	str r0, [r4, #0x50]
	sub r0, #0x1e
	pop {r4, pc}
	nop
_02243D20: .word ov70_02245D66
_02243D24: .word ov70_02245D67
	thumb_func_end ov70_02243CEC

