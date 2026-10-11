#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2C50
	.public ov14_021F38B0

    .text

	thumb_func_start ov14_021F38B0
ov14_021F38B0: ; 0x021F38B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x12
	mov r2, #0
	add r3, sp, #8
	bl GfGfxLoader_GetCharData
	ldr r2, [sp, #8]
	mov r3, #2
	add r4, r0, #0
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	mov r1, #0xc
	lsl r3, r3, #8
	bl ov14_021F2C50
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x12
	mov r2, #5
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPal
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021F38B0

