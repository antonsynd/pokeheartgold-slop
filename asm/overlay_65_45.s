#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E270
	.public ov65_0221F354
	.public ov65_0221F3B0
	.public ov65_0221F5A0
	.public ov65_0221F79C

	.text

	thumb_func_start ov65_0221F354
ov65_0221F354: ; 0x0221F354
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _0221F39C
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0221F39C
	cmp r1, #3
	bne _0221F37C
	cmp r0, #3
	bne _0221F37C
	ldr r0, _0221F3A0 ; =0x000036A4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, _0221F3A4 ; =ov65_0221F3B0
	ldr r0, _0221F3A8 ; =0x00002220
	str r1, [r4, r0]
	b _0221F382
_0221F37C:
	ldr r1, _0221F3AC ; =ov65_0221E270
	ldr r0, _0221F3A8 ; =0x00002220
	str r1, [r4, r0]
_0221F382:
	mov r0, #0
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	add r0, r4, #0
	bl ov65_0221F79C
	cmp r0, #0
	beq _0221F398
	mov r0, #0x18
	str r0, [r4, #0x74]
	b _0221F39C
_0221F398:
	mov r0, #0x22
	str r0, [r4, #0x74]
_0221F39C:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0221F3A0: .word 0x000036A4
_0221F3A4: .word ov65_0221F3B0
_0221F3A8: .word 0x00002220
_0221F3AC: .word ov65_0221E270
	thumb_func_end ov65_0221F354

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

