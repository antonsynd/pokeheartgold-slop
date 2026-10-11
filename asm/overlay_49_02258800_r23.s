	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258C08
	.extern ov49_02269660

    .text

	.text
	thumb_func_start ov49_02258C08
ov49_02258C08: ; 0x02258C08
	lsl r2, r1, #2
	ldr r1, _02258C14 ; =ov49_02269660
	ldr r3, _02258C18 ; =ov49_02259A3C
	add r0, #0x18
	ldr r1, [r1, r2]
	bx r3
	.balign 4, 0
_02258C14: .word ov49_02269660
_02258C18: .word ov49_02259A3C
	thumb_func_end ov49_02258C08

