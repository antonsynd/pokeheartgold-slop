	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7CCC
	.public ov99_021E7CD8
	.extern ov99_021E7CE4

	.text

	.text
	thumb_func_start ov99_021E7CCC
ov99_021E7CCC: ; 0x021E7CCC
	push {r3, lr}
	mov r3, #0
	bl ov99_021E7CE4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov99_021E7CCC

	thumb_func_start ov99_021E7CD8
ov99_021E7CD8: ; 0x021E7CD8
	push {r3, lr}
	mov r3, #1
	bl ov99_021E7CE4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov99_021E7CD8

