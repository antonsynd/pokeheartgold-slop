#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243DA0
	.extern ov70_02238F9C
	.extern ov70_02242EE4
	.extern ov70_02245D80
	.extern ov70_02245D81

	.text

	.text
	thumb_func_start ov70_02243DA0
ov70_02243DA0: ; 0x02243DA0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x48]
	bl ov70_02242EE4
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x48]
	ldr r1, _02243DD4 ; =ov70_02245D80
	lsl r3, r0, #1
	ldr r2, _02243DD8 ; =ov70_02245D81
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	mov r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0x20
	str r0, [r4, #0x50]
	sub r0, #0x21
	pop {r4, pc}
	nop
_02243DD4: .word ov70_02245D80
_02243DD8: .word ov70_02245D81
	thumb_func_end ov70_02243DA0

