#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E59B4
	.extern ov112_021E5900
	.extern ov112_021FFA18
	.extern ov112_021FFA20
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E59B4
ov112_021E59B4: ; 0x021E59B4
	push {r3, r4, r5, lr}
	ldr r4, _021E5A0C ; =ov112_021FFA18
	add r5, r1, #0
	strb r2, [r4]
	strb r3, [r4, #1]
	ldr r1, [sp, #0x10]
	ldr r3, _021E5A10 ; =ov112_021FFA20
	str r1, [r4, #4]
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	b _021E59D6
_021E59CC:
	ldrb r2, [r0]
	add r0, r0, #1
	add r1, r1, #1
	strb r2, [r3]
	add r3, r3, #1
_021E59D6:
	cmp r1, r5
	blt _021E59CC
	add r5, #8
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	ldr r0, _021E5A0C ; =ov112_021FFA18
	add r1, r5, #0
	bl ov112_021E5900
	strb r0, [r4, #2]
	asr r0, r0, #8
	strb r0, [r4, #3]
	mov r1, #0
	ldr r3, _021E5A0C ; =ov112_021FFA18
	mov r0, #0xaa
	b _021E59FE
_021E59F6:
	ldrb r2, [r3, r1]
	eor r2, r0
	strb r2, [r3, r1]
	add r1, r1, #1
_021E59FE:
	cmp r1, r5
	blt _021E59F6
	ldr r0, _021E5A0C ; =ov112_021FFA18
	add r1, r5, #0
	bl CARD_SpiWaitWriteRange
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5A0C: .word ov112_021FFA18
_021E5A10: .word ov112_021FFA20
	thumb_func_end ov112_021E59B4

