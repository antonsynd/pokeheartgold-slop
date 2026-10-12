	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_0225FDF4

	.text

	.text
	thumb_func_start ov93_0225FDF4
ov93_0225FDF4: ; 0x0225FDF4
	cmp r0, #0xa
	blt _0225FDFC
	mov r0, #2
	bx lr
_0225FDFC:
	cmp r0, #5
	blt _0225FE04
	mov r0, #1
	bx lr
_0225FE04:
	mov r0, #0
	bx lr
	thumb_func_end ov93_0225FDF4

