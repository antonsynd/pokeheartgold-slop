	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221FB7C
	.extern ov07_02234F48

	.text

	.text
	thumb_func_start ov07_0221FB7C
ov07_0221FB7C: ; 0x0221FB7C
	mov r2, #0x14
	mul r2, r0
	ldr r0, _0221FB8C ; =ov07_02234F48
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	bx lr
	nop
_0221FB8C: .word ov07_02234F48
	thumb_func_end ov07_0221FB7C

