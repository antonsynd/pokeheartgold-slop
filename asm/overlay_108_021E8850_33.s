	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9F20
	.extern ov108_021EAAA4

	.text

	.text
	thumb_func_start ov108_021E9F20
ov108_021E9F20: ; 0x021E9F20
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021E9F88 ; =0x00000448
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _021E9F88 ; =0x00000448
	ldr r0, [r5, r0]
	bl Sprite_ResetAnimCtrlState
	ldr r0, _021E9F8C ; =0x00000474
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r1, #0x33
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #4
	add r3, r0, #0
	lsl r2, r4, #2
	mov r4, #0x30
	sub r3, r4, r3
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9F90 ; =ov108_021EAAA4
	lsr r3, r3, #1
	ldr r0, [r0, r2]
	mov r2, #0x33
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021E9F8C ; =0x00000474
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021E9F8C ; =0x00000474
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9F88: .word 0x00000448
_021E9F8C: .word 0x00000474
_021E9F90: .word ov108_021EAAA4
	thumb_func_end ov108_021E9F20

