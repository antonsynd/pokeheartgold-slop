	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D9E8
	.extern ov40_0222D910

	.text

	.text
	thumb_func_start ov40_0222D9E8
ov40_0222D9E8: ; 0x0222D9E8
	push {r3, r4, lr}
	sub sp, #0xc
	mov r4, #8
	str r4, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r2, r4, #0
	bl ov40_0222D910
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov40_0222D9E8

