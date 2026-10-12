	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7178
	.extern ov109_021E7114

	.text

	.text
	thumb_func_start ov109_021E7178
ov109_021E7178: ; 0x021E7178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021E71B8 ; =0x00000000
	beq _021E718C
	ldrb r1, [r4, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021E718C:
	add r4, sp, #0
	ldrb r5, [r4, #0x10]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r4, r5, #2
	add r4, r5, r4
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov r5, #6
	str r4, [sp]
	lsl r4, r3, #0x17
	mul r5, r3
	lsr r4, r4, #0x18
	add r3, r5, #4
	add r3, r4, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ov109_021E7114
	pop {r3, r4, r5, pc}
	nop
_021E71B8: .word 0x00000000
	thumb_func_end ov109_021E7178

