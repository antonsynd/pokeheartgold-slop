	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDE5C
	.extern ov103_021EDA40
	.extern ov103_021EDC68

	.text

	.text
	thumb_func_start ov103_021EDE5C
ov103_021EDE5C: ; 0x021EDE5C
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x22]
	mov r1, #9
	mov r3, #0
	bl ov103_021EDC68
	mov r1, #1
	str r1, [r4, #0x18]
	mov r0, #6
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov103_021EDA40
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDE5C

