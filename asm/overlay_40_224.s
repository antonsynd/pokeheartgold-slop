	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223FD80
	.public ov40_022425E8

	.text

	thumb_func_start ov40_0223FD80
ov40_0223FD80: ; 0x0223FD80
	push {r3, lr}
	bl ov40_022425E8
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov40_0223FD80

