#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244804
	.extern ov70_02238D84
	.extern ov70_02244FA4

	.text

	.text
	thumb_func_start ov70_02244804
ov70_02244804: ; 0x02244804
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0224482C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02244830 ; =0x00000BAC
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x12
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224482C: .word 0x00000F0F
_02244830: .word 0x00000BAC
	thumb_func_end ov70_02244804

