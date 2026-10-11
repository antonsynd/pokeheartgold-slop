	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E718C
	.public ov99_021E724C

	.text

	thumb_func_start ov99_021E724C
ov99_021E724C: ; 0x021E724C
	push {r3, lr}
	bl ov99_021E718C
	bl ov98_0221EF80
	pop {r3, pc}
	thumb_func_end ov99_021E724C

