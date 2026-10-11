	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5BB4
	.public ov99_021E6050
	.public ov99_021E607C
	.public ov99_021E6144
	.public ov99_021E6188
	.public ov99_021E6218

	.text

	thumb_func_start ov99_021E6050
ov99_021E6050: ; 0x021E6050
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov99_021E6188
	add r0, r5, #0
	add r1, r4, #0
	bl ov99_021E607C
	ldr r0, [r5]
	add r1, r4, #0
	bl ov99_021E5BB4
	add r1, r0, #0
	add r0, r5, #0
	bl ov99_021E6144
	add r0, r5, #0
	bl ov99_021E6218
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov99_021E6050

