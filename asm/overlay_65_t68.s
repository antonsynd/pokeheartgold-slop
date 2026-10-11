#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F3B0
	.extern ov65_0221E270
	.extern ov65_0221F5A0

	.text

	.text
	thumb_func_start ov65_0221F3B0
ov65_0221F3B0: ; 0x0221F3B0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02034AEC
	ldr r0, [r4, #8]
	add r3, r4, #0
	add r2, r4, #0
	ldr r1, _0221F3E8 ; =0x00002224
	str r0, [sp]
	add r3, #0x98
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r2, #0x94
	ldr r3, [r3]
	ldr r1, [r4, r1]
	ldr r2, [r2]
	sub r3, r3, #6
	bl ov65_0221F5A0
	ldr r1, _0221F3EC ; =ov65_0221E270
	ldr r0, _0221F3F0 ; =0x00002220
	str r1, [r4, r0]
	mov r0, #2
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0221F3E8: .word 0x00002224
_0221F3EC: .word ov65_0221E270
_0221F3F0: .word 0x00002220
	thumb_func_end ov65_0221F3B0

