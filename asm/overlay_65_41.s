#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F0D8
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221F0D8
ov65_0221F0D8: ; 0x0221F0D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	add r6, r2, #0
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221F11C ; =0x00000444
	ldr r3, [r5, r3]
	add r1, r5, r0
	lsl r0, r4, #4
	add r0, r1, r0
	add r1, r6, #0
	mov r2, #1
	bl ov65_0221FB90
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221F11C: .word 0x00000444
	thumb_func_end ov65_0221F0D8

