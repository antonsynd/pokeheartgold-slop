#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2C50
	.public ov14_021F3D0C

    .text

	thumb_func_start ov14_021F3D0C
ov14_021F3D0C: ; 0x021F3D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020776B4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02077678
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	add r0, r6, #0
	mov r2, #1
	add r3, sp, #4
	bl GfGfxLoader_GetCharData
	ldr r2, [sp, #4]
	mov r3, #1
	add r6, r0, #0
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r3, #8
	bl ov14_021F2C50
	add r0, r6, #0
	bl Heap_Free
	mov r0, #0xbf
	lsl r0, r0, #2
	add r5, r5, r0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ManagedSprite_GetPaletteOverrideOffset
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0207769C
	add r1, r0, #0
	ldr r0, [r5, r4]
	add r1, r6, r1
	bl ManagedSprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3D0C

