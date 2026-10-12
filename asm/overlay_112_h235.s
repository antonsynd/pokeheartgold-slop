#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED13C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED13C
ov112_021ED13C: ; 0x021ED13C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021ED178 ; =0x0001F2D6
	add r4, r1, #0
	ldrh r1, [r4, r0]
	add r1, r1, #2
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	cmp r1, #0x1f
	blo _021ED154
	mov r1, #0x1f
	strh r1, [r4, r0]
_021ED154:
	ldr r0, _021ED178 ; =0x0001F2D6
	mov r1, #0
	ldrh r3, [r4, r0]
	mov r0, #0x1f
	mov r2, #8
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021ED17C ; =0x04000050
	bl G2x_SetBlendAlpha_
	ldr r0, _021ED178 ; =0x0001F2D6
	ldrh r0, [r4, r0]
	cmp r0, #0x1f
	bne _021ED176
	add r0, r5, #0
	bl SysTask_Destroy
_021ED176:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ED178: .word 0x0001F2D6
_021ED17C: .word 0x04000050
	thumb_func_end ov112_021ED13C

