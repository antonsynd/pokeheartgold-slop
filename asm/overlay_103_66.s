	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE3E4
	.public ov103_021EE468

	.text

	thumb_func_start ov103_021EE468
ov103_021EE468: ; 0x021EE468
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r1, [sp, #0x18]
	ldr r1, [r5, #0xc]
	lsl r0, r3, #2
	add r6, r1, #0
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, #0x48
	lsl r7, r2, #4
	str r0, [sp, #0x20]
	bl Mail_GetAuthorNamePtr
	add r1, r0, #0
	mov r0, #0x23
	ldr r2, [r5, #0xc]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl CopyU16ArrayToString
	mov r4, #0
	str r4, [sp, #0x1c]
_021EE49A:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	mov r2, #0
	add r0, r6, r7
	add r1, #8
	add r3, r2, #0
	bl BlitBitmapRectToWindow
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	mov r2, #0
	add r0, r6, r7
	add r1, #0x28
	add r3, r2, #0
	bl BlitBitmapRectToWindow
	ldr r0, [sp, #0x1c]
	add r4, #8
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blo _021EE49A
	ldr r0, [sp, #0x20]
	bl Mail_GetAuthorGender
	cmp r0, #0
	bne _021EE514
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE548 ; =0x00030200
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x23
	ldr r3, [r5, #0xc]
	lsl r1, r1, #4
	ldr r1, [r3, r1]
	add r0, r6, r7
	add r3, r2, #0
	bl ov103_021EE3E4
	b _021EE530
_021EE514:
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE54C ; =0x00050400
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x23
	ldr r3, [r5, #0xc]
	lsl r1, r1, #4
	ldr r1, [r3, r1]
	add r0, r6, r7
	add r3, r2, #0
	bl ov103_021EE3E4
_021EE530:
	add r0, r6, r7
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #4]
	add r2, r6, r7
	bl sub_02019A60
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021EE548: .word 0x00030200
_021EE54C: .word 0x00050400
	thumb_func_end ov103_021EE468

