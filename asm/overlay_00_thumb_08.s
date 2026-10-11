	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5E34
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E5E34
ov00_021E5E34: ; 0x021E5E34
	ldr r0, _021E5E4C ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E5E50 ; =0x00001070
	ldr r1, [r2, r0]
	cmp r1, #0xa
	bne _021E5E46
	mov r1, #0xb
	str r1, [r2, r0]
	bx lr
_021E5E46:
	mov r1, #9
	str r1, [r2, r0]
	bx lr
	.balign 4, 0
_021E5E4C: .word _0221A680
_021E5E50: .word 0x00001070
	thumb_func_end ov00_021E5E34

