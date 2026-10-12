	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7124
	.extern ov99_021E70E8

	.text

	.text
	thumb_func_start ov99_021E7124
ov99_021E7124: ; 0x021E7124
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_021E712C:
	lsl r1, r4, #0x18
	ldr r0, [r6]
	lsr r1, r1, #0x18
	bl ov99_021E70E8
	bl ov98_0221EF64
	add r0, r5, r0
	lsl r0, r0, #0x18
	add r4, r4, #1
	lsr r5, r0, #0x18
	cmp r4, #5
	blt _021E712C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov99_021E7124

