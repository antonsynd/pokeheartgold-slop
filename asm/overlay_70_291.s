#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244944

	.text

	thumb_func_start ov70_02244944
ov70_02244944: ; 0x02244944
	push {r4, lr}
	add r4, r0, #0
	bl ov00_021ECD04
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov70_02244944

