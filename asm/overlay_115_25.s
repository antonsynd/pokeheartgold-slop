	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_02260350
	.extern ov115_0225F978
	.extern ov115_022603A8

	.text

	.text
	thumb_func_start ov115_02260350
ov115_02260350: ; 0x02260350
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _02260370 ; =ov115_022603A8
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F978
	cmp r0, #1
	bne _0226036C
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_0226036C:
	pop {r3, r4, r5, pc}
	nop
_02260370: .word ov115_022603A8
	thumb_func_end ov115_02260350

