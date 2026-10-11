	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6CCC
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6CCC
ov00_021E6CCC: ; 0x021E6CCC
	push {r3, r4}
	ldr r3, _021E6CE0 ; =_0221A680
	ldr r2, _021E6CE4 ; =0x00001064
	ldr r4, [r3]
	str r0, [r4, r2]
	ldr r3, [r3]
	add r0, r2, #4
	str r1, [r3, r0]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021E6CE0: .word _0221A680
_021E6CE4: .word 0x00001064
	thumb_func_end ov00_021E6CCC

