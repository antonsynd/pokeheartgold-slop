	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226CFC
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02226CFC
ov13_02226CFC: ; 0x02226CFC
	push {r3, lr}
	ldr r1, _02226D08 ; =ov13_0224DF30
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_02226D08: .word ov13_0224DF30
	thumb_func_end ov13_02226CFC

