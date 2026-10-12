#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02224064
	.extern ov08_02223CD4
	.extern ov08_02223E3C
	.extern ov08_02223E74
	.extern ov08_02223F74

	.text

	.text
	thumb_func_start ov08_02224064
ov08_02224064: ; 0x02224064
	push {r3, r4, r5, lr}
	ldr r1, _022240A0 ; =0x0000114D
	add r4, r0, #0
	ldrb r1, [r4, r1]
	ldr r2, [r4]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov08_02223CD4
	add r5, r0, #0
	ldr r2, _022240A4 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	bl ov08_02223E3C
	ldr r3, _022240A4 ; =0x0000B4B7
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov08_02223E74
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r2, #0x2c
	bl ov08_02223F74
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022240A0: .word 0x0000114D
_022240A4: .word 0x0000B4B7
	thumb_func_end ov08_02224064

