	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7180

	.text

	.text
	thumb_func_start ov99_021E7180
ov99_021E7180: ; 0x021E7180
	ldr r0, [r0, #0x10]
	ldr r2, [r0, #4]
	sub r0, r1, #1
	ldrb r0, [r2, r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov99_021E7180

