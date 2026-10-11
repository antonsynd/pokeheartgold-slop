#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E50
	.public ov70_02244834

	.text

	thumb_func_start ov70_02244834
ov70_02244834: ; 0x02244834
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203946C
	bl ov00_021EC8D8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #0x13
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02244834

