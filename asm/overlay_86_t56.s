	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7B68
	.public ov86_021E7C70
	.public ov86_021E7CA0
	.extern ov86_021E6024
	.extern ov86_021E6064
	.extern ov86_021E668C
	.extern ov86_021E78B8

	.text

	.text
	thumb_func_start ov86_021E7B68
ov86_021E7B68: ; 0x021E7B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _021E7C5C ; =0x0000025E
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021E7B7C
	mov r0, #5
	str r0, [sp, #0x10]
	b _021E7B80
_021E7B7C:
	mov r0, #0xd
	str r0, [sp, #0x10]
_021E7B80:
	mov r0, #0x97
	lsl r0, r0, #2
	ldrsb r0, [r4, r0]
	add r7, r4, #0
	mov r6, #0
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	lsl r0, r0, #1
	str r0, [sp, #0x14]
	add r7, #0x10
_021E7B96:
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r0, r0, r6
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, r7, r0
	bl FillWindowPixelBuffer
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r6
	cmp r2, r0
	bls _021E7C06
	mov r2, #0x26
	lsl r2, r2, #4
	ldr r3, [r1, r2]
	ldr r1, [sp, #0x14]
	lsl r2, r6, #1
	add r1, r1, r3
	ldrh r1, [r2, r1]
	add r0, r4, #0
	bl ov86_021E668C
	ldr r0, [sp, #0x20]
	add r0, r7, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021E7C60 ; =0x000F0100
	lsl r5, r3, #3
	ldr r1, [sp, #0x10]
	lsr r3, r5, #0x1f
	str r0, [sp, #8]
	mov r0, #2
	add r3, r5, r3
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r1, r6
	mov r2, #0x13
	asr r3, r3, #1
	bl ov86_021E6064
	mov r0, #0
	str r0, [sp, #0x1c]
	b _021E7C0A
_021E7C06:
	mov r0, #1
	str r0, [sp, #0x1c]
_021E7C0A:
	ldr r0, [sp, #0x20]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r1, r6, #0
	bl ov86_021E78B8
	ldr r0, _021E7C64 ; =0x00000252
	mov r2, #0x25
	ldrb r0, [r4, r0]
	ldr r3, _021E7C68 ; =0x00000251
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, _021E7C6C ; =0x00000253
	mov r1, #2
	ldrb r0, [r4, r0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [r4, #0xc]
	bl BgTilemapRectChangePalette
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #8
	blo _021E7B96
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	ldr r1, _021E7C5C ; =0x0000025E
	mov r0, #1
	ldrh r2, [r4, r1]
	eor r0, r2
	strh r0, [r4, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7C5C: .word 0x0000025E
_021E7C60: .word 0x000F0100
_021E7C64: .word 0x00000252
_021E7C68: .word 0x00000251
_021E7C6C: .word 0x00000253
	thumb_func_end ov86_021E7B68

	thumb_func_start ov86_021E7C70
ov86_021E7C70: ; 0x021E7C70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #5
	add r5, #0x60
_021E7C7A:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	bls _021E7C7A
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov86_021E7C70

	thumb_func_start ov86_021E7CA0
ov86_021E7CA0: ; 0x021E7CA0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021E7CF4 ; =0x000F0100
	mov r2, #0x96
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldrh r2, [r4, r2]
	lsl r5, r3, #3
	lsr r3, r5, #0x1f
	add r3, r5, r3
	add r0, r4, #0
	mov r1, #0x15
	add r2, #0x38
	asr r3, r3, #1
	bl ov86_021E6024
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7CF4: .word 0x000F0100
	thumb_func_end ov86_021E7CA0

