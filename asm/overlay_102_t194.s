	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC478

	.text

	.text
	thumb_func_start ov102_021EC478
ov102_021EC478: ; 0x021EC478
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021EC490
	ldr r2, [r1, #8]
	ldr r0, [r1, #0x10]
	add r0, r2, r0
	str r0, [r1, #8]
	asr r2, r0, #0xc
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	b _021EC494
_021EC490:
	ldr r0, [r1, #0xc]
	asr r2, r0, #0xc
_021EC494:
	ldr r3, _021EC49C ; =G2x_SetBlendBrightness_
	ldr r0, _021EC4A0 ; =0x04000050
	ldr r1, [r1]
	bx r3
	.balign 4, 0
_021EC49C: .word G2x_SetBlendBrightness_
_021EC4A0: .word 0x04000050
	thumb_func_end ov102_021EC478

