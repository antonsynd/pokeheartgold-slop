	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022335A0
	.extern ov07_0223729C

	.text

	.text
	thumb_func_start ov07_022335A0
ov07_022335A0: ; 0x022335A0
	push {r3, lr}
	ldr r1, [r0, #0x14]
	lsl r2, r1, #2
	ldr r1, _022335B0 ; =ov07_0223729C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_022335B0: .word ov07_0223729C
	thumb_func_end ov07_022335A0

