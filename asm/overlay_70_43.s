#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C14
	.public ov70_022399D8

	.text

	thumb_func_start ov70_022399D8
ov70_022399D8: ; 0x022399D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	mov r1, #0xa
	str r0, [sp]
	add r2, r1, #0
	ldr r0, [r4, #4]
	add r2, #0xf8
	mov r3, #3
	bl ov70_02238C14
	ldr r1, _02239A08 ; =0x000011C8
	str r0, [r4, r1]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	ldr r0, _02239A0C ; =0x00000DCC
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02239A08: .word 0x000011C8
_02239A0C: .word 0x00000DCC
	thumb_func_end ov70_022399D8

