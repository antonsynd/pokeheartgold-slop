	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237AC0
	.extern ov40_022306C0
	.extern ov40_02245268
	.extern ov40_02245274

	.text

	.text
	thumb_func_start ov40_02237AC0
ov40_02237AC0: ; 0x02237AC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r1, _02237B70 ; =ov40_02245268
	ldr r5, _02237B74 ; =ov40_02245274
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x18]
	mov r7, #1
	str r1, [sp, #0x24]
	mov r1, #0
	str r1, [sp, #0x18]
	mov r1, #0x8d
	lsl r1, r1, #2
	add r6, sp, #0x20
	str r2, [sp, #0x20]
	add r4, r0, r1
_02237AE6:
	add r0, r4, #0
	bl InitWindow
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	ldr r1, [r6]
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02237B78 ; =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	mul r0, r1
	add r7, r7, r0
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, r5, #4
	add r6, r6, #4
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _02237AE6
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02237B70: .word ov40_02245268
_02237B74: .word ov40_02245274
_02237B78: .word 0x000F0D00
	thumb_func_end ov40_02237AC0

