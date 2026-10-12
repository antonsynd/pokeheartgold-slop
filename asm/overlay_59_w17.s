	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238834
	.public ov59_022388C4
	.extern _0223CB80
	.extern ov59_02238C24
	.extern ov59_02238C7C
	.extern ov59_02239EA8
	.extern ov59_0223C6C4
	.extern ov59_0223C6C6

	.text

	.text
	thumb_func_start ov59_02238834
ov59_02238834: ; 0x02238834
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0x4a
	add r6, r1, #0
	lsl r0, r0, #2
	add r7, r4, r0
	add r0, r6, #6
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r7, r0
	mov r1, #0
	str r2, [sp, #0x10]
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x68]
	add r1, r6, #5
	bl ReadMsgDataIntoString
	ldr r1, [r4, #0x68]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r1, _022388C0 ; =_0223CB80
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r3, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r5, #0x30
	sub r5, r5, r3
	ldr r0, [sp, #0x18]
	lsr r3, r5, #0x1f
	add r3, r5, r3
	ldr r2, [r4, #0x68]
	add r0, r7, r0
	mov r1, #4
	asr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x18]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x95
	lsl r0, r0, #2
	add r4, r4, r0
	add r0, r6, #0
	add r0, #9
	lsl r5, r0, #2
	lsl r2, r6, #1
	ldr r1, [sp, #0x10]
	add r2, #0x1c
	ldr r0, [r4, r5]
	add r1, r1, r2
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, r5]
	bl Sprite_ResetAnimCtrlState
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022388C0: .word _0223CB80
	thumb_func_end ov59_02238834

	thumb_func_start ov59_022388C4
ov59_022388C4: ; 0x022388C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov59_02239EA8
	cmp r0, #7
	beq _022388D6
	cmp r0, #8
	beq _022388E2
	b _022388E8
_022388D6:
	add r0, r5, #0
	mov r6, #0xc8
	mov r4, #0x5c
	bl ov59_02238C24
	b _022388FE
_022388E2:
	mov r6, #0xf0
	mov r4, #0xa8
	b _022388FE
_022388E8:
	ldr r1, _02238914 ; =ov59_0223C6C4
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	add r1, r1, #4
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	ldr r1, _02238918 ; =ov59_0223C6C6
	ldrh r0, [r1, r0]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022388FE:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	bl Sprite_SetPositionXY
	add r0, r5, #0
	bl ov59_02238C7C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02238914: .word ov59_0223C6C4
_02238918: .word ov59_0223C6C6
	thumb_func_end ov59_022388C4

