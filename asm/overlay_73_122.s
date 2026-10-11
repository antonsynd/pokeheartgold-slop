#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7E24
	.public ov73_021EA2FC

	.text

	thumb_func_start ov73_021EA2FC
ov73_021EA2FC: ; 0x021EA2FC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020270C4
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov73_021E7E24
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov73_021EA2FC

