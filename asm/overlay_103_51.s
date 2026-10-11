	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDF50
	.public ov103_021EE028
	.public ov103_021EE094
	.public ov103_021EE150

	.text

	thumb_func_start ov103_021EDF50
ov103_021EDF50: ; 0x021EDF50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov103_021EE094
	ldr r0, [r4, #0xc]
	bl ov103_021EE028
	ldr r0, [r4, #0xc]
	bl ov103_021EE150
	pop {r4, pc}
	thumb_func_end ov103_021EDF50

