#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CC0C
	.extern ov65_0221CB5C
	.extern ov65_0221DCBC
	.extern ov65_0221DDC0
	.extern ov65_0221DE24

	.text

	.text
	thumb_func_start ov65_0221CC0C
ov65_0221CC0C: ; 0x0221CC0C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0221CCA8 ; =0x00002220
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0221CC22
	blx r1
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
_0221CC22:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _0221CC4C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221CC38: ; jump table
	.short _0221CC4C - _0221CC38 - 2 ; case 0
	.short _0221CC4C - _0221CC38 - 2 ; case 1
	.short _0221CC40 - _0221CC38 - 2 ; case 2
	.short _0221CC46 - _0221CC38 - 2 ; case 3
_0221CC40:
	add sp, #4
	mov r0, #2
	pop {r3, r4, pc}
_0221CC46:
	add sp, #4
	mov r0, #3
	pop {r3, r4, pc}
_0221CC4C:
	mov r0, #0
	mov r2, #0xd1
	str r0, [sp]
	mov r0, #0x56
	lsl r2, r2, #2
	ldr r3, _0221CCAC ; =0x0000069C
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, #0x94
	add r3, r4, r3
	bl ov65_0221DDC0
	cmp r0, #0
	beq _0221CC72
	add r0, r4, #0
	bl ov65_0221CB5C
_0221CC72:
	mov r0, #1
	mov r2, #0xd2
	str r0, [sp]
	mov r0, #0x57
	lsl r2, r2, #2
	ldr r3, _0221CCAC ; =0x0000069C
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, #0x98
	add r3, r4, r3
	bl ov65_0221DDC0
	add r0, r4, #0
	add r0, #0x9c
	bl ov65_0221DCBC
	add r0, r4, #0
	add r4, #0x94
	ldr r2, [r4]
	mov r1, #0x17
	bl ov65_0221DE24
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0221CCA8: .word 0x00002220
_0221CCAC: .word 0x0000069C
	thumb_func_end ov65_0221CC0C

