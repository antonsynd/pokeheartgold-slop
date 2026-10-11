	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE3E4
	.public ov103_021EE644

	.text

	thumb_func_start ov103_021EE644
ov103_021EE644: ; 0x021EE644
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x6e
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #0x8a
	ldr r3, [r5, #0xc]
	lsl r2, r2, #2
	ldr r0, [r3, r2]
	add r2, #8
	ldr r2, [r3, r2]
	mov r1, #2
	bl ReadMsgDataIntoString
	mov r1, #0x6e
	ldr r2, [r5, #0xc]
	mov r3, #0
	ldr r0, _021EE780 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r2, r1
	add r1, #0x78
	ldr r1, [r2, r1]
	mov r2, #0x14
	bl ov103_021EE3E4
	mov r1, #0x23
	ldr r2, [r5, #0xc]
	lsl r1, r1, #4
	mov r0, #0
	ldr r1, [r2, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0
	lsl r4, r0, #0x10
	mov r0, #0x8b
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r2, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r2, [r5, #0x1c]
	add r2, r2, #1
	bl BufferIntegerAsString
	mov r0, #0x8a
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl NewString_ReadMsgData
	mov r1, #0x8b
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	add r6, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r6, #0
	bl String_Delete
	mov r1, #0x23
	ldr r2, [r5, #0xc]
	lsl r1, r1, #4
	mov r0, #0
	ldr r1, [r2, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r6, #0x6e
	ldr r1, [r5, #0xc]
	mov r3, #0
	ldr r0, _021EE780 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #2
	add r0, r1, r6
	str r3, [sp, #8]
	add r6, #0x78
	ldr r1, [r1, r6]
	lsr r4, r4, #0x11
	mov r6, #0x14
	sub r6, r6, r4
	sub r2, r6, r2
	bl ov103_021EE3E4
	ldr r6, [r5, #0xc]
	mov r1, #0
	mov r2, #0x8b
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	lsl r2, r2, #2
	ldr r0, [r6, r2]
	add r2, #0xb6
	ldrh r2, [r6, r2]
	add r2, r2, #1
	bl BufferIntegerAsString
	mov r0, #0x8a
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl NewString_ReadMsgData
	mov r1, #0x8b
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	add r6, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r6, #0
	bl String_Delete
	mov r1, #0x6e
	ldr r2, [r5, #0xc]
	mov r3, #0
	ldr r0, _021EE780 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r2, r1
	str r3, [sp, #8]
	add r1, #0x78
	ldr r1, [r2, r1]
	add r4, #0x14
	add r2, r4, #0
	bl ov103_021EE3E4
	mov r0, #0x6e
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE780: .word 0x00010200
	thumb_func_end ov103_021EE644

