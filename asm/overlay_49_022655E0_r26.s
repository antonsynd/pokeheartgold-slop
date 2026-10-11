	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265C74
	.extern ov49_02267A84

    .text

	.text
	thumb_func_start ov49_02265C74
ov49_02265C74: ; 0x02265C74
	ldr r3, _02265C7C ; =ov49_02267A84
	mov r2, #2
	bx r3
	nop
_02265C7C: .word ov49_02267A84
	thumb_func_end ov49_02265C74

