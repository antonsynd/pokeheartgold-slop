	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public IsPaletteFadeFinished
	.extern _021D1034

	.text
	thumb_func_start IsPaletteFadeFinished
IsPaletteFadeFinished: ; 0x0200FB5C
	ldr r0, _0200FB6C ; =_021D1034
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0200FB68
	mov r0, #1
	bx lr
_0200FB68:
	mov r0, #0
	bx lr
	.balign 4, 0
_0200FB6C: .word _021D1034
	thumb_func_end IsPaletteFadeFinished

