#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5900
	.public ov112_021E5938
	.public ov112_021E594C
	.extern _021FF9E0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5900
ov112_021E5900: ; 0x021E5900
	push {r3, r4, r5, r6}
	mov r5, #2
	mov r6, #0
	cmp r1, #0
	bls _021E5924
	mov r2, #1
_021E590C:
	add r3, r6, #0
	ldrb r4, [r0]
	add r0, r0, #1
	tst r3, r2
	beq _021E591A
	add r5, r5, r4
	b _021E591E
_021E591A:
	lsl r3, r4, #8
	add r5, r5, r3
_021E591E:
	add r6, r6, #1
	cmp r6, r1
	blo _021E590C
_021E5924:
	lsl r0, r5, #0x10
	lsr r1, r5, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	lsr r0, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov112_021E5900

	thumb_func_start ov112_021E5938
ov112_021E5938: ; 0x021E5938
	ldr r0, _021E5948 ; =_021FF9E0
	mov r1, #1
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	nop
_021E5948: .word _021FF9E0
	thumb_func_end ov112_021E5938

	thumb_func_start ov112_021E594C
ov112_021E594C: ; 0x021E594C
	ldr r0, _021E5960 ; =_021FF9E0
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	.balign 4, 0
_021E5960: .word _021FF9E0
	thumb_func_end ov112_021E594C

