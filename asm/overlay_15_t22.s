#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA0E4
	.public ov15_021FA104

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

	thumb_func_start ov15_021FA104
ov15_021FA104: ; 0x021FA104
	add r2, r1, #0
	sub r2, #0xe
	cmp r2, #1
	bhi _021FA110
	mov r0, #0
	bx lr
_021FA110:
	cmp r1, #7
	bgt _021FA124
	ldr r1, _021FA128 ; =0x00000644
	ldr r0, [r0, r1]
	cmp r0, #8
	blt _021FA124
	cmp r0, #0xd
	bgt _021FA124
	mov r0, #0
	bx lr
_021FA124:
	mov r0, #1
	bx lr
	.balign 4, 0
_021FA128: .word 0x00000644
	thumb_func_end ov15_021FA104

