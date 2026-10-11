	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7A0C

	.text

	thumb_func_start ov102_021E7A0C
ov102_021E7A0C: ; 0x021E7A0C
	mov r1, #2
	ldrsb r3, [r0, r1]
	mov r1, #0
	ldrsh r2, [r0, r1]
	mov r1, #3
	ldrsb r0, [r0, r1]
	mul r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
	thumb_func_end ov102_021E7A0C

