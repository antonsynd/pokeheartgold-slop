	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"
	.public ov49_0225D214
	.public ov49_0225D224

    .text

	thumb_func_start ov49_0225D214
ov49_0225D214: ; 0x0225D214
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov49_0225D224
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225D214

