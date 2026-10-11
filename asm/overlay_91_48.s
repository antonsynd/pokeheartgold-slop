	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F4F8
	.public ov91_0225FDC8

	.text

	thumb_func_start ov91_0225F4F8
ov91_0225F4F8: ; 0x0225F4F8
	push {r4, lr}
	add r4, r0, #0
	bl ov91_0225FDC8
	ldr r0, [r4, #0x18]
	bl GF_3DVramMan_Delete
	pop {r4, pc}
	thumb_func_end ov91_0225F4F8

