	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED23C
	.public ov103_021EDBB0
	.public ov103_021EE210
	.public ov103_021EE930

	.text

	thumb_func_start ov103_021EDBB0
ov103_021EDBB0: ; 0x021EDBB0
	push {r4, lr}
	add r4, r0, #0
	bl ov103_021ED23C
	add r0, r4, #0
	bl ov103_021EE930
	add r0, r4, #0
	bl ov103_021EE210
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDBB0

