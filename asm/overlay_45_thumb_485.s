#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0223093C

	.text

	.text
	thumb_func_start ov45_0223093C
ov45_0223093C: ; 0x0223093C
	push {r3, r4}
	ldrb r3, [r0, #1]
	mov r2, #1
	lsl r1, r1, #0x18
	bic r3, r2
	add r2, r3, #0
	mov r4, #1
	orr r2, r4
	strb r2, [r0, #1]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	ldrb r2, [r0, #1]
	mov r3, #0xfe
	lsr r1, r1, #0x18
	bic r2, r3
	orr r1, r2
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov45_0223093C

