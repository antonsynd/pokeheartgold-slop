#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F135C
	.public ov112_021F13BC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F135C
ov112_021F135C: ; 0x021F135C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	cmp r6, #4
	blo _021F1370
	bl GF_AssertFail
_021F1370:
	add r4, r5, #0
	add r4, #0x18
	lsl r6, r6, #4
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	ldr r3, [r5, #4]
	add r2, r7, #0
	bl ReadMsgData_ExpandPlaceholders
	add r5, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F13B8 ; =0x00010200
	add r2, r5, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x10]
	add r0, r4, r6
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r4, r6
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F13B8: .word 0x00010200
	thumb_func_end ov112_021F135C

	thumb_func_start ov112_021F13BC
ov112_021F13BC: ; 0x021F13BC
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov112_021F135C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov112_021F13BC

