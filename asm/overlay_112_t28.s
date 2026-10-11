#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7670
	.public ov112_021E768C
	.public ov112_021E76A8
	.extern ov112_021E59A8
	.extern ov112_021FFAA4
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7670
ov112_021E7670: ; 0x021E7670
	push {r3, lr}
	ldr r1, _021E7688 ; =ov112_021FFB24
	mov r0, #0xff
	ldrh r2, [r1, #0x36]
	ldrh r1, [r1, #0x34]
	mul r0, r2
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_021E7688: .word ov112_021FFB24
	thumb_func_end ov112_021E7670

	thumb_func_start ov112_021E768C
ov112_021E768C: ; 0x021E768C
	push {r3, lr}
	ldr r1, _021E76A4 ; =ov112_021FFB24
	mov r0, #0xff
	ldrh r2, [r1, #0x3a]
	ldrh r1, [r1, #0x38]
	mul r0, r2
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_021E76A4: .word ov112_021FFB24
	thumb_func_end ov112_021E768C

	thumb_func_start ov112_021E76A8
ov112_021E76A8: ; 0x021E76A8
	push {r4, lr}
	ldr r0, _021E76C8 ; =ov112_021FFAA4
	ldr r4, [r0, #0x14]
	bl ov112_021E59A8
	cmp r0, #0
	beq _021E76BC
	mov r1, #0
	ldr r0, _021E76C8 ; =ov112_021FFAA4
	b _021E76C0
_021E76BC:
	ldr r0, _021E76C8 ; =ov112_021FFAA4
	mov r1, #1
_021E76C0:
	str r1, [r0, #0x14]
	add r0, r4, #0
	pop {r4, pc}
	nop
_021E76C8: .word ov112_021FFAA4
	thumb_func_end ov112_021E76A8

