#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02224108
	.extern ov08_02224B84

	.text

	.text
	thumb_func_start ov08_02224108
ov08_02224108: ; 0x02224108
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov08_02224B84
	bl BattleCursor_Delete
	ldr r3, _02224130 ; =0x0000B4B9
	mov r0, #0xc3
	add r1, r3, #5
	str r3, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl BattleCursor_FreeResources
	add sp, #4
	pop {r3, r4, pc}
	nop
_02224130: .word 0x0000B4B9
	thumb_func_end ov08_02224108

