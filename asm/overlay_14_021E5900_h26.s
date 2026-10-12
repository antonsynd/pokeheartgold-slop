#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6100

    .text

	.text
	thumb_func_start ov14_021E6100
ov14_021E6100: ; 0x021E6100
	push {r3, lr}
	cmp r2, #0x1e
	bhs _021E610E
	ldr r0, [r0, #4]
	bl PCStorage_DeleteBoxMonByIndexPair
	pop {r3, pc}
_021E610E:
	sub r2, #0x1e
	ldr r0, [r0, #8]
	add r1, r2, #0
	bl Party_RemoveMon
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6100

