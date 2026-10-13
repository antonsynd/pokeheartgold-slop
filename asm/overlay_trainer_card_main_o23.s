#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6CF0

	.text

	.text
	thumb_func_start ov51_021E6CF0
ov51_021E6CF0: ; 0x021E6CF0
	push {r4, r5, r6, r7}
	mov r2, #3
	mov r4, #0
	lsl r2, r2, #0xc
_021E6CF8:
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	asr r3, r3, #3
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r6
	mov r3, #0x1d
	ror r5, r3
	add r3, r6, r5
	asr r5, r4, #5
	lsr r5, r5, #0x1a
	lsl r3, r3, #0x18
	add r5, r4, r5
	lsr r3, r3, #0x18
	asr r5, r5, #6
	lsl r5, r5, #3
	add r3, r0, r3
	ldrb r3, [r5, r3]
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r7
	mov r5, #0x1d
	ror r6, r5
	add r5, r7, r6
	lsl r5, r5, #0x18
	add r6, r3, #0
	lsr r5, r5, #0x18
	asr r6, r5
	mov r3, #1
	and r3, r6
	strb r3, [r1, r4]
	add r4, r4, #1
	cmp r4, r2
	blt _021E6CF8
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov51_021E6CF0

