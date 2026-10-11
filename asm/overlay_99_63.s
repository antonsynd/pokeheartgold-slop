	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E9430
	.public ov99_021E94FC

	.text

	thumb_func_start ov99_021E94FC
ov99_021E94FC: ; 0x021E94FC
	push {r3, lr}
	bl ov99_021E9430
	ldr r0, [r0, #0x28]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov99_021E94FC

