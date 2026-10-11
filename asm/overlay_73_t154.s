#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021EA050
	.public ov73_021EA088
	.public ov73_021EA0BC

	.text

	.text
	thumb_func_start ov73_021EA050
ov73_021EA050: ; 0x021EA050
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _021EA05E
	cmp r3, #2
	beq _021EA074
	b _021EA082
_021EA05E:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl FontID_String_GetWidth
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _021EA082
_021EA074:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl FontID_String_GetWidth
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_021EA082:
	add r0, r2, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov73_021EA050

	thumb_func_start ov73_021EA088
ov73_021EA088: ; 0x021EA088
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov73_021EA050
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021EA088

	thumb_func_start ov73_021EA0BC
ov73_021EA0BC: ; 0x021EA0BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov73_021EA050
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov73_021EA0BC

