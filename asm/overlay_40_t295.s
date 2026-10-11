	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02239574
	.extern ov40_0222DAB0
	.extern ov40_0222E658
	.extern ov40_02230DCC

	.text

	.text
	thumb_func_start ov40_02239574
ov40_02239574: ; 0x02239574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x4c]
	bne _022395BA
	ldr r1, _022397A4 ; =0x00000718
	ldr r3, [r4, #0xc]
	mov r2, #0x48
	ldr r1, [r4, r1]
	mul r2, r3
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	bl NewString_ReadMsgData
	b _022395CE
_022395BA:
	ldr r1, _022397A8 ; =0x00000714
	mov r2, #0x72
	ldr r3, [r4, #0xc]
	lsl r2, r2, #2
	ldr r1, [r4, r1]
	mul r2, r3
	ldrb r1, [r1, r2]
	sub r1, r1, #1
	bl NewString_ReadMsgData
_022395CE:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022397AC ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x24
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r0, #0x24
	bl ScheduleWindowCopyToVram
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x48]
	bne _02239614
	ldr r1, [r4, #0x14]
	add r1, #0x52
	bl NewString_ReadMsgData
	b _0223961A
_02239614:
	mov r1, #0x5b
	bl NewString_ReadMsgData
_0223961A:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022397AC ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r0, #0x34
	bl ScheduleWindowCopyToVram
	add r0, r7, #0
	bl String_Delete
	ldr r0, _022397B0 ; =0x0000088C
	mov r1, #0x6d
	ldr r0, [r5, r0]
	bl sub_020315B8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov40_02230DCC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02239668
	cmp r0, #1
	beq _022396A6
	cmp r0, #2
	beq _022396D0
	b _0223973A
_02239668:
	ldr r0, _022397B0 ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02031700
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	mov r1, #0x55
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	mov r1, #4
	bl ov40_0222E658
	add r1, r0, #0
	ldr r0, _022397B4 ; =0x00000744
	ldr r0, [r4, r0]
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
	b _0223973A
_022396A6:
	ldr r0, _022397B0 ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_020316F0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x48]
	mov r1, #0x56
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0
	bl BufferMonthNameAbbr
	b _0223973A
_022396D0:
	ldr r0, _022397B0 ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_020315E0
	str r0, [sp, #0x10]
	ldr r0, _022397B0 ; =0x0000088C
	ldr r0, [r5, r0]
	bl sub_02031610
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x48]
	mov r1, #0x57
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022396F8
	ldr r0, _022397B8 ; =0x000001EE
	str r0, [sp, #0x10]
_022396F8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0223971C
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	mov r1, #0x6d
	add r2, sp, #0x2c
	bl GetSpeciesNameIntoArray
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	bl CopyU16ArrayToString
	b _02239726
_0223971C:
	ldr r0, [r5, #0x48]
	mov r1, #0x15
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
_02239726:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
_0223973A:
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r3, #0
	bl BufferString
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022397AC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, [sp, #0x14]
	add r0, #0x34
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r4, #0x34
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_ResetBuffers
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x1fc
	add sp, #0x30
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022397A4: .word 0x00000718
_022397A8: .word 0x00000714
_022397AC: .word 0x000F0D00
_022397B0: .word 0x0000088C
_022397B4: .word 0x00000744
_022397B8: .word 0x000001EE
	thumb_func_end ov40_02239574

