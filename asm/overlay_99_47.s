	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8518
	.public ov99_021E94CC

	.text

	thumb_func_start ov99_021E8518
ov99_021E8518: ; 0x021E8518
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0
	ldr r0, [r5]
	add r3, r2, #0
	add r4, r1, #0
	bl ov99_021E94CC
	add r5, #0xb0
	add r2, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021E8538
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E8538:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ov98_0221EFE8
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021E8518

