	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED99C
	.public ov103_021EDE7C
	.public ov103_021EE860

	.text

	thumb_func_start ov103_021ED99C
ov103_021ED99C: ; 0x021ED99C
	push {r4, lr}
	add r4, r0, #0
	bl ov103_021EE860
	add r0, r4, #0
	bl ov103_021EDE7C
	pop {r4, pc}
	thumb_func_end ov103_021ED99C

