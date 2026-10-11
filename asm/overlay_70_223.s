#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022408E0

	.text

	thumb_func_start ov70_022408E0
ov70_022408E0: ; 0x022408E0
	push {r4, lr}
	add r4, r0, #0
	bl SetAllPCBoxesModified
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #0x20]
	bl Save_PrepareForAsyncWrite
	mov r0, #0x23
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_022408E0

