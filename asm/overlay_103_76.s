	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE3E4
	.public ov103_021EE930
	.public ov103_021EE9C8
	.public ov103_021EEA24
	.public ov103_021EEA48
	.public ov103_021EEAC8
	.public ov103_021EEFBC
	.public ov103_021EEFC8
	.public ov103_021EEFD8
	.public ov103_021EF008

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

	thumb_func_start ov103_021EEA24
ov103_021EEA24: ; 0x021EEA24
	push {r3, lr}
	ldr r1, [r0, #0xc]
	ldr r0, _021EEA40 ; =0x000002E2
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021EEA36
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021EEA36:
	ldr r0, _021EEA44 ; =ov103_021EEFBC
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
	nop
_021EEA40: .word 0x000002E2
_021EEA44: .word ov103_021EEFBC
	thumb_func_end ov103_021EEA24

	thumb_func_start ov103_021EEA48
ov103_021EEA48: ; 0x021EEA48
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, _021EEA90 ; =0x000002E2
	ldrh r1, [r1, r0]
	ldrh r0, [r5, #0x1c]
	cmp r0, r1
	bls _021EEA60
	strh r1, [r5, #0x1c]
	mov r4, #0
	b _021EEA62
_021EEA60:
	ldrb r4, [r5, #0x1e]
_021EEA62:
	mov r0, #1
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x9d
	str r0, [sp, #8]
	ldr r0, _021EEA94 ; =ov103_021EEFD8
	ldr r1, _021EEA98 ; =ov103_021EF008
	ldr r2, _021EEA9C ; =ov103_021EEFC8
	add r3, r5, #0
	bl GridInputHandler_Create
	mov r1, #0x9e
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov103_021EEAC8
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EEA90: .word 0x000002E2
_021EEA94: .word ov103_021EEFD8
_021EEA98: .word ov103_021EF008
_021EEA9C: .word ov103_021EEFC8
	thumb_func_end ov103_021EEA48

