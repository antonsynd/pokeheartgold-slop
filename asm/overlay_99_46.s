	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E84EC
	.public ov99_021E945C
	.public ov99_021E94CC

	.text

	thumb_func_start ov99_021E84EC
ov99_021E84EC: ; 0x021E84EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r3, r5, #0
	add r3, #0xb0
	ldr r0, [r5]
	ldr r3, [r3]
	mov r2, #0
	add r4, r1, #0
	bl ov99_021E94CC
	add r6, r0, #0
	ldr r0, [r5]
	bl ov99_021E945C
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl ov98_0221EFE8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov99_021E84EC

