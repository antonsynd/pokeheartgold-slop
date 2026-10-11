#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2DC4

    .text

	thumb_func_start ov14_021F2DC4
ov14_021F2DC4: ; 0x021F2DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl Boxmon_GetIconNaix
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021F2DE4 ; =0x00000454
	mov r2, #0
	ldr r0, [r5, r0]
	add r3, r4, #0
	bl GfGfxLoader_GetCharDataFromOpenNarc
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2DE4: .word 0x00000454
	thumb_func_end ov14_021F2DC4

