#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022396F4
	.extern ov70_02238D84
	.extern ov70_02238F10
	.extern ov70_02239B84

	.text

	.text
	thumb_func_start ov70_022396F4
ov70_022396F4: ; 0x022396F4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239728 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #4
	mov r2, #1
	mov r3, #0
	bl ov70_02239B84
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #6
	bl ov70_02238D84
	ldr r0, _0223972C ; =0x00000DCC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	bl ov70_02238F10
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02239728: .word 0x00000F0F
_0223972C: .word 0x00000DCC
	thumb_func_end ov70_022396F4

