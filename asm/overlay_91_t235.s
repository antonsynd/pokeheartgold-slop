	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02261BBC
	.extern ov91_0225CB50

	.text

	.text
	thumb_func_start ov91_02261BBC
ov91_02261BBC: ; 0x02261BBC
	add r0, r3, #0
	ldr r3, _02261BC4 ; =ov91_0225CB50
	bx r3
	nop
_02261BC4: .word ov91_0225CB50
	thumb_func_end ov91_02261BBC

