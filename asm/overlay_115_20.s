	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_0225F8FC
	.extern ov115_0225F220
	.extern ov115_022604C8

	.text

	.text
	thumb_func_start ov115_0225F8FC
ov115_0225F8FC: ; 0x0225F8FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0225F91C ; =ov115_022604C8
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F220
	cmp r0, #1
	bne _0225F918
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_0225F918:
	pop {r3, r4, r5, pc}
	nop
_0225F91C: .word ov115_022604C8
	thumb_func_end ov115_0225F8FC

