	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DAB0
	.public ov40_022306C0
	.public ov40_02230DCC
	.public ov40_022442F0
	.public ov40_022443B4

	.text

	thumb_func_start ov40_022442F0
ov40_022442F0: ; 0x022442F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _022443A8 ; =0x0000011A
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp, #0x10]
	cmp r0, r3
	bne _0224436A
	lsl r0, r2, #2
	add r1, r5, r0
	ldr r0, _022443AC ; =0x000008A4
	sub r0, #0x18
	ldr r7, [r1, r0]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r6, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov40_02230DCC
	ldr r0, [r5, #0x48]
	ldr r1, [sp, #0x10]
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r1, #0
	bl BufferString
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x14]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	b _02244372
_0224436A:
	ldr r0, [r5, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
_02244372:
	ldr r0, _022443AC ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022443B0 ; =0x000F0D0C
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _022443AC ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _022443AC ; =0x000008A4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022443A8: .word 0x0000011A
_022443AC: .word 0x000008A4
_022443B0: .word 0x000F0D0C
	thumb_func_end ov40_022442F0

	thumb_func_start ov40_022443B4
ov40_022443B4: ; 0x022443B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r6, r4, #0
	add r6, #0x10
	add r0, r6, #0
	bl InitWindow
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	mov r3, #4
	bl AddWindowParameterized
	add r0, r6, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244490 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	add r4, #0x20
	add r0, r4, #0
	bl InitWindow
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	mov r3, #0x12
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl NewString_ReadMsgData
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244490 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244490: .word 0x000F0D00
	thumb_func_end ov40_022443B4

