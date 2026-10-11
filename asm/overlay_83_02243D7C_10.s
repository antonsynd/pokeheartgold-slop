	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244A88
	.public ov83_02246C2C

    .text

	thumb_func_start ov83_02244A88
ov83_02244A88: ; 0x02244A88
	ldr r3, _02244A8C ; =ov83_02246C2C
	bx r3
	.balign 4, 0
_02244A8C: .word ov83_02246C2C
	thumb_func_end ov83_02244A88

