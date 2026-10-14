	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02235C7C
	.public ov40_02235DAC
	.extern ov40_0222DAB0
	.extern ov40_0222DD68
	.extern ov40_02230DCC
	.extern ov40_02245CD4

	.text

	.text
	thumb_func_start ov40_02235C7C
ov40_02235C7C: ; 0x02235C7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	add r0, r6, #0
	add r0, #0x10
	bl WindowIsInUse
	cmp r0, #1
	bne _02235C96
	b _02235DA2
_02235C96:
	add r0, r6, #0
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	bl InitWindow
	mov r0, #0x13
	str r0, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	mov r2, #2
	bl AddWindowParameterized
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x6d
	bl ov40_0222DAB0
	str r0, [sp, #0x18]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x38
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r4, r0, #0
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0202BE60
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_02230DCC
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0202BE98
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r3, r1, #0
	bl BufferString
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r2, r5, #0
	bl BufferECWord
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r1, r7, #0
	bl StringExpandPlaceholders
	add r0, r7, #0
	bl String_CountLines
	mov r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _02235D84
	add r6, r5, #0
_02235D48:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl String_GetLineN
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x80
	sub r0, r1, r0
	lsr r3, r0, #1
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02235DA8 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r6, #0x10
	cmp r5, r0
	blo _02235D48
_02235D84:
	ldr r0, [sp, #0x20]
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl MessageFormat_Delete
_02235DA2:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02235DA8: .word 0x000F0D00
	thumb_func_end ov40_02235C7C

	thumb_func_start ov40_02235DAC
ov40_02235DAC: ; 0x02235DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #1
	ldr r2, _02235E2C ; =ov40_02245CD4
	lsl r0, r0, #1
	ldrh r4, [r2, r0]
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	mov r0, #0x6d
	add r2, sp, #0xc
	bl ov40_0222DD68
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Save_Pokedex_Get
	str r0, [sp]
	add r7, r6, #0
	cmp r6, r4
	bge _02235DFE
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r5, r0, r1
_02235DE6:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	bne _02235DF6
	ldr r0, _02235E30 ; =0x0000FFFF
	strh r0, [r5]
_02235DF6:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r4
	blt _02235DE6
_02235DFE:
	cmp r6, r4
	bge _02235E1E
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r2, r0, r1
	ldr r0, _02235E30 ; =0x0000FFFF
_02235E0A:
	ldrh r1, [r2]
	cmp r1, r0
	beq _02235E16
	mov r0, #1
	str r0, [sp, #8]
	b _02235E1E
_02235E16:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, r4
	blt _02235E0A
_02235E1E:
	ldr r0, [sp, #4]
	bl Heap_Free
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235E2C: .word ov40_02245CD4
_02235E30: .word 0x0000FFFF
	thumb_func_end ov40_02235DAC

