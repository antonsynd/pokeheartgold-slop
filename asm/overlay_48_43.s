	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A428

	.text

	thumb_func_start ov48_0225A428
ov48_0225A428: ; 0x0225A428
	ldrh r1, [r0, #0x3c]
	lsr r1, r1, #1
	strh r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov48_0225A428

