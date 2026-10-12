	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6FE0
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6FE0
ov00_021E6FE0: ; 0x021E6FE0
	push {r3, lr}
	ldr r2, _021E7004 ; =_0221A680
	ldr r1, _021E7008 ; =0x00001098
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r3, [r2]
	add r2, r1, #0
	sub r2, #0xe4
	ldr r2, [r3, r2]
	cmp r2, #0
	beq _021E7000
	sub r1, #0xe0
	lsl r0, r0, #0x10
	ldr r1, [r3, r1]
	lsr r0, r0, #0x10
	blx r2
_021E7000:
	pop {r3, pc}
	nop
_021E7004: .word _0221A680
_021E7008: .word 0x00001098
	thumb_func_end ov00_021E6FE0

