	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6428
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6428
ov00_021E6428: ; 0x021E6428
	push {r3, r4}
	ldr r2, _021E6444 ; =_0221A680
	ldr r0, _021E6448 ; =0x00001078
	ldr r3, [r2]
	mov r4, #0
	str r4, [r3, r0]
	ldr r2, [r2]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, #0x34
	str r4, [r1, r0]
	pop {r3, r4}
	bx lr
	nop
_021E6444: .word _0221A680
_021E6448: .word 0x00001078
	thumb_func_end ov00_021E6428

