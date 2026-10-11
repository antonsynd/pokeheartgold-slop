#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E58
	.public ov70_02241494

	.text

	thumb_func_start ov70_02241494
ov70_02241494: ; 0x02241494
	push {r3, lr}
	bl ov70_02238E58
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov70_02241494

