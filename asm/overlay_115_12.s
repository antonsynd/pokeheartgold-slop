	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_0225F7DC
	.extern ov115_0225F220
	.extern ov115_02260428

	.text

	.text
	thumb_func_start ov115_0225F7DC
ov115_0225F7DC: ; 0x0225F7DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0225F7FC ; =ov115_02260428
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F220
	cmp r0, #1
	bne _0225F7F8
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_0225F7F8:
	pop {r3, r4, r5, pc}
	nop
_0225F7FC: .word ov115_02260428
	thumb_func_end ov115_0225F7DC

