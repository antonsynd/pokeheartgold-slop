	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_0225967C
	.extern _02259A60
	.extern ov88_0225983C
	.extern ov88_02259980
	.extern ov88_02259A68

	.text

	.text
	thumb_func_start ov88_0225967C
ov88_0225967C: ; 0x0225967C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r1, #0
	mov r2, #0x70
	str r0, [sp, #0x14]
	bl memset
	ldr r2, _022597CC ; =0x000002F5
	ldr r3, [sp, #0x1c]
	mov r0, #0
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	mov r0, #0x80
	bl String_New
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, _022597D0 ; =ov88_02259A68
	ldr r5, _022597D4 ; =ov88_02259980
	str r0, [sp, #0x28]
	ldr r0, _022597D8 ; =_02259A60
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
_022596BC:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldrh r1, [r1]
	ldr r0, [sp, #0x20]
	ldr r2, [r2]
	bl ov88_0225983C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrb r3, [r5]
	ldr r0, [r0]
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	bl ReadMsgDataIntoString
	ldr r0, [sp, #0x34]
	bl String_CountLines
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldrb r6, [r5, #8]
	bl String_GetLength
	ldr r1, [sp, #0x1c]
	add r0, r0, #1
	bl String_New
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #0
	cmp r0, #0
	bls _0225978A
_02259720:
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	add r2, r7, #0
	bl String_GetLineN
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0225973A
	cmp r0, #1
	beq _02259740
	cmp r0, #2
	beq _02259756
	b _02259766
_0225973A:
	ldrb r0, [r5, #7]
	str r0, [sp, #0x2c]
	b _02259766
_02259740:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	add r0, r0, #1
	ldrb r1, [r5, #7]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #0x2c]
	b _02259766
_02259756:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	ldrb r1, [r5, #7]
	sub r0, r1, r0
	str r0, [sp, #0x2c]
_02259766:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x30]
	add r7, r7, #1
	add r6, #0x10
	cmp r7, r0
	blo _02259720
_0225978A:
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x28]
	add r5, #0x10
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	cmp r0, #4
	blt _022596BC
	ldr r0, [sp, #0x34]
	bl String_Delete
	ldr r0, [sp, #0x38]
	bl DestroyMsgData
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022597CC: .word 0x000002F5
_022597D0: .word ov88_02259A68
_022597D4: .word ov88_02259980
_022597D8: .word _02259A60
	thumb_func_end ov88_0225967C

