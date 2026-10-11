#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E6134
	.extern ov112_021E5A68
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E6134
ov112_021E6134: ; 0x021E6134
	push {r3, lr}
	ldr r0, _021E6160 ; =ov112_021FFB24
	ldrh r3, [r0, #0x30]
	cmp r3, #0x80
	bls _021E6140
	mov r3, #0x80
_021E6140:
	ldr r0, _021E6160 ; =ov112_021FFB24
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	asr r1, r2, #8
	add r0, sp, #0
	strb r1, [r0]
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	add r0, sp, #0
	mov r1, #3
	mov r2, #0xc
	mov r3, #2
	bl ov112_021E5A68
	pop {r3, pc}
	.balign 4, 0
_021E6160: .word ov112_021FFB24
	thumb_func_end ov112_021E6134

