	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B928
	.public ov49_0225BFEC

    .text

	thumb_func_start ov49_0225B928
ov49_0225B928: ; 0x0225B928
	ldr r3, _0225B930 ; =ov49_0225BFEC
	add r0, #8
	bx r3
	nop
_0225B930: .word ov49_0225BFEC
	thumb_func_end ov49_0225B928

