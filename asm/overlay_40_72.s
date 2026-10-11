	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FF74
	.public ov40_02230424
	.public ov40_02230638

	.text

	thumb_func_start ov40_02230638
ov40_02230638: ; 0x02230638
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov40_0222FF74
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_02230424
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02230638

