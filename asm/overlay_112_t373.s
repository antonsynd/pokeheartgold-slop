#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1D28
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1D28
ov112_021F1D28: ; 0x021F1D28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0x70
	ldr r0, [r4, r5]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	beq _021F1D56
	ldr r0, [r4, r5]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021F1D56
	ldr r0, [r4, r5]
	bl ManagedSprite_GetActiveAnim
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, r5]
	bl ManagedSprite_SetAnim
_021F1D56:
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_021F1D28

