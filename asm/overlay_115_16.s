	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_0225F86C
	.extern ov115_0225F220
	.extern ov115_02260478

	.text

	.text
	thumb_func_start ov115_0225F86C
ov115_0225F86C: ; 0x0225F86C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0225F88C ; =ov115_02260478
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F220
	cmp r0, #1
	bne _0225F888
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_0225F888:
	pop {r3, r4, r5, pc}
	nop
_0225F88C: .word ov115_02260478
	thumb_func_end ov115_0225F86C

