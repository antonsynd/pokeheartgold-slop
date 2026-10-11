#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241DB4
	.public ov70_02243E74

	.text

	thumb_func_start ov70_02243E74
ov70_02243E74: ; 0x02243E74
	push {r4, lr}
	add r4, r0, #0
	mov r1, #2
	bl ov70_02241DB4
	ldr r0, [r4, #0x34]
	bl ListMenuItems_Delete
	mov r0, #0x45
	ldrsb r0, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02243E74

