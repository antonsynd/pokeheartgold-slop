	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E709C
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E709C
ov00_021E709C: ; 0x021E709C
	ldr r0, _021E70B0 ; =_0221A680
	ldr r1, [r0]
	cmp r1, #0
	beq _021E70AA
	ldr r0, _021E70B4 ; =0x00001098
	ldr r0, [r1, r0]
	bx lr
_021E70AA:
	mov r0, #0
	bx lr
	nop
_021E70B0: .word _0221A680
_021E70B4: .word 0x00001098
	thumb_func_end ov00_021E709C

