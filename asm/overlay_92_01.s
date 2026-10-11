	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public _0226383C
	.public ov92_0225C59C

	.text

	thumb_func_start ov92_0225C59C
ov92_0225C59C: ; 0x0225C59C
	ldr r0, _0225C5A0 ; =_0226383C
	bx lr
	.balign 4, 0
_0225C5A0: .word _0226383C
	thumb_func_end ov92_0225C59C

