#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE464
	.extern ov112_021E9290
	.extern ov112_021EA5A4
	.extern ov112_021EC460
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE464
ov112_021EE464: ; 0x021EE464
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021EE4A8 ; =0x0001E440
	ldr r5, _021EE4AC ; =0x0001F2E8
	ldr r0, [r4, r0]
	add r1, r4, r5
	bl Pokewalker_TryGetBoxMon
	add r0, r4, #0
	mov r1, #0
	bl ov112_021EA5A4
	ldr r0, _021EE4B0 ; =0x0001E448
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r4, r5
	bl BufferBoxMonNickname
	ldr r2, _021EE4B4 ; =0x0001D7AC
	add r0, r4, r5
	add r1, r4, r2
	sub r2, #0x10
	add r2, r4, r2
	mov r3, #0
	bl ov112_021E9290
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x1a
	mov r3, #0x35
	bl ov112_021EC460
	mov r0, #0x40
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EE4A8: .word 0x0001E440
_021EE4AC: .word 0x0001F2E8
_021EE4B0: .word 0x0001E448
_021EE4B4: .word 0x0001D7AC
	thumb_func_end ov112_021EE464

