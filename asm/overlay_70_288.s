#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_02244854
	.public ov70_02244FA4

	.text

	thumb_func_start ov70_02244854
ov70_02244854: ; 0x02244854
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0203A914
	ldr r0, _02244880 ; =0x00000F0F
	ldr r1, _02244884 ; =0x00000BAC
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0xb
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02244880: .word 0x00000F0F
_02244884: .word 0x00000BAC
	thumb_func_end ov70_02244854

