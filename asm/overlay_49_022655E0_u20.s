	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265B28
	.extern ov49_02265B94

    .text

	.text
	thumb_func_start ov49_02265B28
ov49_02265B28: ; 0x02265B28
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov49_02265B94
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02265B28

