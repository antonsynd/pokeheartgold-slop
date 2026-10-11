	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022634F8
	.public ov92_02263824

	.text

	thumb_func_start ov92_02263824
ov92_02263824: ; 0x02263824
	push {r4, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r1, sp, #0
	bl ov92_022634F8
	add r0, sp, #0
	add r1, r4, #0
	bl MTX_Copy44To43_
	add sp, #0x40
	pop {r4, pc}
	thumb_func_end ov92_02263824

