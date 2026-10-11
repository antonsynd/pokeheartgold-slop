	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E71EC
	.public ov85_021E7274

	.text

	.text
	thumb_func_start ov85_021E71EC
ov85_021E71EC: ; 0x021E71EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	ldr r1, _021E7270 ; =0x00000C9C
	add r6, r2, #0
	add r4, r0, r1
	add r5, r4, #0
	add r5, #0xc
	bl sub_0203769C
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl BufferPlayersName
	ldr r0, [r4, #8]
	mov r1, #2
	add r2, r6, #0
	bl BufferPlayersName
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x66
	bl String_New
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xe
	bl DrawFrameAndWindow2
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	add r0, r5, #0
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7270: .word 0x00000C9C
	thumb_func_end ov85_021E71EC

	thumb_func_start ov85_021E7274
ov85_021E7274: ; 0x021E7274
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	ldr r1, _021E72E4 ; =0x00000C9C
	add r4, r0, r1
	add r5, r4, #0
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, #0xc
	bl BufferItemName
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x66
	bl String_New
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r6, #0
	bl String_Delete
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xe
	bl DrawFrameAndWindow2
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	add r0, r5, #0
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E72E4: .word 0x00000C9C
	thumb_func_end ov85_021E7274

