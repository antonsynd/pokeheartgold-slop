	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232608
	.extern ov07_0223251C
	.extern ov07_02237390

	.text

	.text
	thumb_func_start ov07_02232608
ov07_02232608: ; 0x02232608
	push {r3, lr}
	bl ov07_0223251C
	lsl r1, r0, #3
	ldr r0, _02232618 ; =ov07_02237390
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02232618: .word ov07_02237390
	thumb_func_end ov07_02232608

