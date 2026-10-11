#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E144
	.public ov65_0221E194
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221E144
ov65_0221E144: ; 0x0221E144
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	str r0, [sp]
	ldr r0, _0221E188 ; =0x000005B4
	lsl r3, r1, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221E18C ; =ov65_0221E194
	ldr r0, _0221E190 ; =0x00002220
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221E188: .word 0x000005B4
_0221E18C: .word ov65_0221E194
_0221E190: .word 0x00002220
	thumb_func_end ov65_0221E144

