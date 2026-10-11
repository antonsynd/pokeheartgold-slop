	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E4C4
	.public ov40_0222E618
	.public ov40_0222E7DC

	.text

	thumb_func_start ov40_0222E7DC
ov40_0222E7DC: ; 0x0222E7DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov40_0222E4C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E618
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0222E7DC

