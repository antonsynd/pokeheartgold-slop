	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E4A4
	.public ov40_0222E4D4
	.public ov40_0222E624
	.public ov40_0222E7B8
	.public ov40_0222E7DC

	.text

	thumb_func_start ov40_0222E7B8
ov40_0222E7B8: ; 0x0222E7B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov40_0222E4A4
	add r0, r5, #0
	mov r1, #0
	bl ov40_0222E7DC
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E624
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E4D4
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0222E7B8

