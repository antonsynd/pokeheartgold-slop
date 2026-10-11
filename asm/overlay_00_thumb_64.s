	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E79B4
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E79B4
ov00_021E79B4: ; 0x021E79B4
	ldr r0, _021E79C0 ; =_0221A684
	ldr r3, _021E79C4 ; =NNS_SndStrmStart
	ldr r1, [r0, #4]
	ldr r0, _021E79C8 ; =0x000019F8
	add r0, r1, r0
	bx r3
	.balign 4, 0
_021E79C0: .word _0221A684
_021E79C4: .word NNS_SndStrmStart
_021E79C8: .word 0x000019F8
	thumb_func_end ov00_021E79B4

