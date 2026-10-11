	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258BEC
	.extern ov49_02269660

    .text

	.text
	thumb_func_start ov49_02258BEC
ov49_02258BEC: ; 0x02258BEC
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #4]
	lsl r3, r2, #2
	ldr r2, _02258C00 ; =ov49_02269660
	add r0, #0x18
	ldr r2, [r2, r3]
	ldr r3, _02258C04 ; =ov49_02259A20
	bx r3
	nop
_02258C00: .word ov49_02269660
_02258C04: .word ov49_02259A20
	thumb_func_end ov49_02258BEC

