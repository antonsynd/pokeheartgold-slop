	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244CCC
	.public ov83_02246C70

    .text

	thumb_func_start ov83_02244CCC
ov83_02244CCC: ; 0x02244CCC
	ldr r3, _02244CD0 ; =ov83_02246C70
	bx r3
	.balign 4, 0
_02244CD0: .word ov83_02246C70
	thumb_func_end ov83_02244CCC

