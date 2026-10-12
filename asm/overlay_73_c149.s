#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E96EC
	.extern ov73_021E83EC
	.extern ov73_021E9FF8
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E96EC
ov73_021E96EC: ; 0x021E96EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9720 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9724 ; =0x00000BD4
	mov r2, #8
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9720: .word 0x00000F0F
_021E9724: .word 0x00000BD4
	thumb_func_end ov73_021E96EC

