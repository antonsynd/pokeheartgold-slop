	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E784C
	.extern ov37_021E7D20

	.text

	.text
	thumb_func_start ov37_021E784C
ov37_021E784C: ; 0x021E784C
	push {r3, r4}
	mov r3, #0xc2
	lsl r3, r3, #2
	sub r4, r3, #4
	ldr r2, [r0, r3]
	ldr r4, [r0, r4]
	cmp r4, r2
	beq _021E7876
	cmp r1, #2
	beq _021E7868
	sub r1, r3, #4
	str r2, [r0, r1]
	pop {r3, r4}
	bx lr
_021E7868:
	ldr r1, _021E787C ; =ov37_021E7D20 + 4
	lsl r4, r2, #3
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _021E7876
	sub r1, r3, #4
	str r2, [r0, r1]
_021E7876:
	pop {r3, r4}
	bx lr
	nop
_021E787C: .word ov37_021E7D20 + 4
	thumb_func_end ov37_021E784C

