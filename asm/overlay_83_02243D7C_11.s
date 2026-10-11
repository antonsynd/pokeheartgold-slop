	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244A90
	.public ov83_02246C70

    .text

	thumb_func_start ov83_02244A90
ov83_02244A90: ; 0x02244A90
	ldr r3, _02244A94 ; =ov83_02246C70
	bx r3
	.balign 4, 0
_02244A94: .word ov83_02246C70
	thumb_func_end ov83_02244A90

