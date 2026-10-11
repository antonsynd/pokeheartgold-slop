	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022392AC

	.text

	thumb_func_start ov72_022392AC
ov72_022392AC: ; 0x022392AC
	push {r4, lr}
	add r4, r0, #0
	bl ov00_021ECD04
	mov r0, #5
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov72_022392AC

