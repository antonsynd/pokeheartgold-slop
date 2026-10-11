	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5D80
	.extern ov113_021E6BD0

	.text

	.text
	thumb_func_start ov113_021E5D80
ov113_021E5D80: ; 0x021E5D80
	add r0, #0x3c
	ldrb r3, [r0]
	ldr r2, _021E5DA0 ; =ov113_021E6BD0
	mov r1, #0
_021E5D88:
	ldrh r0, [r2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	cmp r0, r3
	bgt _021E5D9A
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #6
	blt _021E5D88
_021E5D9A:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
_021E5DA0: .word ov113_021E6BD0
	thumb_func_end ov113_021E5D80

