#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA0E4

	.text

	.text
	thumb_func_start ov15_021FA0E4
ov15_021FA0E4: ; 0x021FA0E4
	cmp r1, #8
	blt _021FA102
	cmp r1, #0xe
	bge _021FA102
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	sub r1, #8
	add r0, r3, #0
	add r0, #0x64
	ldrb r2, [r0]
	mov r0, #0xc
	mul r0, r2
	add r0, r3, r0
	strh r1, [r0, #8]
_021FA102:
	bx lr
	thumb_func_end ov15_021FA0E4

