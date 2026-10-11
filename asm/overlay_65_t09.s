#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CA64
	.extern ov65_0221FEEC

	.text

	.text
	thumb_func_start ov65_0221CA64
ov65_0221CA64: ; 0x0221CA64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _0221CAD4 ; =0x0000040C
	lsl r7, r5, #2
	add r6, r0, r1
	add r4, r2, #0
	ldr r0, [r6, r7]
	add r1, r4, #7
	bl Sprite_SetAnimCtrlSeq
	cmp r5, #2
	bne _0221CAA6
	mov r0, #0x20
	sub r1, r4, #1
	str r0, [sp]
	mov r0, #0x1a
	lsl r2, r1, #2
	ldr r1, _0221CAD8 ; =ov65_0221FEEC
	str r0, [sp, #4]
	mov r0, #0xa2
	ldr r1, [r1, r2]
	add r3, r0, #0
	mov r2, #5
	add r3, #0xbe
	bl GfGfxLoader_GXLoadPal
	ldr r0, [r6, r7]
	mov r1, #0xb
	bl Sprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0221CAA6:
	cmp r5, #3
	bne _0221CACE
	mov r0, #0x20
	sub r1, r4, #1
	str r0, [sp]
	mov r0, #0x1a
	lsl r2, r1, #2
	ldr r1, _0221CAD8 ; =ov65_0221FEEC
	str r0, [sp, #4]
	mov r0, #0xa2
	ldr r1, [r1, r2]
	add r3, r0, #0
	mov r2, #5
	add r3, #0xde
	bl GfGfxLoader_GXLoadPal
	ldr r0, [r6, r7]
	mov r1, #0xc
	bl Sprite_SetPaletteOverride
_0221CACE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CAD4: .word 0x0000040C
_0221CAD8: .word ov65_0221FEEC
	thumb_func_end ov65_0221CA64

