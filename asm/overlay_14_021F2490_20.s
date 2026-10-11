#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2A74

    .text

	thumb_func_start ov14_021F2A74
ov14_021F2A74: ; 0x021F2A74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F2A98 ; =0x000088D2
	mov r3, #1
	strh r3, [r4, r0]
	lsl r0, r1, #2
	add r1, r4, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ManagedSprite_SetDrawPriority
	ldr r0, _021F2A98 ; =0x000088D2
	mov r1, #0
	strh r1, [r4, r0]
	pop {r4, pc}
	nop
_021F2A98: .word 0x000088D2
	thumb_func_end ov14_021F2A74

