#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241DB4
	.public ov70_02243750

	.text

	thumb_func_start ov70_02243750
ov70_02243750: ; 0x02243750
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov70_02241DB4
	ldr r0, [r4, #0x34]
	bl ListMenuItems_Delete
	mov r0, #0x40
	ldrsh r0, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02243750

