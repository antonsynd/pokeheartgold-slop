#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7D74
	.public ov73_021E7E24

	.text

	thumb_func_start ov73_021E7E24
ov73_021E7E24: ; 0x021E7E24
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021E7E48 ; =0x0000090C
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #8
	add r3, r4, #0
	bl ov73_021E7D74
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E7E48: .word 0x0000090C
	thumb_func_end ov73_021E7E24

