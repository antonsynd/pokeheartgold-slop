	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBA44
	.public ov102_021EC410

	.text

	thumb_func_start ov102_021EBA44
ov102_021EBA44: ; 0x021EBA44
	push {r3, lr}
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #0x10
	str r1, [sp]
	mov r1, #2
	add r2, r1, #0
	add r0, #0x1c
	sub r2, #0xc
	bl ov102_021EC410
	pop {r3, pc}
	thumb_func_end ov102_021EBA44

