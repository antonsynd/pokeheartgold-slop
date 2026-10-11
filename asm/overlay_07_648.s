	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232F60
	.extern ov07_022371B8

	.text

	.text
	thumb_func_start ov07_02232F60
ov07_02232F60: ; 0x02232F60
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _02232F70 ; =ov07_022371B8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02232F70: .word ov07_022371B8
	thumb_func_end ov07_02232F60

