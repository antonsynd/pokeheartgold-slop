	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_0225F74C
	.extern ov115_0225F220
	.extern ov115_022603D8

	.text

	.text
	thumb_func_start ov115_0225F74C
ov115_0225F74C: ; 0x0225F74C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0225F76C ; =ov115_022603D8
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F220
	cmp r0, #1
	bne _0225F768
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_0225F768:
	pop {r3, r4, r5, pc}
	nop
_0225F76C: .word ov115_022603D8
	thumb_func_end ov115_0225F74C

