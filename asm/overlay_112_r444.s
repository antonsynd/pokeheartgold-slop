#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F15E4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F15E4
ov112_021F15E4: ; 0x021F15E4
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r4, _021F1620 ; =0x0000013D
	add r1, r0, #0
	ldrb r0, [r1, r4]
	mov r3, #0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0xc0
	ldr r2, [r0]
	add r0, sp, #0xc
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	add r0, sp, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	add r0, r4, #0
	sub r0, #0x1d
	sub r4, #0xd
	add r0, r1, r0
	ldr r2, [r2]
	add r1, r1, r4
	bl RTC_ConvertSecondToDateTime
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021F1620: .word 0x0000013D
	thumb_func_end ov112_021F15E4

