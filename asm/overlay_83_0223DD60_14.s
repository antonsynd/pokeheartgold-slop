	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FC48
	.public ov83_0223FCB4
	.public ov83_0223FD14
	.public ov83_0223FD4C
	.public ov83_0223FF20
	.public ov83_0223FF44
	.public ov83_0223FFD8
	.public ov83_02240C48

    .text

	thumb_func_start ov83_0223FC48
ov83_0223FC48: ; 0x0223FC48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FC48

	thumb_func_start ov83_0223FCB4
ov83_0223FCB4: ; 0x0223FCB4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r6, r3, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FCB4

	thumb_func_start ov83_0223FD14
ov83_0223FD14: ; 0x0223FD14
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xb0
	add r2, r4, #0
	bl ov83_0223FC48
	add r5, #0xb0
	add r4, r0, #0
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FD14

	thumb_func_start ov83_0223FD4C
ov83_0223FD4C: ; 0x0223FD4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferItemName
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x46
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x47
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	bl GetMonNature
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferNatureName
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x48
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x49
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4a
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4c
	mov r3, #1
	bl ov83_0223FF20
	mov r3, #0x38
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4d
	str r3, [sp]
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4e
	mov r3, #0x58
	bl ov83_0223FF20
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4f
	mov r3, #0x90
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x50
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x51
	mov r3, #0x38
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x52
	mov r3, #0x58
	bl ov83_0223FF20
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x53
	mov r3, #0x90
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x54
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x55
	mov r3, #0x38
	bl ov83_0223FF20
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223FD4C

	thumb_func_start ov83_0223FF20
ov83_0223FF20: ; 0x0223FF20
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0x10
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xff
	str r4, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r4, #2
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	bl ov83_0223FCB4
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov83_0223FF20

	thumb_func_start ov83_0223FF44
ov83_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x61
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x62
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x63
	bl ov83_0223FFD8
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223FF44

	thumb_func_start ov83_0223FFD8
ov83_0223FFD8: ; 0x0223FFD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl BufferMoveName
	mov r3, #0x18
	add r0, r5, #0
	mul r0, r3
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov83_02240C48
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov83_02240C48
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x60
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FFD8

