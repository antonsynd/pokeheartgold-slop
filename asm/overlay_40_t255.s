	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02236F38
	.extern ov40_022306C0
	.extern ov40_022452DC

	.text

	.text
	thumb_func_start ov40_02236F38
ov40_02236F38: ; 0x02236F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r1, [r0, r1]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r5, _02236FD8 ; =ov40_022452DC
	mov r6, #1
	mov r7, #0
	add r4, r1, r0
_02236F50:
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
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r0, #0x48]
	add r1, #0x3c
	bl NewString_ReadMsgData
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov40_022306C0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236FDC ; =0x000F0D00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r7, r7, #1
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	add r5, r5, #4
	cmp r7, #6
	blo _02236F50
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02236FD8: .word ov40_022452DC
_02236FDC: .word 0x000F0D00
	thumb_func_end ov40_02236F38

