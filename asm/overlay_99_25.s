	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7180
	.public ov99_021E7198

	.text

	thumb_func_start ov99_021E7198
ov99_021E7198: ; 0x021E7198
	push {r3, lr}
	bl ov99_021E7180
	bl MATH_CountPopulation
	cmp r0, #5
	bne _021E71AA
	mov r0, #1
	pop {r3, pc}
_021E71AA:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov99_021E7198

