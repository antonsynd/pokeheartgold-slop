#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022408FC
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_02238F80
	.extern ov70_02244FA4

	.text

	.text
	thumb_func_start ov70_022408FC
ov70_022408FC: ; 0x022408FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl Save_WriteFileAsync
	cmp r0, #2
	bne _0224093C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	add r0, r4, #0
	bl ov70_02238F80
	ldr r0, _02240944 ; =0x00000F0F
	mov r1, #0xba
	str r0, [sp]
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, #0x28]
	add r0, r4, #0
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov70_02238D84
_0224093C:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02240944: .word 0x00000F0F
	thumb_func_end ov70_022408FC

