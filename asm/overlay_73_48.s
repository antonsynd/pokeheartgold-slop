#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E756C
	.public ov73_021E7818

	.text

	thumb_func_start ov73_021E756C
ov73_021E756C: ; 0x021E756C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xb4
	mov r1, #0x32
	add r6, r2, #0
	bl String_New
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	add r1, r7, #0
	add r2, r4, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x44]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r0, #0xaa
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0xaa
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl DrawFrameAndWindow2
	cmp r6, #0
	bne _021E75DC
	add r0, r5, #0
	bl ov73_021E7818
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r2, [r5, #0x44]
	add r0, r5, r0
	mov r1, #1
	bl AddTextPrinterParameterized
	add sp, #0xc
	str r0, [r5, #0x4c]
	pop {r4, r5, r6, r7, pc}
_021E75DC:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r2, [r5, #0x44]
	add r0, r5, r0
	mov r1, #1
	bl AddTextPrinterParameterized
	mov r0, #0xff
	str r0, [r5, #0x4c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov73_021E756C

