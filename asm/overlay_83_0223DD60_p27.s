	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FD4C
	.extern ov83_0223FF20
	.extern ov83_02240C48

    .text

	.text
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

