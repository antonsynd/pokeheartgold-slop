	.include "asm/macros.inc"
	.include "overlay_38_thumb.inc"
	.include "global.inc"
	.public ov38_0221BA10
	.extern _02226020

	.text

	.text
	thumb_func_start ov38_0221BA10
ov38_0221BA10: ; 0x0221BA10
	ldr r1, _0221BA2C ; =_02226020
	mov r0, #0x45
	ldr r2, [r1]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0221BA30 ; =0x00001111
	add r2, r3, r0
	ldr r0, _0221BA34 ; =0x7FFFFFFF
	and r0, r2
	str r0, [r1]
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
_0221BA2C: .word _02226020
_0221BA30: .word 0x00001111
_0221BA34: .word 0x7FFFFFFF
	thumb_func_end ov38_0221BA10

