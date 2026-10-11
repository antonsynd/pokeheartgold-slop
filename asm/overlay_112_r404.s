#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F31D8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F31D8
ov112_021F31D8: ; 0x021F31D8
	push {r3, r4, r5, r6}
	ldr r4, _021F323C ; =0x000001ED
	ldr r5, _021F3240 ; =0x0000FFF9
	mov r2, #0
	add r3, r4, #0
_021F31E2:
	add r1, r0, #0
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0
	beq _021F322E
	cmp r1, #0x1e
	blo _021F31F6
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021F31F6:
	ldrh r1, [r0, #0xa]
	cmp r1, #0
	bne _021F3202
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021F3202:
	ldrh r6, [r0, #8]
	add r6, r6, r5
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	cmp r6, #1
	bhi _021F321E
	cmp r1, r4
	bhi _021F3218
	ldrh r1, [r0, #0xc]
	cmp r1, r3
	bls _021F321E
_021F3218:
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021F321E:
	add r1, r0, #0
	add r1, #0x76
	ldrb r1, [r1]
	cmp r1, #8
	blo _021F322E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021F322E:
	add r2, r2, #1
	add r0, #0x88
	cmp r2, #0x18
	blt _021F31E2
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_021F323C: .word 0x000001ED
_021F3240: .word 0x0000FFF9
	thumb_func_end ov112_021F31D8

