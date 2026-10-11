	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223ABE4
	.public ov59_0223AF7C

	.text

	thumb_func_start ov59_0223ABE4
ov59_0223ABE4: ; 0x0223ABE4
	ldr r3, _0223ABE8 ; =ov59_0223AF7C
	bx r3
	.balign 4, 0
_0223ABE8: .word ov59_0223AF7C
	thumb_func_end ov59_0223ABE4

