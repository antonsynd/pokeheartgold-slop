	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8818
	.public ov99_021E89A4
	.public ov99_021E9038

	.text

	thumb_func_start ov99_021E8818
ov99_021E8818: ; 0x021E8818
	push {r4, lr}
	add r4, r0, #0
	bl ov99_021E89A4
	add r0, r4, #0
	bl ov99_021E9038
	pop {r4, pc}
	thumb_func_end ov99_021E8818

