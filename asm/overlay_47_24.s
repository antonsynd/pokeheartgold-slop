	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_022591F8
	.extern ov47_02259E78

	.text

	.text
	thumb_func_start ov47_022591F8
ov47_022591F8: ; 0x022591F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r2, [r4, #0x10]
	mov r1, #0xc
	ldr r3, _02259218 ; =ov47_02259E78
	mul r1, r2
	ldr r0, [r4, #0x14]
	add r1, r3, r1
	bl Sprite_SetMatrix
	pop {r4, pc}
	nop
_02259218: .word ov47_02259E78
	thumb_func_end ov47_022591F8

