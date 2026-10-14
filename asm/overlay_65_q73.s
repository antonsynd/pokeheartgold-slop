#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221EE18
	.extern ov65_0221CADC
	.extern ov65_0221D5FC
	.extern ov65_0221ED94
	.extern ov65_0221F028

	.text

	.text
	thumb_func_start ov65_0221EE18
ov65_0221EE18: ; 0x0221EE18
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0221EEE8 ; =0x000022C8
	add r4, r0, #0
	ldr r0, [r4, r3]
	add r2, r3, #0
	add r0, r0, #1
	str r0, [r4, r3]
	add r0, r4, #0
	add r0, #0x94
	ldr r1, [r0]
	add r2, #8
	add r2, r4, r2
	lsl r0, r1, #2
	str r2, [sp]
	ldr r2, _0221EEEC ; =0x0000069C
	lsl r1, r1, #4
	add r2, r4, r2
	add r1, r2, r1
	mov r2, #0xdf
	str r1, [sp, #4]
	lsl r2, r2, #2
	add r5, r4, r0
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x30
	add r2, #0x60
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov65_0221ED94
	add r0, r4, #0
	add r0, #0x98
	ldr r3, _0221EEF0 ; =0x000022E8
	ldr r5, [r0]
	add r1, r4, r3
	str r1, [sp]
	ldr r1, _0221EEEC ; =0x0000069C
	lsl r0, r5, #2
	add r2, r4, r1
	lsl r1, r5, #4
	add r1, r2, r1
	mov r2, #0xdf
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r5, r4, r0
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #0x30
	add r2, #0x60
	sub r3, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov65_0221ED94
	ldr r1, _0221EEE8 ; =0x000022C8
	ldr r0, [r4, r1]
	cmp r0, #0x15
	bne _0221EEE0
	mov r0, #1
	add r2, r4, #0
	str r0, [sp]
	ldr r0, _0221EEF4 ; =0x00000574
	sub r1, #0xa4
	add r2, #0x94
	ldr r1, [r4, r1]
	ldr r2, [r2]
	add r0, r4, r0
	mov r3, #8
	bl ov65_0221D5FC
	mov r0, #1
	add r2, r4, #0
	str r0, [sp]
	ldr r1, _0221EEF8 ; =0x00002228
	add r2, #0x98
	ldr r0, _0221EEFC ; =0x00000584
	ldr r2, [r2]
	ldr r1, [r4, r1]
	add r0, r4, r0
	sub r2, r2, #6
	mov r3, #8
	bl ov65_0221D5FC
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	add r0, r4, #0
	bl ov65_0221CADC
	ldr r1, _0221EF00 ; =ov65_0221F028
	ldr r0, _0221EF04 ; =0x00002220
	str r1, [r4, r0]
	ldr r0, _0221EF08 ; =0x00000424
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
_0221EEE0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0221EEE8: .word 0x000022C8
_0221EEEC: .word 0x0000069C
_0221EEF0: .word 0x000022E8
_0221EEF4: .word 0x00000574
_0221EEF8: .word 0x00002228
_0221EEFC: .word 0x00000584
_0221EF00: .word ov65_0221F028
_0221EF04: .word 0x00002220
_0221EF08: .word 0x00000424
	thumb_func_end ov65_0221EE18

