#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2A44

    .text

	thumb_func_start ov14_021F2A44
ov14_021F2A44: ; 0x021F2A44
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #1
	bne _021F2A5C
	mov r0, #1
	pop {r3, pc}
_021F2A5C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov14_021F2A44

