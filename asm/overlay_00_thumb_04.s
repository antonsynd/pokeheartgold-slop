	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5CA0
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E5CA0
ov00_021E5CA0: ; 0x021E5CA0
	push {r3, r4}
	ldr r3, _021E5CB4 ; =_0221A680
	ldr r2, _021E5CB8 ; =0x00000FAC
	ldr r4, [r3]
	str r0, [r4, r2]
	ldr r3, [r3]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021E5CB4: .word _0221A680
_021E5CB8: .word 0x00000FAC
	thumb_func_end ov00_021E5CA0

