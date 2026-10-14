	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E6AA4

	.text

	.text
	thumb_func_start ov56_021E6AA4
ov56_021E6AA4: ; 0x021E6AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r7, #0
	add r6, r4, #0
	add r5, r7, #0
	add r6, #0x4c
_021E6AB2:
	ldr r0, [r4, #0x1c]
	add r0, #0x1e
	add r0, r0, r5
	bl MailMsg_IsInit
	cmp r0, #0
	beq _021E6AF4
	ldr r0, [r4, #0x1c]
	ldr r1, [r4]
	add r0, #0x1e
	add r0, r0, r5
	bl MailMsg_GetExpandedString
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6BB0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	mov r3, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	bl String_Delete
	add r0, r6, #0
	bl CopyWindowToVram
_021E6AF4:
	add r7, r7, #1
	add r5, #8
	add r6, #0x10
	cmp r7, #3
	blt _021E6AB2
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _021E6B88
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xe9
	bl NewMsgDataFromNarc
	str r0, [r4, #0x20]
	ldr r1, [r4]
	mov r0, #0x10
	bl String_New
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x4c
	mov r6, #0
	str r0, [sp, #0x18]
_021E6B26:
	add r0, r5, #0
	bl String_SetEmpty
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	add r2, r5, #0
	bl ReadMsgDataIntoString
	mov r0, #1
	add r1, r5, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x40
	sub r7, r1, r0
	add r0, r6, #3
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021E6BB0 ; =0x00010200
	lsr r3, r7, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, r7, r3
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #1
	asr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	bl CopyWindowToVram
	add r6, r6, #1
	cmp r6, #2
	blt _021E6B26
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021E6B88:
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	ldr r0, _021E6BB0 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r2, #0x14]
	add r0, #0x8c
	bl AddTextPrinterParameterizedWithColor
	add r4, #0x8c
	add r0, r4, #0
	bl CopyWindowToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6BB0: .word 0x00010200
	thumb_func_end ov56_021E6AA4

