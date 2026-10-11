#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_022239CC

	.text

	.text
	thumb_func_start ov08_022239CC
ov08_022239CC: ; 0x022239CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	mov r1, #9
	ldr r4, [r5, #0x2c]
	bl NewString_ReadMsgData
	ldr r2, _02223A34 ; =0x0000114D
	add r7, r0, #0
	ldrb r3, [r5, r2]
	mov r2, #0x90
	ldr r0, [r5, #0x14]
	mul r2, r3
	add r2, r5, r2
	lsl r3, r6, #2
	add r2, r2, r3
	ldrh r2, [r2, #0x3c]
	mov r1, #0
	bl BufferItemName
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r7, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02223A38 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223A34: .word 0x0000114D
_02223A38: .word 0x00010200
	thumb_func_end ov08_022239CC

