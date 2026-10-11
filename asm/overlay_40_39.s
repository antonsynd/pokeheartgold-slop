	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E09C
	.public ov40_0222E510
	.public ov40_0222E690
	.public ov40_0222E79C

	.text

	thumb_func_start ov40_0222E79C
ov40_0222E79C: ; 0x0222E79C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov40_0222E09C
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E690
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E510
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0222E79C

