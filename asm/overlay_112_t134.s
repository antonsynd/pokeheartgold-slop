#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EBA8C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EBA8C
ov112_021EBA8C: ; 0x021EBA8C
	ldr r0, _021EBAA8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021EBA9E
	ldr r0, _021EBAAC ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _021EBAA2
_021EBA9E:
	mov r0, #3
	bx lr
_021EBAA2:
	mov r0, #2
	bx lr
	nop
_021EBAA8: .word gSystem
_021EBAAC: .word gSystem + 0x40
	thumb_func_end ov112_021EBA8C

