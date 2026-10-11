#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F878
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F878
ov45_0222F878: ; 0x0222F878
	ldr r0, _0222F884 ; =_022577C0
	ldr r3, _0222F888 ; =Heap_Free
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bx r3
	nop
_0222F884: .word _022577C0
_0222F888: .word Heap_Free
	thumb_func_end ov45_0222F878

