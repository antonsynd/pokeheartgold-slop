	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265C80
	.extern ov49_02267A84

    .text

	.text
	thumb_func_start ov49_02265C80
ov49_02265C80: ; 0x02265C80
	ldr r3, _02265C88 ; =ov49_02267A84
	mov r2, #3
	bx r3
	nop
_02265C88: .word ov49_02267A84
	thumb_func_end ov49_02265C80

