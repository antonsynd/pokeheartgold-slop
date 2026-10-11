#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9CD8
	.extern ov73_021E83EC
	.extern ov73_021E9FF8

	.text

	.text
	thumb_func_start ov73_021E9CD8
ov73_021E9CD8: ; 0x021E9CD8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9D08 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9D0C ; =0x00000BDC
	mov r2, #0x1b
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0x2e
	bl ov73_021E83EC
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9D08: .word 0x00000F0F
_021E9D0C: .word 0x00000BDC
	thumb_func_end ov73_021E9CD8

