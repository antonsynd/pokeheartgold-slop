	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268C2C
	.extern ov49_0226A864
	.extern ov49_0226A868

    .text

	.text
	thumb_func_start ov49_02268C2C
ov49_02268C2C: ; 0x02268C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhs _02268C64
	lsl r2, r0, #3
	ldr r0, _02268C68 ; =ov49_0226A864
	ldr r0, [r0, r2]
	cmp r0, r1
	bhs _02268C64
	ldr r1, _02268C6C ; =ov49_0226A868
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl ov49_0225E894
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	lsl r2, r1, #3
	ldr r1, _02268C6C ; =ov49_0226A868
	ldr r1, [r1, r2]
	bl ov49_0225E6E0
	ldr r0, _02268C70 ; =0x000005B4
	bl PlaySE
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_02268C64:
	pop {r4, pc}
	nop
_02268C68: .word ov49_0226A864
_02268C6C: .word ov49_0226A868
_02268C70: .word 0x000005B4
	thumb_func_end ov49_02268C2C

