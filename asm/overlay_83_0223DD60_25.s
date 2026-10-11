	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_022403B8
	.public ov83_02242D5C

    .text

	thumb_func_start ov83_022403B8
ov83_022403B8: ; 0x022403B8
	ldr r3, _022403BC ; =ov83_02242D5C
	bx r3
	.balign 4, 0
_022403BC: .word ov83_02242D5C
	thumb_func_end ov83_022403B8

