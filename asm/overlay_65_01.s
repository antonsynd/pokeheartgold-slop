#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221BFBC

	.text

	thumb_func_start ov65_0221BFBC
ov65_0221BFBC: ; 0x0221BFBC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [sp, #0x10]
	add r4, r2, #0
	lsl r1, r1, #4
	add r1, #0x92
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r6, r3, #0
	lsl r1, r1, #5
	lsl r2, r2, #8
	bl GX_LoadOBJ
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r1, #0xa
	bl Sprite_SetPalOffset
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_0221BFBC

