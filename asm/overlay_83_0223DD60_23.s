	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0224037C
	.public ov83_02242D5C

    .text

	thumb_func_start ov83_0224037C
ov83_0224037C: ; 0x0224037C
	ldr r3, _02240380 ; =ov83_02242D5C
	bx r3
	.balign 4, 0
_02240380: .word ov83_02242D5C
	thumb_func_end ov83_0224037C

