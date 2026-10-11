#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244888
	.public ov70_02245124

	.text

	thumb_func_start ov70_02244888
ov70_02244888: ; 0x02244888
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_02039418
	mov r0, #4
	bl Sys_SetSleepDisableFlag
	add r0, r4, #0
	bl ov70_02245124
	add r0, r4, #0
	add r0, #0x54
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov00_021EC3F0
	mov r0, #2
	bl ov00_021EC454
	bl ov00_021EC4A4
	mov r0, #3
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov70_02244888

