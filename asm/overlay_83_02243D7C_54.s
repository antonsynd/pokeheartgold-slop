	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244CDC
	.public ov83_022469D8

    .text

	thumb_func_start ov83_022469D8
ov83_022469D8: ; 0x022469D8
	ldr r3, _022469E0 ; =ov83_02244CDC
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xc]
	bx r3
	.balign 4, 0
_022469E0: .word ov83_02244CDC
	thumb_func_end ov83_022469D8

