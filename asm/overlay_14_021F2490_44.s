#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F391C

    .text

	thumb_func_start ov14_021F391C
ov14_021F391C: ; 0x021F391C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _021F3940
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetAffineOverwriteMode
	mov r0, #0xca
	lsl r0, r0, #2
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	pop {r4, pc}
_021F3940:
	mov r0, #0xca
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	pop {r4, pc}
	thumb_func_end ov14_021F391C

