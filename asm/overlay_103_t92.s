	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE930
	.public ov103_021EE9C8
	.extern ov103_021EE3E4

	.text

	.text
	thumb_func_start ov103_021EE930
ov103_021EE930: ; 0x021EE930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021EE93A:
	add r0, r4, #0
	add r0, #0x1a
	lsl r6, r0, #4
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	add r0, #0x48
	add r0, r0, r6
	bl FillWindowPixelBuffer
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1a
	add r2, r4, #0
	bl ov103_021EE9C8
	ldr r0, [r5, #0xc]
	add r0, #0x48
	add r0, r0, r6
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	cmp r4, #3
	blo _021EE93A
	mov r0, #0x86
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl Mail_GetAuthorNamePtr
	add r1, r0, #0
	mov r0, #0x23
	ldr r2, [r5, #0xc]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl CopyU16ArrayToString
	mov r1, #0x86
	ldr r4, [r5, #0xc]
	mov r3, #1
	ldr r0, _021EE9C4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r2, #0
	lsl r1, r1, #2
	add r0, r4, r1
	str r2, [sp, #8]
	add r1, #0x18
	ldr r1, [r4, r1]
	bl ov103_021EE3E4
	mov r0, #0x86
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EE9C4: .word 0x00010200
	thumb_func_end ov103_021EE930

	thumb_func_start ov103_021EE9C8
ov103_021EE9C8: ; 0x021EE9C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl Mail_GetUnk20Array
	add r6, r0, #0
	bl MailMsg_IsInit
	cmp r0, #0
	beq _021EEA1C
	add r0, r6, #0
	mov r1, #0x9d
	bl MailMsg_GetExpandedString
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _021EEA20 ; =0x00010200
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r5, #0xc]
	lsl r0, r4, #4
	add r1, #0x48
	add r0, r1, r0
	add r1, r6, #0
	add r3, r2, #0
	bl ov103_021EE3E4
	add r0, r6, #0
	bl String_Delete
_021EEA1C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EEA20: .word 0x00010200
	thumb_func_end ov103_021EE9C8

