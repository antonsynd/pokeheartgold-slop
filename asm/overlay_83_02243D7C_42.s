	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022448E4
	.public ov83_02245748
	.public ov83_02245824

    .text

	thumb_func_start ov83_02245824
ov83_02245824: ; 0x02245824
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02245748
	add r0, r4, #0
	add r4, #0x80
	add r1, r4, #0
	bl ov83_022448E4
	pop {r4, pc}
	thumb_func_end ov83_02245824

