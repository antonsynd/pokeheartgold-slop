	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5FC0
	.extern ov113_021E6238
	.extern ov113_021E629C

	.text

	.text
	thumb_func_start ov113_021E5FC0
ov113_021E5FC0: ; 0x021E5FC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x13
	add r6, r0, #0
	lsl r1, r1, #4
	add r1, r6, r1
	mov r2, #6
	bl ov113_021E6238
	mov r1, #1
	lsl r1, r1, #8
	add r0, r6, #0
	add r1, r6, r1
	mov r2, #2
	bl ov113_021E6238
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021E5FE6:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xe
	blt _021E5FE6
	ldr r0, [r6, #0x44]
	ldr r2, [r6, #0x50]
	mov r1, #1
	bl ReadMsgDataIntoString
	add r0, r6, #0
	ldr r1, [r6, #0x50]
	add r0, #0x78
	mov r2, #0
	mov r3, #0x38
	bl ov113_021E629C
	mov r0, #0
	ldr r1, [r6, #0x5c]
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r2, #0xb0
	sub r2, r2, r3
	add r0, r6, #0
	lsl r2, r2, #0x10
	ldr r1, [r6, #0x5c]
	add r0, #0x78
	lsr r2, r2, #0x10
	mov r3, #0x48
	bl ov113_021E629C
	ldr r0, [r6, #0x44]
	ldr r2, [r6, #0x50]
	mov r1, #3
	bl ReadMsgDataIntoString
	add r0, r6, #0
	ldr r1, [r6, #0x50]
	add r0, #0x88
	mov r2, #4
	mov r3, #0x3c
	bl ov113_021E629C
	ldr r0, [r6, #0x44]
	ldr r2, [r6, #0x4c]
	mov r1, #4
	bl ReadMsgDataIntoString
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r2, [r6, #0x1f]
	ldr r0, [r6, #0x48]
	mov r1, #0
	mov r3, #2
	bl BufferIntegerAsString
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x50]
	ldr r2, [r6, #0x4c]
	bl StringExpandPlaceholders
	add r0, r6, #0
	ldr r1, [r6, #0x50]
	add r0, #0x88
	mov r2, #4
	mov r3, #0x4c
	bl ov113_021E629C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov113_021E5FC0

