	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223DEB8
	.public ov40_0223DF1C
	.extern ov40_0224565C
	.extern ov40_02245868

	.text

	.text
	thumb_func_start ov40_0223DEB8
ov40_0223DEB8: ; 0x0223DEB8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	ldr r1, _0223DF0C ; =0x000004C3
	ldr r6, _0223DF10 ; =0x000006F4
	ldrb r1, [r5, r1]
	cmp r1, #0xff
	bne _0223DED0
	mov r1, #0x32
	b _0223DED2
_0223DED0:
	ldr r1, _0223DF14 ; =0x0000014D
_0223DED2:
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DF18 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223DF0C: .word 0x000004C3
_0223DF10: .word 0x000006F4
_0223DF14: .word 0x0000014D
_0223DF18: .word 0x000F0D00
	thumb_func_end ov40_0223DEB8

	thumb_func_start ov40_0223DF1C
ov40_0223DF1C: ; 0x0223DF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r2, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r5, _0223E010 ; =ov40_02245868
	str r0, [sp, #0x1c]
	add r4, sp, #0x2c
	mov r3, #6
_0223DF32:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0223DF32
	ldr r4, _0223E014 ; =ov40_0224565C
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	cmp r2, #0
	str r0, [r3]
	beq _0223DF4E
	bl GF_AssertFail
_0223DF4E:
	ldr r1, _0223E018 ; =0x00000798
	ldr r0, [sp, #0x1c]
	mov r6, #3
	str r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	sub r1, #0xc4
	add r7, sp, #0x20
	add r6, #0xfd
	add r4, r0, r1
	add r5, sp, #0x2c
_0223DF66:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	ldr r0, [sp, #0x18]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0223DF66
	ldr r1, _0223E01C ; =0x000006D4
	ldr r0, [sp, #0x1c]
	mov r6, #0
	add r5, r0, r1
_0223DFC6:
	ldr r0, [sp, #0x14]
	ldr r1, [r7]
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E020 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add r6, r6, #1
	add r5, #0x10
	add r7, r7, #4
	cmp r6, #2
	blt _0223DFC6
	ldr r0, [sp, #0x14]
	bl ov40_0223DEB8
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0223E010: .word ov40_02245868
_0223E014: .word ov40_0224565C
_0223E018: .word 0x00000798
_0223E01C: .word 0x000006D4
_0223E020: .word 0x000F0D00
	thumb_func_end ov40_0223DF1C

