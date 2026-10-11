	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022380E4
	.public ov59_02239EF8

	.text

	thumb_func_start ov59_022380E4
ov59_022380E4: ; 0x022380E4
	ldr r3, _022380E8 ; =ov59_02239EF8
	bx r3
	.balign 4, 0
_022380E8: .word ov59_02239EF8
	thumb_func_end ov59_022380E4

