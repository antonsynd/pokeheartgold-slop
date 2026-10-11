	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240528
	.public ov83_02240C48
	.public ov83_02241DD8

    .text

	thumb_func_start ov83_02240528
ov83_02240528: ; 0x02240528
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #6
	ldr r0, _02240658 ; =0x00010200
	bne _02240574
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x6a
	bl ov83_022479E4
	b _0224058C
_02240574:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x6b
	bl ov83_022479E4
_0224058C:
	ldr r0, _0224065C ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_PlayerData_GetProfile
	add r6, r0, #0
	mov r0, #8
	mov r1, #0x6b
	bl String_New
	add r4, r0, #0
	add r0, r6, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	bl CopyU16ArrayToString
	add r0, r6, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _022405BC
	ldr r0, _02240660 ; =0x00070800
	b _022405C0
_022405BC:
	mov r0, #0xc1
	lsl r0, r0, #0xa
_022405C0:
	mov r2, #0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov83_02247998
	add r0, r4, #0
	bl String_Delete
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r4, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl FrontierSave_GetStat
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov83_02240C48
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240658 ; =0x00010200
	mov r1, #0x41
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #2
	bl ov83_02241DD8
	mov r0, #0x3f
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02240658: .word 0x00010200
_0224065C: .word 0x0000050C
_02240660: .word 0x00070800
	thumb_func_end ov83_02240528

