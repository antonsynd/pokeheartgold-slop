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
	.public ov40_0222D8C8

	.text

	thumb_func_start ov40_0222D8C8
ov40_0222D8C8: ; 0x0222D8C8
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
	ldr r0, _0222D90C ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_0222D90C: .word 0x000006D8
	thumb_func_end ov40_0222D8C8

