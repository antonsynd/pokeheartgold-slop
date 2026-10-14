#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FAD80
	.extern ov15_021FA074
	.extern ov15_021FA098
	.extern ov15_021FD574
	.extern ov15_021FF364
	.extern ov15_021FF6BC
	.extern ov15_022001C4

	.text

	.text
	thumb_func_start ov15_021FAD80
ov15_021FAD80: ; 0x021FAD80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov15_021FA074
	add r6, r0, #0
	add r0, r5, #0
	bl ov15_021FA098
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ov15_021FD574
	add r0, r5, #0
	bl ov15_021FA098
	mov r1, #6
	add r2, r0, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	mov r3, #1
	bl ov15_021FF364
	ldr r2, _021FADE4 ; =0x00000672
	add r0, r5, #0
	ldrb r2, [r5, r2]
	add r1, r4, #0
	bl ov15_022001C4
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r3, r3, r2
	mov r2, #0xa
	ldrb r1, [r3, #0xd]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov15_021FF6BC
	pop {r4, r5, r6, pc}
	nop
_021FADE4: .word 0x00000672
	thumb_func_end ov15_021FAD80

