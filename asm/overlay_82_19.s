	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223EFCC
	.public ov82_0223F040
	.public ov82_0223F10C
	.public ov82_0223F134
	.public ov82_0223F1AC
	.public ov82_0223F224
	.extern _0223FE20
	.extern ov82_0223F6C4

	.text

	.text
	thumb_func_start ov82_0223EFCC
ov82_0223EFCC: ; 0x0223EFCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl Party_GetMonByIndex
	mov r1, #0xb3
	add r2, sp, #0x10
	bl GetMonData
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl FillWindowPixelBuffer
	mov r0, #0xb
	mov r1, #0x69
	bl String_New
	add r1, sp, #0x10
	add r6, r0, #0
	bl CopyU16ArrayToString
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r2, sp, #0x30
	ldrb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	ldrb r1, [r2, #0x18]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #8
	lsr r3, r3, #0x10
	orr r0, r3
	orr r0, r1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r2, #0x1c]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov82_0223EFCC

	thumb_func_start ov82_0223F040
ov82_0223F040: ; 0x0223F040
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	bl FillWindowPixelBuffer
	ldr r2, _0223F108 ; =0x000002DF
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x69
	bl NewMsgDataFromNarc
	str r0, [sp, #0x24]
	mov r0, #0xb
	mov r1, #0x69
	bl String_New
	add r5, r0, #0
	mov r0, #0
	lsl r2, r4, #0x18
	lsr r3, r2, #8
	lsl r2, r6, #0x18
	lsr r2, r2, #0x10
	str r0, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r0, #0x10
	add r1, sp, #0x30
	str r0, [sp, #0x14]
	ldrb r0, [r1, #0x10]
	orr r2, r3
	orr r0, r2
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x14]
	str r0, [sp, #0x18]
_0223F08C:
	mov r4, #0
	mov r6, #1
_0223F090:
	ldr r0, [sp, #0x20]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F0D4
	add r0, r5, #0
	bl String_SetEmpty
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	bl ReadMsgDataIntoString
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r6, #0
	bl AddTextPrinterParameterizedWithColor
_0223F0D4:
	add r4, r4, #1
	add r6, #0x40
	cmp r4, #4
	blt _0223F090
	ldr r0, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	add r0, #0x24
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #5
	blt _0223F08C
	add r0, r5, #0
	bl String_Delete
	ldr r0, [sp, #0x24]
	bl DestroyMsgData
	ldr r0, [sp, #0x10]
	bl CopyWindowToVram
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F108: .word 0x000002DF
	thumb_func_end ov82_0223F040

	thumb_func_start ov82_0223F10C
ov82_0223F10C: ; 0x0223F10C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0x18]
	add r0, #0x98
	str r1, [sp, #8]
	add r1, r2, #0
	ldr r0, [r0]
	mov r2, #2
	mov r3, #0
	bl PrintUIntOnWindow
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223F10C

	thumb_func_start ov82_0223F134
ov82_0223F134: ; 0x0223F134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
_0223F146:
	mov r4, #0
	mov r5, #0x12
_0223F14A:
	ldr r0, [sp, #0xc]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F18A
	cmp r0, #9
	beq _0223F18A
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov82_0223F6C4
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	bl sub_02030BD0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _0223F17C
	mov r2, #0xa
_0223F17C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl ov82_0223F10C
_0223F18A:
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _0223F14A
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0223F146
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223F134

	thumb_func_start ov82_0223F1AC
ov82_0223F1AC: ; 0x0223F1AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #0x18
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	add r7, r2, #0
	add r4, r3, #0
	bl FillWindowPixelBuffer
	ldr r2, _0223F220 ; =0x000001B9
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x69
	bl NewMsgDataFromNarc
	mov r1, #0x25
	str r0, [sp, #0x10]
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r2, sp, #0x18
	ldrb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	ldrb r1, [r2, #0x18]
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #8
	lsr r3, r3, #0x10
	orr r0, r3
	orr r0, r1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r2, #0x1c]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F220: .word 0x000001B9
	thumb_func_end ov82_0223F1AC

	thumb_func_start ov82_0223F224
ov82_0223F224: ; 0x0223F224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x69
	mov r1, #0x3c
	bl Heap_Alloc
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0x3c
	bl memset
	mov r0, #0x85
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #0xa4
	ldr r2, [r4, r0]
	ldr r1, [r1]
	str r2, [r1]
	add r2, r4, #0
	add r2, #0xa4
	ldr r2, [r2]
	mov r1, #1
	strb r1, [r2, #0x11]
	add r2, r4, #0
	add r2, #0x9c
	ldr r3, [r2]
	add r2, r4, #0
	add r2, #0xa4
	ldr r2, [r2]
	str r3, [r2, #4]
	add r2, r4, #0
	add r2, #0xa4
	ldr r2, [r2]
	strb r1, [r2, #0x12]
	ldr r0, [r4, r0]
	bl Party_GetCount
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1]
	strb r0, [r1, #0x13]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	strb r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	strh r1, [r0, #0x18]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl SaveArray_IsNatDexEnabled
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1]
	str r0, [r1, #0x1c]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_02088288
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl Save_SpecialRibbons_Get
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1]
	str r0, [r1, #0x20]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0, #0x34]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r1, _0223F2F4 ; =_0223FE20
	bl sub_02089D40
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r4, #0xa4
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_0208AD34
	pop {r4, pc}
	.balign 4, 0
_0223F2F4: .word _0223FE20
	thumb_func_end ov82_0223F224

