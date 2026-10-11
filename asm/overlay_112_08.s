#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5AD0
	.extern _021FF9E0
	.extern ov112_021E5A14
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5AD0
ov112_021E5AD0: ; 0x021E5AD0
	push {r3, lr}
	ldr r0, _021E5B20 ; =_021FF9E0
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	bne _021E5AE4
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021E5AE4
	mov r0, #0
	pop {r3, pc}
_021E5AE4:
	bl OS_GetTick
	ldr r2, _021E5B20 ; =_021FF9E0
	ldr r3, [r2, #0x30]
	ldr r2, [r2, #0x34]
	sub r3, r0, r3
	sbc r1, r2
	lsr r0, r3, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r3, #6
	ldr r2, _021E5B24 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	mov r3, #0
	mov r2, #0x64
	sub r0, r0, r2
	sbc r1, r3
	bhs _021E5B10
	mov r0, #0
	pop {r3, pc}
_021E5B10:
	mov r0, #1
	bl ov112_021E5A14
	ldr r0, _021E5B20 ; =_021FF9E0
	mov r1, #0
	str r1, [r0, #0x24]
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
_021E5B20: .word _021FF9E0
_021E5B24: .word 0x000082EA
	thumb_func_end ov112_021E5AD0

