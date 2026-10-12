	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226F3C
	.extern ov13_02226EF0
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02226F3C
ov13_02226F3C: ; 0x02226F3C
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl ov13_02226EF0
	ldr r1, _02226F54 ; =ov13_0224DF30
	add r0, sp, #0
	ldr r1, [r1, #0x7c]
	blx r1
	add sp, #0xc
	pop {pc}
	nop
_02226F54: .word ov13_0224DF30
	thumb_func_end ov13_02226F3C

