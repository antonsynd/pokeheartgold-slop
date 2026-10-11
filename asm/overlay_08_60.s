#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02224108
	.public ov08_02224134
	.extern ov08_02224B84
	.extern ov08_02224B98
	.extern ov08_02224BCC
	.extern ov08_02225CF8

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

	thumb_func_start ov08_02224134
ov08_02224134: ; 0x02224134
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02224174 ; =ov08_02225CF8
	lsl r2, r4, #2
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r2]
	bl ov08_02224BCC
	cmp r4, #0
	beq _02224152
	cmp r4, #1
	beq _0222415E
	cmp r4, #2
	pop {r3, r4, r5, pc}
_02224152:
	ldr r1, _02224178 ; =0x0000114D
	ldr r0, [r5, #0x34]
	ldrb r1, [r5, r1]
	bl ov08_02224B98
	pop {r3, r4, r5, pc}
_0222415E:
	ldr r1, _02224178 ; =0x0000114D
	ldr r2, [r5]
	ldrb r1, [r5, r1]
	ldr r0, [r5, #0x34]
	add r1, r2, r1
	add r1, #0x27
	ldrb r1, [r1]
	bl ov08_02224B98
	pop {r3, r4, r5, pc}
	nop
_02224174: .word ov08_02225CF8
_02224178: .word 0x0000114D
	thumb_func_end ov08_02224134

