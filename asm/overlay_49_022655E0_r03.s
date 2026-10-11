	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265660

    .text

	.text
	thumb_func_start ov49_02265660
ov49_02265660: ; 0x02265660
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02265660

