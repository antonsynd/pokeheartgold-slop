#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D204
	.public ov65_0221D280

	.text

	thumb_func_start ov65_0221D280
ov65_0221D280: ; 0x0221D280
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #6
	lsl r1, r1, #6
	ldr r4, [r0, r1]
	sub r1, #0x60
	str r1, [sp]
	mov r0, #0x1a
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #4
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r1, #0
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	add r1, r0, #0
	bl BG_SetMaskColor
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x1a
	bl LoadFontPal1
	mov r0, #0
	str r0, [sp]
	mov r0, #9
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	mov r3, #2
	bl ov65_0221D204
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	mov r1, #0x40
	mov r2, #0x1a
	bl LoadFontPal1
	mov r0, #0
	mov r1, #0x60
	mov r2, #0x1a
	bl LoadFontPal0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	mov r1, #5
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x1a
	mov r1, #6
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #4
	mov r1, #0x40
	mov r2, #0x1a
	bl LoadFontPal1
	mov r0, #4
	mov r1, #0x60
	mov r2, #0x1a
	bl LoadFontPal0
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0221D280

