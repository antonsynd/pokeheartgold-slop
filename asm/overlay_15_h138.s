#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FEDEC

	.text

	.text
	thumb_func_start ov15_021FEDEC
ov15_021FEDEC: ; 0x021FEDEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #6
	str r1, [sp, #0x10]
	ldrsh r1, [r5, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _021FEE06
	bl GF_AssertFail
_021FEE06:
	mov r0, #2
	mov r1, #6
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _021FEE1A
	mov r4, #0xa
	b _021FEE1C
_021FEE1A:
	mov r4, #0x64
_021FEE1C:
	mov r0, #0x1a
	lsl r0, r0, #6
	ldrsh r7, [r5, r0]
	ldr r0, [sp, #0x10]
	mov r6, #0
	cmp r0, #0
	bls _021FEE96
	add r5, #0xb4
_021FEE2C:
	add r0, r7, #0
	add r1, r4, #0
	bl _u32_div_f
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r2, #1
	mov r3, #0
	bl String16_FormatInteger
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	mul r1, r4
	sub r7, r7, r1
	add r0, r4, #0
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x11
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FEEA0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blo _021FEE2C
_021FEE96:
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEEA0: .word 0x00010200
	thumb_func_end ov15_021FEDEC

