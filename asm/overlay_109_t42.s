	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7248
	.extern ov109_021E7114
	.extern ov109_021E7850

	.text

	.text
	thumb_func_start ov109_021E7248
ov109_021E7248: ; 0x021E7248
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x14]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	cmp r4, #0
	bne _021E728A
	add r5, #0x70
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E728A:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl BufferPlayersName
	ldrh r0, [r4, #0x32]
	ldr r1, [r5]
	ldr r2, [r5, #0x2c]
	bl MapID_GetLandmarkName
	mov r0, #0
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	mov r1, #1
	bl BufferString
	add r1, r4, #0
	ldr r0, [r5, #0x2c]
	add r1, #0x18
	bl CopyU16ArrayToString
	mov r0, #0
	mov r1, #2
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	add r3, r1, #0
	bl BufferString
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x38]
	ldr r0, [r5, #0x28]
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x7d
	lsl r2, r2, #4
	add r2, r3, r2
	mov r1, #3
	mov r3, #4
	bl BufferIntegerAsString
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x38]
	ldr r0, [r5, #0x28]
	lsr r2, r2, #0x10
	lsl r2, r2, #0x18
	mov r1, #4
	lsr r2, r2, #0x18
	bl BufferIntegerAsString
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x38]
	ldr r0, [r5, #0x28]
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	mov r1, #5
	lsr r2, r2, #0x18
	bl BufferIntegerAsString
	add r0, r4, #0
	bl ov109_021E7850
	cmp r0, #1
	ldr r0, [r5, #0x28]
	bls _021E733A
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x4c]
	bl StringExpandPlaceholders
	b _021E7342
_021E733A:
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x48]
	bl StringExpandPlaceholders
_021E7342:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E7384 ; =0x00030200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x2c]
	add r0, #0x70
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	add r0, #0x70
	bl ScheduleWindowCopyToVram
	mov r0, #8
	str r0, [sp]
	ldrb r1, [r4, #4]
	add r0, r5, #0
	mov r2, #7
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r3, #0xd
	bl ov109_021E7114
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E7384: .word 0x00030200
	thumb_func_end ov109_021E7248

