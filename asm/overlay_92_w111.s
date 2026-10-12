	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022630F8

	.text

	.text
	thumb_func_start ov92_022630F8
ov92_022630F8: ; 0x022630F8
	add r3, r0, #0
	add r2, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	.balign 4, 0
	thumb_func_end ov92_022630F8

