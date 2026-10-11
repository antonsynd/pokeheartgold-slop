	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CABC
	.public ov91_02261B9C

	.text

	thumb_func_start ov91_02261B9C
ov91_02261B9C: ; 0x02261B9C
	push {r4, lr}
	add r4, r0, #0
	add r1, r2, #0
	add r0, r3, #0
	add r2, r4, #0
	bl ov91_0225CABC
	pop {r4, pc}
	thumb_func_end ov91_02261B9C

