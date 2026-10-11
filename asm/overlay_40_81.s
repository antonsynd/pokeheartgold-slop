	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230864
	.public ov40_02230944

	.text

	thumb_func_start ov40_02230944
ov40_02230944: ; 0x02230944
	push {r3, lr}
	bl ov40_02230864
	ldr r0, _02230954 ; =0x0000057B
	bl PlaySE
	pop {r3, pc}
	nop
_02230954: .word 0x0000057B
	thumb_func_end ov40_02230944

