	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268ADC
	.extern ov49_0226A84C

    .text

	.text
	thumb_func_start ov49_02268ADC
ov49_02268ADC: ; 0x02268ADC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _02268AEC
	bl GF_AssertFail
_02268AEC:
	cmp r4, #6
	bhs _02268AFC
	ldr r2, _02268B00 ; =ov49_0226A84C
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_02268AFC:
	pop {r4, r5, r6, pc}
	nop
_02268B00: .word ov49_0226A84C
	thumb_func_end ov49_02268ADC

