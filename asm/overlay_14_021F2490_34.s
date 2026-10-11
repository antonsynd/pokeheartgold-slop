#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F33FC

    .text

	thumb_func_start ov14_021F33FC
ov14_021F33FC: ; 0x021F33FC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	pop {r4, pc}
	thumb_func_end ov14_021F33FC

