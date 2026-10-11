#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02242FC4
	.public ov70_02243E8C

	.text

	thumb_func_start ov70_02243E8C
ov70_02243E8C: ; 0x02243E8C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r6, r2, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov70_02242FC4
	add r0, r4, #0
	bl String_Delete
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_02243E8C

