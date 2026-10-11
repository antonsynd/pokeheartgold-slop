#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D5FC
	.public ov65_0221FB4C

	.text

	thumb_func_start ov65_0221D5FC
ov65_0221D5FC: ; 0x0221D5FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x14
	mov r1, #0x1a
	str r3, [sp, #8]
	bl String_New
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl Party_GetMonByIndex
	mov r1, #0x77
	add r2, r4, #0
	bl GetMonData
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #8]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov65_0221FB4C
	add r0, r4, #0
	bl String_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov65_0221D5FC

