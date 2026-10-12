#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_0222370C
	.extern ov08_022235D4
	.extern ov08_02223678

	.text

	.text
	thumb_func_start ov08_0222370C
ov08_0222370C: ; 0x0222370C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, _02223770 ; =0x0000114D
	add r5, r1, #0
	ldrb r0, [r6, r0]
	ldr r1, [r6]
	add r0, r1, r0
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #6
	mul r0, r1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _02223734
	mov r4, #0
	b _02223736
_02223734:
	mov r4, #0xc
_02223736:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02223774 ; =0x00030201
	ldr r1, [sp, #0xc]
	lsl r7, r5, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r4, r7
	bl ov08_022235D4
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02223778 ; =0x00010200
	ldr r1, [sp, #0xc]
	add r3, r4, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r3, r7
	bl ov08_02223678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223770: .word 0x0000114D
_02223774: .word 0x00030201
_02223778: .word 0x00010200
	thumb_func_end ov08_0222370C

