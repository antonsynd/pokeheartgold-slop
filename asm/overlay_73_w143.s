#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9C8C
	.extern ov73_021E83EC
	.extern ov73_021E9FF8

	.text

	.text
	thumb_func_start ov73_021E9C8C
ov73_021E9C8C: ; 0x021E9C8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9CB4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9CB8 ; =0x00000BDC
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2a
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9CB4: .word 0x00000F0F
_021E9CB8: .word 0x00000BDC
	thumb_func_end ov73_021E9C8C

