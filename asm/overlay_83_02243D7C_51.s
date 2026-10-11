	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245D48
	.public ov83_02246114
	.public ov83_0224691C
	.public ov83_02246988

    .text

	thumb_func_start ov83_0224691C
ov83_0224691C: ; 0x0224691C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov83_02245D48
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02246114
	add r0, r5, #0
	bl ov83_02246988
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0224691C

