#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDAF4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDAF4
ov112_021EDAF4: ; 0x021EDAF4
	push {r3, lr}
	cmp r1, #0
	bne _021EDB06
	ldr r1, _021EDB20 ; =0x0001E550
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	pop {r3, pc}
_021EDB06:
	cmp r1, #0x1e
	ble _021EDB1E
	ldr r2, _021EDB20 ; =0x0001E550
	sub r1, #0x1e
	ldr r0, [r0, r2]
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	lsl r1, r2, #0xe
	lsr r1, r1, #0x10
	bl ManagedSprite_SetAnimationFrame
_021EDB1E:
	pop {r3, pc}
	.balign 4, 0
_021EDB20: .word 0x0001E550
	thumb_func_end ov112_021EDAF4

