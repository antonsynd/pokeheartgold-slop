	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022344E4

	.text

	.text
	thumb_func_start ov07_022344E4
ov07_022344E4: ; 0x022344E4
	push {r3, lr}
	sub r1, r1, r3
	neg r1, r1
	sub r0, r0, r2
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r1, #0
	asr r0, r0, #0x10
	mul r2, r1
	add r1, r0, #0
	mul r1, r0
	add r0, r2, r1
	lsl r0, r0, #0xc
	bl FX_Sqrt
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov07_022344E4

