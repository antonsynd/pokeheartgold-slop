	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_022467C8

    .text

	.text
	thumb_func_start ov41_022467C8
ov41_022467C8: ; 0x022467C8
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov41_022467C8

