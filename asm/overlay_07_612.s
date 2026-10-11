	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022325F4
	.extern ov07_0223251C
	.extern ov07_0223738C

	.text

	.text
	thumb_func_start ov07_022325F4
ov07_022325F4: ; 0x022325F4
	push {r3, lr}
	bl ov07_0223251C
	lsl r1, r0, #3
	ldr r0, _02232604 ; =ov07_0223738C
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02232604: .word ov07_0223738C
	thumb_func_end ov07_022325F4

