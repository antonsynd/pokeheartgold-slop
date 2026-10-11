	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D4D4
	.extern ov91_02261F8C
	.extern ov91_02261F90

	.text

	.text
	thumb_func_start ov91_0225D4D4
ov91_0225D4D4: ; 0x0225D4D4
	push {r3, r4}
	lsl r4, r0, #5
	lsl r0, r2, #3
	ldr r2, _0225D4F8 ; =ov91_02261F8C
	lsl r1, r1, #7
	add r2, r2, r1
	add r2, r4, r2
	ldr r2, [r0, r2]
	str r2, [r3]
	ldr r2, _0225D4FC ; =ov91_02261F90
	add r1, r2, r1
	add r1, r4, r1
	ldr r1, [r0, r1]
	ldr r0, [sp, #8]
	str r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_0225D4F8: .word ov91_02261F8C
_0225D4FC: .word ov91_02261F90
	thumb_func_end ov91_0225D4D4

