	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_022592A8
	.extern ov90_02259350

	.text

	.text
	thumb_func_start ov90_022592A8
ov90_022592A8: ; 0x022592A8
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, _022592C0 ; =0x000F0E00
	str r4, [sp, #4]
	bl ov90_02259350
	add sp, #8
	pop {r4, pc}
	nop
_022592C0: .word 0x000F0E00
	thumb_func_end ov90_022592A8

