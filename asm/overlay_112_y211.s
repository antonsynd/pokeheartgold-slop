#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ECEF8
	.extern ov112_021E9338
	.extern ov112_021E9750
	.extern ov112_021EA570
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ECEF8
ov112_021ECEF8: ; 0x021ECEF8
	push {r4, lr}
	add r4, r0, #0
	bl ov112_021E9750
	cmp r0, #0
	beq _021ECF0A
	cmp r0, #1
	beq _021ECF2A
	b _021ECF34
_021ECF0A:
	add r0, r4, #0
	bl ov112_021EA570
	add r0, r4, #0
	bl ov112_021E9338
	cmp r0, #1
	bne _021ECF22
	mov r0, #0x14
	str r0, [r4, #0xc]
	mov r0, #0x12
	pop {r4, pc}
_021ECF22:
	mov r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x12
	pop {r4, pc}
_021ECF2A:
	add r0, r4, #0
	bl ov112_021EA570
	mov r0, #7
	pop {r4, pc}
_021ECF34:
	mov r0, #0xf
	pop {r4, pc}
	thumb_func_end ov112_021ECEF8

