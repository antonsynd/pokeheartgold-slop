#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3354

    .text

	thumb_func_start ov14_021F3354
ov14_021F3354: ; 0x021F3354
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #7]
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4]
	mov r1, #0
	mov r2, #8
	bl ManagedSprite_SetAffineTranslation
	pop {r4, pc}
	thumb_func_end ov14_021F3354

