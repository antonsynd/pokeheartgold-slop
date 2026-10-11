	.include "asm/macros.inc"
	.include "overlay_38_thumb.inc"
	.include "global.inc"
	.public ov38_0221BA00
	.extern _02226020

	.text

	.text
	thumb_func_start ov38_0221BA00
ov38_0221BA00: ; 0x0221BA00
	lsl r1, r0, #0x10
	orr r1, r0
	ldr r0, _0221BA0C ; =_02226020
	str r1, [r0]
	bx lr
	nop
_0221BA0C: .word _02226020
	thumb_func_end ov38_0221BA00

