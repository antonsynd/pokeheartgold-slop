#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5E28
	.public ov112_021E5E48
	.extern ov112_021FFAA4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5E28
ov112_021E5E28: ; 0x021E5E28
	push {r3, r4, r5, lr}
	ldr r0, _021E5E44 ; =ov112_021FFAA4
	ldr r4, [r0, #0x20]
	add r5, r4, #0
	add r5, #0x10
	bl OS_GetOwnerRtcOffset
	str r0, [r4, #0x10]
	str r1, [r5, #4]
	add r5, #8
	add r0, r5, #0
	bl OS_GetLowEntropyData
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5E44: .word ov112_021FFAA4
	thumb_func_end ov112_021E5E28

	thumb_func_start ov112_021E5E48
ov112_021E5E48: ; 0x021E5E48
	push {r4, r5, lr}
	sub sp, #0x1c
	add r0, sp, #0x10
	bl RTC_GetTime
	cmp r0, #0
	bne _021E5EB0
	add r0, sp, #0
	bl RTC_GetDate
	cmp r0, #0
	bne _021E5EB0
	add r0, sp, #0
	add r1, sp, #0x10
	bl RTC_ConvertDateTimeToSecond
	mov r2, #0
	mov r3, #0
	mvn r2, r2
	sub r2, r2, r0
	sbc r3, r1
	bge _021E5E7A
	mov r0, #0
	mvn r0, r0
	mov r1, #0
_021E5E7A:
	mov r3, #0
	mov r2, #0
	sub r2, r0, r2
	sbc r1, r3
	bge _021E5E86
	mov r0, #0
_021E5E86:
	mov r3, #0xff
	lsl r1, r0, #0x18
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsl r4, r0, #8
	lsr r1, r3, #8
	and r1, r4
	lsr r4, r0, #0x18
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	lsr r4, r0, #8
	lsr r0, r3, #0x10
	and r0, r4
	orr r0, r5
	and r2, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021E5EB4 ; =ov112_021FFAA4
	ldr r0, [r0, #0x20]
	str r1, [r0, #0x60]
_021E5EB0:
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021E5EB4: .word ov112_021FFAA4
	thumb_func_end ov112_021E5E48

