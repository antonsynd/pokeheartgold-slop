#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5A68
	.extern _021FF9E0
	.extern ov112_021E59B4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5A68
ov112_021E5A68: ; 0x021E5A68
	push {r3, r4, r5, lr}
	ldr r4, _021E5A7C ; =_021FF9E0
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _021E5A7A
	ldr r4, [r4, #4]
	str r4, [sp]
	bl ov112_021E59B4
_021E5A7A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5A7C: .word _021FF9E0
	thumb_func_end ov112_021E5A68

