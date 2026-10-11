	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EEF0

	.text

	.text
	thumb_func_start ov10_0221EEF0
ov10_0221EEF0: ; 0x0221EEF0
	ldr r1, _0221EF0C ; =0x00002134
	add r2, r1, #4
	ldr r2, [r0, r2]
	ldr r3, [r0, r1]
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	add r2, r1, #4
	ldr r2, [r0, r2]
	add r1, r1, #4
	add r2, r2, #1
	str r2, [r0, r1]
	add r0, r3, #0
	bx lr
	nop
_0221EF0C: .word 0x00002134
	thumb_func_end ov10_0221EEF0

