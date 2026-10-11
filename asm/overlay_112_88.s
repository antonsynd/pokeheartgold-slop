#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA7D0
	.extern ov112_021EA9A0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA7D0
ov112_021EA7D0: ; 0x021EA7D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EA834 ; =0x0001EC80
	add r0, r4, r0
	bl ov112_021EA9A0
	cmp r0, #0
	blt _021EA832
	ldr r1, _021EA834 ; =0x0001EC80
	add r2, r4, r1
	lsl r1, r0, #4
	mov r0, #1
	add r4, r2, r1
	strb r0, [r2, r1]
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	mov r0, #0
	add r1, r1, #5
	mvn r0, r0
	mul r0, r1
	strb r0, [r4, #3]
	bl MTRandom
	mov r1, #0x4b
	lsl r1, r1, #2
	bl _u32_div_f
	strh r1, [r4, #0xc]
	mov r0, #0x80
	strh r0, [r4, #4]
	sub r0, #0xed
	strh r0, [r4, #6]
	bl MTRandom
	mov r1, #0x28
	bl _u32_div_f
	add r1, #0x28
	strb r1, [r4, #2]
	bl MTRandom
	mov r1, #0x3c
	bl _u32_div_f
	add r1, #0x78
	strh r1, [r4, #0xe]
_021EA832:
	pop {r4, pc}
	.balign 4, 0
_021EA834: .word 0x0001EC80
	thumb_func_end ov112_021EA7D0

