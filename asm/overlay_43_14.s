	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A520
	.public ov43_0222A66C
	.public ov43_0222A81C
	.public ov43_0222A8A8
	.public ov43_0222A960
	.public ov43_0222A9D8
	.public ov43_0222ACDC

	.text

	thumb_func_start ov43_0222A520
ov43_0222A520: ; 0x0222A520
	push {r4, lr}
	add r4, r0, #0
	bl ov43_0222ACDC
	add r0, r4, #0
	bl ov43_0222A9D8
	add r0, r4, #0
	bl ov43_0222A960
	add r0, r4, #0
	bl ov43_0222A8A8
	add r0, r4, #0
	bl ov43_0222A81C
	add r0, r4, #0
	bl ov43_0222A66C
	ldr r0, [r4, #0x58]
	bl NARC_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A520

