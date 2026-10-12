#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FF0FC

	.text

	.text
	thumb_func_start ov15_021FF0FC
ov15_021FF0FC: ; 0x021FF0FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	lsl r0, r0, #8
	mov r1, #6
	bl String_New
	mov r6, #0x85
	add r4, r0, #0
	lsl r6, r6, #2
	cmp r7, #0
	bne _021FF14E
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	add r0, #0xdc
	ldr r0, [r5, r0]
	mov r1, #0x50
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF1DC ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, r6
	mov r3, #4
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	b _021FF160
_021FF14E:
	mov r0, #0x48
	mov r1, #0
	str r0, [sp]
	mov r3, #0x10
	add r0, r5, r6
	add r2, r1, #0
	str r3, [sp, #4]
	bl FillWindowPixelRect
_021FF160:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x51
	bl NewString_ReadMsgData
	str r0, [sp, #0x10]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PlayerProfile_GetMoney
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #6
	bl BufferIntegerAsString
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r7, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF1DC ; =0x00010200
	add r7, #8
	mov r3, #0x44
	str r0, [sp, #8]
	mov r1, #0
	add r0, r5, r6
	add r2, r4, #0
	sub r3, r3, r7
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x10]
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF1DC: .word 0x00010200
	thumb_func_end ov15_021FF0FC

