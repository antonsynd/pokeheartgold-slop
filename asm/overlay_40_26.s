	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222C480
	.public ov40_0222CAD8
	.public ov40_0222CBE0
	.public ov40_0222CCAC
	.public ov40_0222CE7C
	.public ov40_0222CED8
	.public ov40_0222CF10
	.public ov40_0222CFBC
	.public ov40_0222D88C

	.text

	thumb_func_start ov40_0222D88C
ov40_0222D88C: ; 0x0222D88C
	push {r4, lr}
	add r4, r0, #0
	bl ov40_0222CAD8
	add r0, r4, #0
	bl ov40_0222C480
	add r0, r4, #0
	bl sub_02088030
	add r0, r4, #0
	bl ov40_0222CCAC
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222CFBC
	add r0, r4, #0
	bl ov40_0222CE7C
	add r0, r4, #0
	bl ov40_0222CED8
	add r0, r4, #0
	bl ov40_0222CBE0
	add r0, r4, #0
	bl ov40_0222CF10
	pop {r4, pc}
	thumb_func_end ov40_0222D88C

