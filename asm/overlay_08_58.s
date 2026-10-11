#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_0222400C
	.public ov08_02224064
	.extern ov08_02223CD4
	.extern ov08_02223E3C
	.extern ov08_02223E74
	.extern ov08_02223F74
	.extern ov08_02225D74

	.text

	.text
	thumb_func_start ov08_0222400C
ov08_0222400C: ; 0x0222400C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, _0222405C ; =ov08_02225D74
	mov r4, #0
	add r7, r5, #0
_02224016:
	add r0, r5, #0
	add r1, r4, #0
	bl ov08_02223CD4
	str r0, [sp]
	cmp r0, #0
	beq _0222404E
	ldr r2, _02224060 ; =0x0000B4B7
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, r2
	bl ov08_02223E3C
	ldr r3, _02224060 ; =0x0000B4B7
	lsl r2, r4, #0x10
	ldr r1, [sp]
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl ov08_02223E74
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r6]
	ldr r2, [r6, #4]
	bl ov08_02223F74
_0222404E:
	add r4, r4, #1
	add r6, #8
	add r7, r7, #4
	cmp r4, #6
	blo _02224016
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222405C: .word ov08_02225D74
_02224060: .word 0x0000B4B7
	thumb_func_end ov08_0222400C

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

