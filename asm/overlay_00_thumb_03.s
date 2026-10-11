	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5C84
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E5C84
ov00_021E5C84: ; 0x021E5C84
	push {r3, r4}
	ldr r3, _021E5C98 ; =_0221A680
	ldr r2, _021E5C9C ; =0x00000FA4
	ldr r4, [r3]
	str r0, [r4, r2]
	ldr r3, [r3]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021E5C98: .word _0221A680
_021E5C9C: .word 0x00000FA4
	thumb_func_end ov00_021E5C84

