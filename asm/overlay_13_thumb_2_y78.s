	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226C7C

	.text

	.text
	thumb_func_start ov13_02226C7C
ov13_02226C7C: ; 0x02226C7C
	mov r3, #0
	cmp r2, #0
	bls _02226C90
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
_02226C86:
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r3, r2
	blo _02226C86
_02226C90:
	bx lr
	.balign 4, 0
	thumb_func_end ov13_02226C7C

