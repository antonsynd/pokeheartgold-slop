	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02239418
	.extern ov40_022453D8
	.extern ov40_022453F8

	.text

	.text
	thumb_func_start ov40_02239418
ov40_02239418: ; 0x02239418
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _02239508 ; =ov40_022453D8
	str r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	mov r0, #0
	ldr r5, _0223950C ; =ov40_022453F8
	mov r7, #1
	str r0, [sp, #0x18]
	add r4, #0x24
_02239434:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0223947C
	ldr r0, [r6, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r6]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	b _022394B4
_0223947C:
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
_022394B4:
	mul r0, r1
	add r7, r7, r0
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	mov r1, #0x43
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239510 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r6, #0x10
	add r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _02239434
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02239508: .word ov40_022453D8
_0223950C: .word ov40_022453F8
_02239510: .word 0x000F0D00
	thumb_func_end ov40_02239418

