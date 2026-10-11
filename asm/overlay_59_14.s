	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022386A8
	.public ov59_022395B8
	.public ov59_022396E4
	.public ov59_0223978C
	.public ov59_022398A0
	.public ov59_02239918
	.public ov59_02239A08

	.text

	thumb_func_start ov59_022386A8
ov59_022386A8: ; 0x022386A8
	push {r4, lr}
	add r4, r0, #0
	bl ov59_02239A08
	add r0, r4, #0
	bl ov59_02239918
	add r0, r4, #0
	bl ov59_022398A0
	add r0, r4, #0
	bl ov59_0223978C
	add r0, r4, #0
	bl ov59_022396E4
	add r0, r4, #0
	bl ov59_022395B8
	pop {r4, pc}
	thumb_func_end ov59_022386A8

