	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221FF18
	.extern ov07_022353E4

	.text

	.text
	thumb_func_start ov07_0221FF18
ov07_0221FF18: ; 0x0221FF18
	push {r4, lr}
	lsl r4, r2, #2
	ldr r2, _0221FF28 ; =ov07_022353E4
	ldr r2, [r2, r4]
	bl sub_02015494
	pop {r4, pc}
	nop
_0221FF28: .word ov07_022353E4
	thumb_func_end ov07_0221FF18

