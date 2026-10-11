#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA12C
	.extern ov15_022008B0

	.text

	.text
	thumb_func_start ov15_021FA12C
ov15_021FA12C: ; 0x021FA12C
	push {r3, r4}
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	add r1, r3, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r3, r3, #4
	mul r1, r2
	add r1, r3, r1
	mov r3, #6
	ldrsh r4, [r1, r3]
	ldr r3, _021FA168 ; =0x00000644
	ldr r0, [r0, r3]
	add r3, r4, r0
	ldr r0, _021FA16C ; =ov15_022008B0
	sub r3, #8
	ldrb r0, [r0, r2]
	cmp r0, r3
	bhi _021FA15C
	mov r0, #0
	pop {r3, r4}
	bx lr
_021FA15C:
	ldr r1, [r1]
	lsl r0, r3, #2
	ldrh r0, [r1, r0]
	pop {r3, r4}
	bx lr
	nop
_021FA168: .word 0x00000644
_021FA16C: .word ov15_022008B0
	thumb_func_end ov15_021FA12C

