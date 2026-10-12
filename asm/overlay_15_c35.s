#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA68C

	.text

	.text
	thumb_func_start ov15_021FA68C
ov15_021FA68C: ; 0x021FA68C
	push {r4, r5}
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r5, [r0, r2]
	mov r3, #0
	add r2, r5, #0
	add r4, r3, #0
_021FA69A:
	ldrb r0, [r2, #0xc]
	cmp r1, r0
	bne _021FA6AE
	add r0, r5, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021FA6AE
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_021FA6AE:
	add r3, r3, #1
	add r2, #0xc
	add r4, #0xc
	cmp r3, #8
	blt _021FA69A
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov15_021FA68C

