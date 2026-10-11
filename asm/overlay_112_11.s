#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5D68
	.extern ov112_021FFAA4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5D68
ov112_021E5D68: ; 0x021E5D68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	tst r0, r4
	beq _021E5D76
	bl OS_Halt
_021E5D76:
	ldr r1, _021E5D84 ; =ov112_021FFAA4
	ldr r0, _021E5D88 ; =0x0000CD80
	str r4, [r1, #0x48]
	add r0, r4, r0
	str r0, [r1, #0x44]
	pop {r4, pc}
	nop
_021E5D84: .word ov112_021FFAA4
_021E5D88: .word 0x0000CD80
	thumb_func_end ov112_021E5D68

