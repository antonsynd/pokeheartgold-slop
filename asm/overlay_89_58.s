	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225AFFC
	.extern ov89_0225CE34

	.text

	.text
	thumb_func_start ov89_0225AFFC
ov89_0225AFFC: ; 0x0225AFFC
	push {r3, lr}
	ldr r0, [r0, #4]
	bl GetNatureFromPersonality
	ldr r1, _0225B00C ; =ov89_0225CE34
	ldrb r0, [r1, r0]
	pop {r3, pc}
	nop
_0225B00C: .word ov89_0225CE34
	thumb_func_end ov89_0225AFFC

