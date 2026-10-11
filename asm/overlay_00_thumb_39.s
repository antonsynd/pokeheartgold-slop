	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6EBC
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6EBC
ov00_021E6EBC: ; 0x021E6EBC
	ldr r0, _021E6ED0 ; =_0221A680
	ldr r1, [r0]
	cmp r1, #0
	beq _021E6ECA
	ldr r0, _021E6ED4 ; =0x00001094
	ldr r0, [r1, r0]
	bx lr
_021E6ECA:
	mov r0, #0
	mvn r0, r0
	bx lr
	.balign 4, 0
_021E6ED0: .word _0221A680
_021E6ED4: .word 0x00001094
	thumb_func_end ov00_021E6EBC

